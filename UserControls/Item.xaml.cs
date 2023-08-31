using System.Data.SQLite;
using System.Data;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Calender.Model;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Globalization;
using System.Windows.Media.Imaging;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Calender.Repository;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace Calender.UserControls
{
    public partial class Item : UserControl, INotifyPropertyChanged
    {
        public delegate void DeleteReminderEventHandler(int reminderID);
        public static event DeleteReminderEventHandler DeleteReminder;

        public delegate void EditReminderEventHandler(Reminder reminder);
        public static event EditReminderEventHandler EditReminder;

        public SolidColorBrush Color
        {
            get { return (SolidColorBrush)GetValue(ColorProperty); }
            set { SetValue(ColorProperty, value); }
        }

        public static readonly DependencyProperty ColorProperty = DependencyProperty.Register("Color", typeof(SolidColorBrush), typeof(Item));

        public FontAwesome.WPF.FontAwesomeIcon Icon
        {
            get { return (FontAwesome.WPF.FontAwesomeIcon)GetValue(IconProperty); }
            set { SetValue(IconProperty, value); }
        }

        public static readonly DependencyProperty IconProperty = DependencyProperty.Register("Icon", typeof(FontAwesome.WPF.FontAwesomeIcon), typeof(Item));

        public FontAwesome.WPF.FontAwesomeIcon IconBell
        {
            get { return (FontAwesome.WPF.FontAwesomeIcon)GetValue(IconBellProperty); }
            set { SetValue(IconBellProperty, value); }
        }

        public static readonly DependencyProperty IconBellProperty = DependencyProperty.Register("IconBell", typeof(FontAwesome.WPF.FontAwesomeIcon), typeof(Item));

        private CalendarRepository _calendarRepository = new CalendarRepository();
        private bool isEditing = false;

        // Propriedades para armazenar o estado de edição
        private string editedMessage;
        public string EditedMessage
        {
            get { return editedMessage; }
            set
            {
                if (editedMessage != value)
                {
                    editedMessage = value;
                    OnPropertyChanged(nameof(EditedMessage));
                }
            }
        }

        private string editedTime;
        public string EditedTime
        {
            get { return editedTime; }
            set
            {
                if (editedTime != value)
                {
                    editedTime = value;
                    OnPropertyChanged(nameof(EditedTime));
                }
            }
        }

        // Propriedades de dados do lembrete
        private int id;
        public int Id
        {
            get { return id; }
            set
            {
                if (id != value)
                {
                    id = value;
                    OnPropertyChanged(nameof(Id));
                }
            }
        }

        private string message;
        public string Message
        {
            get { return message; }
            set
            {
                if (message != value)
                {
                    message = value;
                    OnPropertyChanged(nameof(Message));
                }
            }
        }

        private string time;
        public string Time
        {
            get { return time; }
            set
            {
                if (time != value)
                {
                    time = value;
                    OnPropertyChanged(nameof(Time));
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        public Item()
        {
            InitializeComponent();
            DataContext = this;
        }      

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Reminder reminder;

            try
            {
                if (isEditing)
                {
                    textBlockMessage.Visibility = Visibility.Visible;
                    editMessageTextBox.Visibility = Visibility.Collapsed;
                    textBlockTime.Visibility = Visibility.Visible;
                    editTimeTextBox.Visibility = Visibility.Collapsed;

                    Message = editMessageTextBox.Text;
                    Time = editTimeTextBox.Text;

                    reminder = new Reminder();
                    reminder.Id = Id;
                    reminder.Message = Message;
                    reminder.Time = Time;
                                        
                    _calendarRepository.UpdateReminder(reminder);

                    EditReminder(reminder);

                    // Dispare um evento para notificar que as edições foram salvas
                    editButton.Content = "Editar";
                }
                else
                {
                    // Alternar para o modo de edição para modo salvar;
                    EditedMessage = Message;
                    EditedTime = Time;
                    textBlockMessage.Visibility = Visibility.Collapsed;
                    editMessageTextBox.Visibility = Visibility.Visible;
                    editMessageTextBox.Text = textBlockMessage.Text;
                    editMessageTextBox.Focus();
                    textBlockTime.Visibility = Visibility.Collapsed;
                    editTimeTextBox.Visibility = Visibility.Visible;
                    editTimeTextBox.Text = textBlockTime.Text;
                    editTimeTextBox.Focus();
                    editButton.Content = "Salvar";
                }

                isEditing = !isEditing;
            }
            catch (Exception exception)
            {
                MessageBox.Show("ERROR - " + exception.Message);
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            Reminder reminder;
            bool isDeleted;

            try
            {
                reminder = new Reminder();
                reminder.Id = Id;

                isDeleted = _calendarRepository.DeleteReminder(reminder.Id);

                if (isDeleted)
                {
                    DeleteReminder(reminder.Id);
                }
                else
                {
                    throw new Exception("Erro - Não foi possivel deletar o registro de ID : " + reminder.Id);
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
        }
    }
}
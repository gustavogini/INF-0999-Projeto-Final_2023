using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Data;
using System.Text;
using Calender.Model;
using System.Collections.ObjectModel;
using Calender.UserControls;
using Calender.DataBase;
using System.Data.Common;
using System.Windows;

namespace Calender.Repository
{
    internal class CalendarRepository
    {

        public ObservableCollection<Reminder> GetReminder()
        {
            ObservableCollection<Reminder> reminders;
            Reminder reminder;
            SQLiteConnection sqliteConnection;
            string commandQuery;

            try
            {
                sqliteConnection = CalendarDataBase.Create();

                SQLiteCommand command = new SQLiteCommand();

                commandQuery = "SELECT  Id, Message, Time , Date From Reminders WHERE 1=1";

                command.CommandText = commandQuery;
                command.CommandType = CommandType.Text;

                command = new SQLiteCommand(commandQuery, sqliteConnection);

                SQLiteDataReader _SqliteDataReader = command.ExecuteReader();

                reminders = new ObservableCollection<Reminder>();

                while (_SqliteDataReader.Read())
                {
                    reminder = new Reminder();
                    reminder.Id = Convert.ToInt32(_SqliteDataReader["Id"]);
                    reminder.Message = _SqliteDataReader["Message"].ToString();
                    reminder.Time = _SqliteDataReader["Time"].ToString();
                    reminder.Date = Convert.ToDateTime(_SqliteDataReader["Date"]);

                    reminders.Add(reminder);
                }

                sqliteConnection.Close();
                sqliteConnection.Dispose();
            }
            catch (Exception exception)
            {
                throw exception;
            }

            return reminders;
        }

        public int AddReminder(Reminder reminder)
        {
            SQLiteConnection sqliteConnection;
            SQLiteCommand command;
            string commandQuery;
            object returnComandQuery;
            int IDReminder;

            try
            {
                sqliteConnection = CalendarDataBase.Create();

                commandQuery = "Insert into Reminders (Message, Time , Date) values (@Message, @Time, @Date); SELECT LAST_INSERT_ROWID()";
                command = new SQLiteCommand(commandQuery, sqliteConnection);

                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Message", reminder.Message);
                command.Parameters.AddWithValue("@Time", reminder.Time);
                command.Parameters.AddWithValue("@Date", reminder.Date);

                returnComandQuery = command.ExecuteScalar();

                if (returnComandQuery == null)
                {
                    throw new Exception("ERROR - Não foi possivel inserir o registro!");
                }

                IDReminder = Convert.ToInt32(returnComandQuery);

                sqliteConnection.Close();            
            }
            catch (Exception exception)
            {
                throw exception;
            }

            return IDReminder;
        }

        public void UpdateReminder(Reminder remider)
        {
            SQLiteCommand command;            
            SQLiteConnection sqliteConnection;
            string commandQuery;

            try
            {                
                sqliteConnection = CalendarDataBase.Create();
                
                commandQuery = "Update Reminders set Message = @Message, Time = @Time where Id = @Id";

                command = new SQLiteCommand();
                command.CommandText = commandQuery;
                command.CommandType = CommandType.Text;

                command = new SQLiteCommand(commandQuery, sqliteConnection);
                command.Parameters.AddWithValue("@Id", remider.id);
                command.Parameters.AddWithValue("@Message", remider.Message);
                command.Parameters.AddWithValue("@Time", remider.Time);

                var Update = command.ExecuteScalar();

                sqliteConnection.Close();
                sqliteConnection.Dispose();
            }
            catch (Exception exception)
            {
                throw new Exception(exception.Message, exception);
            }
        }

        public bool DeleteReminder(int? id)
        {
            SQLiteCommand command;
            SQLiteConnection sqliteConnection;
            string commandQuery;            
            int rowsCommand;
            bool isDeleted = true;

            try
            {
                sqliteConnection = CalendarDataBase.Create();

                commandQuery = "Delete from Reminders where Id = @Id";

                command = new SQLiteCommand();
                command = new SQLiteCommand(commandQuery, sqliteConnection);
                command.CommandText = commandQuery;
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Id", id);

                rowsCommand = command.ExecuteNonQuery();

                sqliteConnection.Close();
                sqliteConnection.Dispose();

                if (rowsCommand == 0)
                {
                    throw new Exception("Erro - nenhum registro foi deletado para o id informado: " + id);
                }
                else
                {
                    isDeleted = true;
                }
            }
            catch (Exception exception)
            {
                throw exception;
            }

            return isDeleted;
        }
    }
}

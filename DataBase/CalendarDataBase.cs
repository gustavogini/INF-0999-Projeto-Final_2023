using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.IO;
using System.Runtime.CompilerServices;
using System.Text;

namespace Calender.DataBase
{
    public static class CalendarDataBase
    {
        static SQLiteConnection sqliteConnection;
        static string connectionString = "Data Source=c:\\dados\\RemindersDataBase.sqlite; Version=3;";              

        static CalendarDataBase()
        {
           CreateFileDataBase();
        }

        public static SQLiteConnection Create()
        {
            try
            {
                sqliteConnection = new SQLiteConnection(connectionString);
                sqliteConnection.Open();
            }
            catch (Exception exception)
            {
                throw exception;
            }

            return sqliteConnection;
        }

        private static void CreateFileDataBase()
        {
            bool fileVerify;
            bool directoryVerify;
            string directorySource = @"c:\dados";
            string fileSource = directorySource + @"\RemindersDataBase.sqlite";
            SQLiteCommand command;
            SQLiteConnection sqliteConnection;
            string commandQuery;

            try            
            {
                directoryVerify = Directory.Exists(directorySource);

                if (!directoryVerify)
                {
                    Directory.CreateDirectory(directorySource);
                }                

                fileVerify = File.Exists(fileSource);

                if (fileVerify == false) 
                {
                    SQLiteConnection.CreateFile(fileSource);
                    sqliteConnection = new SQLiteConnection(connectionString);
                    sqliteConnection.Open();

                    commandQuery = "Create Table Reminders (Id INTEGER PRIMARY KEY AUTOINCREMENT, Message VARCHAR(20), Time VARCHAR(20), Date DATETIME)";

                    command = new SQLiteCommand(commandQuery, sqliteConnection);
                    command.ExecuteNonQuery();
                    sqliteConnection.Close();
                }
            }
            catch (Exception exception)
            {
                throw exception;
            }                     
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;

namespace Calender.Model
{
    public class Reminder
    {
        public int id;
        public string message;
        public string time;
        public DateTime date;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Message
        {
            get { return message; }
            set { message = value; }
        }

        public string Time
        {
            get { return time; }
            set { time = value; }
        }

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }
    }
}

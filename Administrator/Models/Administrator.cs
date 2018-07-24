using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Administrator.Models
{
    public class Administrator
    {
        private String adminName;
        private int adminId;

        public string AdminName { get => adminName; set => adminName = value; }
        public int AdminId { get => adminId; set => adminId = value; }

        public void sendMessage(int userId,string Message)
        {

        }
        public void sendNotices(int userId, string Message)
        {
            
        }
    }
}
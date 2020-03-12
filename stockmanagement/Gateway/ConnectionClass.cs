using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace stockmanagement.Gateway
{
    public class ConnectionClass
    {
        private SqlConnection conn;

        public SqlConnection GetConnection() {
            conn = new SqlConnection(@"Data Source = NUMANIBNMAZID\SQLEXPRESS; Initial Catalog = stockmanagement; Integrated Security= SSPI");

            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
                conn.Open();
            }
            else
            {
                conn.Open();
            }
            return conn;
        }

        public void GetClose()
        {
            if(conn != null)
            {
                conn.Close();
            }
        }
    }
}
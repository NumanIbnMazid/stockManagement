using stockmanagement.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace stockmanagement.Gateway
{
    public class CompanyGateway
    {
        private SqlCommand cmd;
        private SqlDataReader reader;
        ConnectionClass oConnectionClass = new ConnectionClass();

        public int SaveNewCompany (Company company)
        {
            int rowCount = 0;

            string query = "INSERT INTO Company VALUES ('"+ company.CompanyName+"')";
            try
            {
                cmd = new SqlCommand(query, oConnectionClass.GetConnection());
                rowCount = cmd.ExecuteNonQuery();
            }
            catch(Exception exception)
            {

            }
            finally
            {
                oConnectionClass.GetClose();
            }
            return rowCount;
        }

        public bool IsExistCompanyName(string companyName)
        {
            string query = "SELECT * FROM Company WHERE companyName = '" + companyName + "'; ";
            cmd = new SqlCommand(query, oConnectionClass.GetConnection());
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                oConnectionClass.GetConnection();
                return true;
            }
            return false;
        }

        public List<Company> GetAllCompany()
        {
            string query = "SELECT * FROM Company";
            cmd = new SqlCommand(query, oConnectionClass.GetConnection());
            reader = cmd.ExecuteReader();
            List<Company> companyList = new List<Company>();
   
            while (reader.Read())
            {
                Company company = new Company();
                company.CompanyID = (int)reader["companyID"];
                company.CompanyName = reader["companyName"].ToString();

                companyList.Add(company);
            }
            return companyList;
        }
    }
}
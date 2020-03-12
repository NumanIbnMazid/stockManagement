using stockmanagement.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace stockmanagement.Gateway
{
    public class CategoryGateway
    {
        private SqlCommand cmd;
        private SqlDataReader reader;
        ConnectionClass oConnectionClass = new ConnectionClass();

        public int SaveNewCategory (Category category)
        {
            int rowCount = 0;

            string query = "INSERT INTO Category VALUES ('"+category.CategoryName+"')";
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

        public bool IsExistCategoryName(string categoryName)
        {
            string query = "SELECT * FROM Category WHERE categoryName = '"+ categoryName + "'; ";
            cmd = new SqlCommand(query, oConnectionClass.GetConnection());
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                oConnectionClass.GetConnection();
                return true;
            }
            return false;
        }

        public List<Category> GetAllCategory()
        {
            string query = "SELECT * FROM Category";
            cmd = new SqlCommand(query, oConnectionClass.GetConnection());
            reader = cmd.ExecuteReader();
            List<Category> categoryList = new List<Category>();
   
            while (reader.Read())
            {
                Category category = new Category();
                category.CategoryID = (int)reader["categoryID"];
                category.CategoryName = reader["categoryName"].ToString();

                categoryList.Add(category);
            }
            return categoryList;
        }
         
        
    }
}
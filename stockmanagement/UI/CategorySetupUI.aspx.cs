using stockmanagement.Manager;
using stockmanagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace stockmanagement
{
    public partial class CategorySetupUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CategoryManager aCategoryManager = new CategoryManager();
                categoryGridView.DataSource = aCategoryManager.GetAllCategory();
                categoryGridView.DataBind();
            }
        }
        protected void categorysaveButton_Click(object sender, EventArgs e)
        {
            Category category = new Category();
            category.CategoryName = categoryTextBox.Text;

            CategoryManager aCategoryManager = new CategoryManager();
            string msg = aCategoryManager.SaveNewCategory(category);
            resultLabel.Text = msg;
            categoryTextBox.Text = "";
            categoryGridView.DataSource = aCategoryManager.GetAllCategory();
            categoryGridView.DataBind();
        }
    }
}
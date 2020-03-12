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
    public partial class CompanySetupUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CompanyManager aCompanyManager = new CompanyManager();
                companyGridView.DataSource = aCompanyManager.GetAllCompany();
                companyGridView.DataBind();
            }

        }

        protected void companysaveButton_Click(object sender, EventArgs e)
        {
            Company company = new Company();
            company.CompanyName = companyTextBox.Text;

            CompanyManager aCompanyManager = new CompanyManager();
            string msg = aCompanyManager.SaveNewCompany(company);
            resultLabel.Text = msg;
            companyTextBox.Text = "";
            companyGridView.DataSource = aCompanyManager.GetAllCompany();
            companyGridView.DataBind();
        }
    }
}
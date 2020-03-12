using stockmanagement.Gateway;
using stockmanagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace stockmanagement.Manager
{
    public class CompanyManager
    {
        CompanyGateway aCompanyGateway = new CompanyGateway();

        public string SaveNewCompany(Company company)
        {
            if (aCompanyGateway.IsExistCompanyName(company.CompanyName))
            {
                return "This Company is already Exist ! Please try with another one.";
            }

            int rowCount = aCompanyGateway.SaveNewCompany(company);
            if (rowCount > 0)
            {
                return "New Company has been saved Successfully !";
            }
            return "Something Went Wrong !";
        }

        public List<Company> GetAllCompany()
        {
            return aCompanyGateway.GetAllCompany();
        }
    }
}
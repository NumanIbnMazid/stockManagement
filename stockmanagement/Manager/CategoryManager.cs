using stockmanagement.Gateway;
using stockmanagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace stockmanagement.Manager
{
    public class CategoryManager
    {
        CategoryGateway aCategoryGateway = new CategoryGateway();

        public string SaveNewCategory(Category category)
        {
            if (aCategoryGateway.IsExistCategoryName(category.CategoryName))
            {
                return "This Category is already Exist ! Please try with another one.";
            }

            int rowCount = aCategoryGateway.SaveNewCategory(category);
            if (rowCount > 0)
            {
                return "New Category has been saved Successfully !";
            }
            return "Something Went Wrong !";
        }

        public List<Category> GetAllCategory()
        {
            return aCategoryGateway.GetAllCategory();
        }
    }
}
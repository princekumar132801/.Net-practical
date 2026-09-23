using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using practical_6.Models;

namespace practical_6.Controllers
{
    public class ProductController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {
            List<Product> products = new List<Product>
            {
                new Product
                {
                    ProductId = 1,
                    ProductName = "Laptop",
                    Price = 55000,
                    Quantity = 10
                },

                new Product
                {
                    ProductId = 2,
                    ProductName = "Smartphone",
                    Price = 25000,
                    Quantity = 20
                },

                new Product
                {
                    ProductId = 3,
                    ProductName = "Headphones",
                    Price = 2000,
                    Quantity = 50
                }
            };
            return View(products);
        }
    }
}
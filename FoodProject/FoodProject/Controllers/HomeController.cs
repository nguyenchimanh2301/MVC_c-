using FoodProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FoodProject.Controllers
{
    public class HomeController : Controller
    {
        DOAN3Entities1 db = new DOAN3Entities1();
        // GET: Home
        public ActionResult Index()
        {
            return View();


        }
        public ActionResult News()
        {
            return View();
        }
        [HttpGet]
        public JsonResult GetNews()
        {
            var list = db.News.Select(sp => new
            {
                Mabaiviet = sp.Mabaiviet,
                Tieude = sp.Tieude,
                Noidung = sp.Noidung,
                Anh = sp.Anh,
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
       
    }
}
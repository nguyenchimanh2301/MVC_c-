using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodProject.Models;

namespace FoodProject.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        DOAN3Entities1 db = new DOAN3Entities1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Getcard()
        {
            return View();
        }
        public ActionResult Invoice()
        {
            return View();
        }
        [HttpGet]
        public JsonResult Getbill()
        {
            var list = db.Hoadons.Select(sp => new
            {
                Mahoadon = sp.Mahoadon,
                Khachhang_name = sp.Khachhang_name,
                diachi = sp.diachi,
                email = sp.email,
                phone = sp.tongtien,

            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult AddSP(Hoadon lsp)
        {
            int data = 0;
            try
            {
             
                db.Hoadons.Add(lsp);
                db.SaveChanges();
                data = 1;
            }
            catch (Exception e)
            {
                data = 0;
            }
            return Json(new { data = data }, JsonRequestBehavior.AllowGet); ;
        }
    }
}
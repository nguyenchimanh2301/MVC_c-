using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodProject.Models;
namespace FoodProject.Areas.Admin.Controllers
{
    public class HoadonController : Controller
    {
        // GET: Admin/Hoadon
        DOAN3Entities1 db = new DOAN3Entities1();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Bill()
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
                listsanpham = sp.listsanpham,
                tongtien = sp.tongtien,
                email = sp.email,
                phone = sp.phone,

            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);

        }
        
        [HttpGet]
        public ActionResult GetbillID(string id)
        {
            return Json(new { data = db.Hoadons.Select(x => new { x.Mahoadon, x.Khachhang_name, x.diachi, x.phone, x.email,x.tongtien,x.listsanpham}).FirstOrDefault(y => y.Mahoadon == id) }, JsonRequestBehavior.AllowGet);
        }
       
        [HttpPost]
        public ActionResult UpdateLSP(Hoadon lsp)
        {
            int res = 0;
            try
            {
                db.Hoadons.Attach(lsp);
                db.Entry(lsp).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                res = 1;
            }
            catch (Exception e)
            {

                res = 0; ;
            }
            return Json(new { kq = "200", res = res }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult SaveLSP(Hoadon lsp)
        {
            int res = 0;
            try
            {
                db.Hoadons.Add(lsp);
                db.SaveChanges();
                res = 1;
            }
            catch (Exception e)
            {

                res = 0;
            }
            return Json(new { kq = "200", res = res }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteLSP(Hoadon id)
        {
            var ls = db.Hoadons.FirstOrDefault(x => x.Mahoadon == id.Mahoadon);
            db.Hoadons.Remove(ls);
            db.SaveChanges();
            return Json(new { data = "Ok", }, JsonRequestBehavior.AllowGet);
        }

    }
}
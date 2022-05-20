using FoodProject.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FoodProject.Areas.Admin.Controllers
{
    public class NEWSController : Controller
    {
        // GET: Admin/NEWS
        DOAN3Entities1 db = new DOAN3Entities1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult News()
        {
            return View();
        }
        [HttpGet]
        public JsonResult GetSP()
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
        [HttpGet]
        

        public ActionResult GetSPID(string id)
        {
            return Json(new { data = db.News.Select(x => new { x.Mabaiviet, x.Tieude, x.Noidung }).FirstOrDefault(y => y.Mabaiviet == id) }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdateSP(News lsp)
        {
            int res = 0;
            try
            {
                db.News.Attach(lsp);
                db.Entry(lsp).State = EntityState.Modified;
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
        public ActionResult Add(News sp)
        {
            int data = 0;
            try
            {
                db.News.Add(sp);
                db.SaveChanges();
                data = 1;
            }
            catch (Exception e)
            {

                data = 0;
            }
            return Json(new { data = data }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteSP(News sp)
        {
            var ls = db.News.FirstOrDefault(x => x.Mabaiviet == sp.Mabaiviet);
            db.News.Remove(ls);
            db.SaveChanges();
            return Json(new { data = "Ok", }, JsonRequestBehavior.AllowGet);
        }



        public JsonResult Upload()
        {
            try
            {
                HttpPostedFileBase file = Request.Files[0];
                if (file != null)
                {
                    string path = Server.MapPath("~") + "asset\\images\\News\\";
                    string fileName = file.FileName;
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }
                    string fullPath = path + "\\" + fileName;
                    file.SaveAs(fullPath);
                    return Json("asset/images/News/" + fileName, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(null, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult Update(News sp)
        {
            try
            {
                var obj = db.News.SingleOrDefault(x => x.Mabaiviet == sp.Mabaiviet);
                obj.Mabaiviet = sp.Mabaiviet;
                obj.Tieude = sp.Tieude;
                obj.Noidung = sp.Noidung;
                obj.Anh = sp.Anh;
                db.SaveChanges();
                return Json(1, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

    }
}
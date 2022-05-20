﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodProject.Models;

namespace FoodProject.Areas.Admin.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: Admin/SanPham
        DOAN3Entities1 db = new DOAN3Entities1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SanPham()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetSP()
        {
            var list = db.SanPhams.Select(sp => new
            {
                Loaisp_id = sp.Loaisp_id,
                sanpham_id = sp.sanpham_id,
                sanpham_name = sp.sanpham_name,
                gia = sp.gia,
                Nhacungcap_id = sp.Nhacungcap_id,
                Soluong = sp.Soluong,
                picture = sp.picture
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult GetLSP()
        {
            var list = db.LoaiSps.Select(sp => new
            {
                Loaisp_id = sp.Loaisp_id,

                Loaisp_name = sp.Loaisp_name,
             
            }).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public ActionResult GetSPID(string id)
        {
            return Json(new { data = db.SanPhams.Select(x => new { x.Loaisp_id, x.sanpham_id, x.sanpham_name, x.Soluong, x.gia, x.Nhacungcap_id, x.picture }).FirstOrDefault(y => y.sanpham_id == id) }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdateSP(SanPham lsp)
        {
            int res = 0;
            try
            {
                db.SanPhams.Attach(lsp);
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
        public ActionResult AddSanPham(SanPham sp)
        {
            int data = 0;
            try
            {
                db.SanPhams.Add(sp);
                db.SaveChanges();
                data = 1;
            }
            catch (Exception e)
            {

                data = 0;
            }
            return Json(new { data = data }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteSP(SanPham sp)
        {
            var ls = db.SanPhams.FirstOrDefault(x => x.sanpham_id == sp.sanpham_id);
            db.SanPhams.Remove(ls);
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
                    string path = Server.MapPath("~") + "asset\\images\\productfood\\";
                    string fileName = file.FileName;
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }
                    string fullPath = path + "\\" + fileName;
                    file.SaveAs(fullPath);
                    return Json("asset/images/productfood/" + fileName, JsonRequestBehavior.AllowGet);
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
        public JsonResult UpdateSanPham(SanPham sp)
        {
            try
            {
                var obj = db.SanPhams.SingleOrDefault(x => x.sanpham_id == sp.sanpham_id);
                obj.Loaisp_id = sp.Loaisp_id;
                obj.sanpham_id = sp.sanpham_id;
                obj.sanpham_name = sp.sanpham_name;
                obj.gia = sp.gia;
                obj.Nhacungcap_id = sp.Nhacungcap_id;
                obj.Soluong = sp.Soluong;
                obj.picture = sp.picture;
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

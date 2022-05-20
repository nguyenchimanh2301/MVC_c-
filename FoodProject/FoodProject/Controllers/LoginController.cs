using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodProject.Models;
namespace FoodProject.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        DOAN3Entities1 db = new DOAN3Entities1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetLogin(string id)
        {
         /*FirstOrDefault(x=>x.Users_id==id && x.Passwords==pass)*/;
            return Json(new {data = db.Usersses.Select(x => new {
                Users_id = x.Users_id,
                Passwords = x.Passwords,
            }).FirstOrDefault(x=>x.Users_id==id)
            }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult DangNhap(string user,string pass)
        {
            try
            {
                var login = db.Usersses.SingleOrDefault(ac => ac.Users_id == user && ac.Passwords == pass);
                if (login != null)
                {
                    Session["user"] = user;
                }
                return Json(new {login, ok = 1}, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(new { ok = 0}, JsonRequestBehavior.AllowGet);
            }
           

           
        }
    }
}

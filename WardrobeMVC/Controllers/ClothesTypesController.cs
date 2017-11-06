using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeMVC.Models;

namespace WardrobeMVC.Controllers
{
    public class ClothesTypesController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: ClothesTypes
        public ActionResult Index()
        {
            return View(db.ClothesTypes.ToList());
        }

        // GET: ClothesTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClothesType clothesType = db.ClothesTypes.Find(id);
            if (clothesType == null)
            {
                return HttpNotFound();
            }
            return View(clothesType);
        }

        // GET: ClothesTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ClothesTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TypeID,TypeName")] ClothesType clothesType)
        {
            if (ModelState.IsValid)
            {
                db.ClothesTypes.Add(clothesType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(clothesType);
        }

        // GET: ClothesTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClothesType clothesType = db.ClothesTypes.Find(id);
            if (clothesType == null)
            {
                return HttpNotFound();
            }
            return View(clothesType);
        }

        // POST: ClothesTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TypeID,TypeName")] ClothesType clothesType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(clothesType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(clothesType);
        }

        // GET: ClothesTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClothesType clothesType = db.ClothesTypes.Find(id);
            if (clothesType == null)
            {
                return HttpNotFound();
            }
            return View(clothesType);
        }

        // POST: ClothesTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ClothesType clothesType = db.ClothesTypes.Find(id);
            db.ClothesTypes.Remove(clothesType);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

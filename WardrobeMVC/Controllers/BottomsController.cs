﻿using System;
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
    public class BottomsController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: Bottoms
        public ActionResult Index()
        {
            var bottoms = db.Bottoms.Include(b => b.ClothesType).Include(b => b.Color).Include(b => b.Occasion).Include(b => b.Season);
            return View(bottoms.ToList());
        }

        // GET: Bottoms/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bottom bottom = db.Bottoms.Find(id);
            if (bottom == null)
            {
                return HttpNotFound();
            }
            return View(bottom);
        }

        // GET: Bottoms/Create
        public ActionResult Create()
        {
            ViewBag.TypeID = new SelectList(db.ClothesTypes, "TypeID", "TypeName");
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName");
            return View();
        }

        // POST: Bottoms/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BottomID,BottomName,ColorID,SeasonID,OccasionID,TypeID,BottomPhoto,BottomNotes")] Bottom bottom)
        {
            if (ModelState.IsValid)
            {
                db.Bottoms.Add(bottom);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.TypeID = new SelectList(db.ClothesTypes, "TypeID", "TypeName", bottom.TypeID);
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", bottom.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName", bottom.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", bottom.SeasonID);
            return View(bottom);
        }

        // GET: Bottoms/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bottom bottom = db.Bottoms.Find(id);
            if (bottom == null)
            {
                return HttpNotFound();
            }
            ViewBag.TypeID = new SelectList(db.ClothesTypes, "TypeID", "TypeName", bottom.TypeID);
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", bottom.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName", bottom.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", bottom.SeasonID);
            return View(bottom);
        }

        // POST: Bottoms/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BottomID,BottomName,ColorID,SeasonID,OccasionID,TypeID,BottomPhoto,BottomNotes")] Bottom bottom)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bottom).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TypeID = new SelectList(db.ClothesTypes, "TypeID", "TypeName", bottom.TypeID);
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", bottom.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName", bottom.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", bottom.SeasonID);
            return View(bottom);
        }

        // GET: Bottoms/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bottom bottom = db.Bottoms.Find(id);
            if (bottom == null)
            {
                return HttpNotFound();
            }
            return View(bottom);
        }

        // POST: Bottoms/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Bottom bottom = db.Bottoms.Find(id);
            db.Bottoms.Remove(bottom);
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

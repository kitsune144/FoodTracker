using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Food_Tracker__prototype_.Models;

namespace Food_Tracker__prototype_.Controllers
{
    public class RestaurantsProtoController : Controller
    {
        private FoodTrackerDBEntities db = new FoodTrackerDBEntities();

        // GET: RestaurantsProto
        public ActionResult Index()
        {
            return View(db.Restaurant.ToList());
        }

        // GET: RestaurantsProto/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Restaurant restaurant = db.Restaurant.Find(id);
            if (restaurant == null)
            {
                return HttpNotFound();
            }
            return View(restaurant);
        }

        // GET: RestaurantsProto/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: RestaurantsProto/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idRestaurante,Nombre,Direccion,Tipo_comida,Tipo_ambiente,Tipo_restaurante,Rango_precio,Ciudad,Telefono,Precio_minimo,Precio_maximo,Valoracion")] Restaurant restaurant)
        {
            if (ModelState.IsValid)
            {
                db.Restaurant.Add(restaurant);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(restaurant);
        }

        // GET: RestaurantsProto/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Restaurant restaurant = db.Restaurant.Find(id);
            if (restaurant == null)
            {
                return HttpNotFound();
            }
            return View(restaurant);
        }

        // POST: RestaurantsProto/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idRestaurante,Nombre,Direccion,Tipo_comida,Tipo_ambiente,Tipo_restaurante,Rango_precio,Ciudad,Telefono,Precio_minimo,Precio_maximo,Valoracion")] Restaurant restaurant)
        {
            if (ModelState.IsValid)
            {
                db.Entry(restaurant).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(restaurant);
        }

        // GET: RestaurantsProto/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Restaurant restaurant = db.Restaurant.Find(id);
            if (restaurant == null)
            {
                return HttpNotFound();
            }
            return View(restaurant);
        }

        // POST: RestaurantsProto/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Restaurant restaurant = db.Restaurant.Find(id);
            db.Restaurant.Remove(restaurant);
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

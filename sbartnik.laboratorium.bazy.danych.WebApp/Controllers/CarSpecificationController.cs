using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using sbartnik.laboratorium.bazy.danych.Database;
using sbartnik.laboratorium.bazy.danych.Database.Entities;

namespace sbartnik.laboratorium.bazy.danych.WebApp.Controllers
{
    public class CarSpecificationController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CarSpecificationController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: CarSpecification
        public async Task<IActionResult> Index()
        {
            return View(await _context.CarSpecification.ToListAsync());
        }

        // GET: CarSpecification/Details/5
        public async Task<IActionResult> Details(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var carSpecification = await _context.CarSpecification
                .FirstOrDefaultAsync(m => m.Id == id);
            if (carSpecification == null)
            {
                return NotFound();
            }

            return View(carSpecification);
        }

        // GET: CarSpecification/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: CarSpecification/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("CarModelId,NumberOfDoors,TrunkCapacity,Towbar,Weight,Height,Width,Id")] CarSpecification carSpecification)
        {
            if (ModelState.IsValid)
            {
                carSpecification.Id = Guid.NewGuid();
                _context.Add(carSpecification);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(carSpecification);
        }

        // GET: CarSpecification/Edit/5
        public async Task<IActionResult> Edit(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var carSpecification = await _context.CarSpecification.FindAsync(id);
            if (carSpecification == null)
            {
                return NotFound();
            }
            return View(carSpecification);
        }

        // POST: CarSpecification/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, [Bind("CarModelId,NumberOfDoors,TrunkCapacity,Towbar,Weight,Height,Width,Id")] CarSpecification carSpecification)
        {
            if (id != carSpecification.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(carSpecification);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CarSpecificationExists(carSpecification.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(carSpecification);
        }

        // GET: CarSpecification/Delete/5
        public async Task<IActionResult> Delete(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var carSpecification = await _context.CarSpecification
                .FirstOrDefaultAsync(m => m.Id == id);
            if (carSpecification == null)
            {
                return NotFound();
            }

            return View(carSpecification);
        }

        // POST: CarSpecification/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            var carSpecification = await _context.CarSpecification.FindAsync(id);
            _context.CarSpecification.Remove(carSpecification);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CarSpecificationExists(Guid id)
        {
            return _context.CarSpecification.Any(e => e.Id == id);
        }
    }
}

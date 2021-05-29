using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using sbartnik.laboratorium.bazy.danych.Database.Entities;
using sbartnik.laboratorium.bazy.danych.WebApp.Database;

namespace sbartnik.laboratorium.bazy.danych.WebApp.Controllers
{
    public class CarModelController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CarModelController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: CarModel
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.CarModels.Include(c => c.Brand).Include(c => c.CarSpecification);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: CarModel/Details/5
        public async Task<IActionResult> Details(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var carModel = await _context.CarModels
                .Include(c => c.Brand)
                .Include(c => c.CarSpecification)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (carModel == null)
            {
                return NotFound();
            }

            return View(carModel);
        }

        // GET: CarModel/Create
        public IActionResult Create()
        {
            ViewData["BrandId"] = new SelectList(_context.Brands, "Id", "Name");
            ViewData["CarSpecificationId"] = new SelectList(_context.Set<CarSpecification>(), "Id", "Id");
            return View();
        }

        // POST: CarModel/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Name,CarSpecificationId,BrandId,ManufacturedFrom,ManufacturedTo,Id")] CarModel carModel)
        {
            if (ModelState.IsValid)
            {
                carModel.Id = Guid.NewGuid();
                _context.Add(carModel);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["BrandId"] = new SelectList(_context.Brands, "Id", "Name", carModel.BrandId);
            ViewData["CarSpecificationId"] = new SelectList(_context.Set<CarSpecification>(), "Id", "Id", carModel.CarSpecificationId);
            return View(carModel);
        }

        // GET: CarModel/Edit/5
        public async Task<IActionResult> Edit(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var carModel = await _context.CarModels.FindAsync(id);
            if (carModel == null)
            {
                return NotFound();
            }
            ViewData["BrandId"] = new SelectList(_context.Brands, "Id", "Name", carModel.BrandId);
            ViewData["CarSpecificationId"] = new SelectList(_context.Set<CarSpecification>(), "Id", "Id", carModel.CarSpecificationId);
            return View(carModel);
        }

        // POST: CarModel/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, [Bind("Name,CarSpecificationId,BrandId,ManufacturedFrom,ManufacturedTo,Id")] CarModel carModel)
        {
            if (id != carModel.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(carModel);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CarModelExists(carModel.Id))
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
            ViewData["BrandId"] = new SelectList(_context.Brands, "Id", "Name", carModel.BrandId);
            ViewData["CarSpecificationId"] = new SelectList(_context.Set<CarSpecification>(), "Id", "Id", carModel.CarSpecificationId);
            return View(carModel);
        }

        // GET: CarModel/Delete/5
        public async Task<IActionResult> Delete(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var carModel = await _context.CarModels
                .Include(c => c.Brand)
                .Include(c => c.CarSpecification)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (carModel == null)
            {
                return NotFound();
            }

            return View(carModel);
        }

        // POST: CarModel/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            var carModel = await _context.CarModels.FindAsync(id);
            _context.CarModels.Remove(carModel);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CarModelExists(Guid id)
        {
            return _context.CarModels.Any(e => e.Id == id);
        }
    }
}

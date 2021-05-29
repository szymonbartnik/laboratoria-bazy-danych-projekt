using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using sbartnik.laboratorium.bazy.danych.Database.Entities;
using sbartnik.laboratorium.bazy.danych.WebApp.Database;

namespace sbartnik.laboratorium.bazy.danych.WebApp.Controllers
{
    public class EngineController : Controller
    {
        private readonly ApplicationDbContext _context;

        public EngineController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Engine
        public async Task<IActionResult> Index()
        {
            return View(await _context.Engine.ToListAsync());
        }

        // GET: Engine/Details/5
        public async Task<IActionResult> Details(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var engine = await _context.Engine
                .FirstOrDefaultAsync(m => m.Id == id);
            if (engine == null)
            {
                return NotFound();
            }

            return View(engine);
        }

        // GET: Engine/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Engine/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Name,EngineCapacity,Power,Torque,NumberOfCylinders,Id")] Engine engine)
        {
            if (ModelState.IsValid)
            {
                engine.Id = Guid.NewGuid();
                _context.Add(engine);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(engine);
        }

        // GET: Engine/Edit/5
        public async Task<IActionResult> Edit(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var engine = await _context.Engine.FindAsync(id);
            if (engine == null)
            {
                return NotFound();
            }
            return View(engine);
        }

        // POST: Engine/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, [Bind("Name,EngineCapacity,Power,Torque,NumberOfCylinders,Id")] Engine engine)
        {
            if (id != engine.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(engine);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EngineExists(engine.Id))
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
            return View(engine);
        }

        // GET: Engine/Delete/5
        public async Task<IActionResult> Delete(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var engine = await _context.Engine
                .FirstOrDefaultAsync(m => m.Id == id);
            if (engine == null)
            {
                return NotFound();
            }

            return View(engine);
        }

        // POST: Engine/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            var engine = await _context.Engine.FindAsync(id);
            _context.Engine.Remove(engine);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EngineExists(Guid id)
        {
            return _context.Engine.Any(e => e.Id == id);
        }
    }
}

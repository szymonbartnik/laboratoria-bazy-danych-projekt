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
    public class ContactInformationController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ContactInformationController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: ContactInformation
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.ContactInformation.Include(c => c.Client);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: ContactInformation/Details/5
        public async Task<IActionResult> Details(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contactInformation = await _context.ContactInformation
                .Include(c => c.Client)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (contactInformation == null)
            {
                return NotFound();
            }

            return View(contactInformation);
        }

        // GET: ContactInformation/Create
        public IActionResult Create()
        {
            ViewData["ClientId"] = new SelectList(_context.Client, "Id", "Surname");
            return View();
        }

        // POST: ContactInformation/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ClientId,MobileNumber,Email,Id")] ContactInformation contactInformation)
        {
            if (ModelState.IsValid)
            {
                contactInformation.Id = Guid.NewGuid();
                _context.Add(contactInformation);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ClientId"] = new SelectList(_context.Client, "Id", "Surname", contactInformation.ClientId);
            return View(contactInformation);
        }

        // GET: ContactInformation/Edit/5
        public async Task<IActionResult> Edit(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contactInformation = await _context.ContactInformation.FindAsync(id);
            if (contactInformation == null)
            {
                return NotFound();
            }
            ViewData["ClientId"] = new SelectList(_context.Client, "Id", "Surname", contactInformation.ClientId);
            return View(contactInformation);
        }

        // POST: ContactInformation/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, [Bind("ClientId,MobileNumber,Email,Id")] ContactInformation contactInformation)
        {
            if (id != contactInformation.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(contactInformation);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ContactInformationExists(contactInformation.Id))
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
            ViewData["ClientId"] = new SelectList(_context.Client, "Id", "Surname", contactInformation.ClientId);
            return View(contactInformation);
        }

        // GET: ContactInformation/Delete/5
        public async Task<IActionResult> Delete(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contactInformation = await _context.ContactInformation
                .Include(c => c.Client)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (contactInformation == null)
            {
                return NotFound();
            }

            return View(contactInformation);
        }

        // POST: ContactInformation/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            var contactInformation = await _context.ContactInformation.FindAsync(id);
            _context.ContactInformation.Remove(contactInformation);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ContactInformationExists(Guid id)
        {
            return _context.ContactInformation.Any(e => e.Id == id);
        }
    }
}

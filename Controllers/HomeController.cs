using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP6_Elecciones.Models;

namespace TP6_Elecciones.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        ViewBag.ListaPartidos = BD.ListarPartidos();
        return View();
    }

public IActionResult VerDetallePartido(int IDPartido) {
    ViewBag.InfoPartido = BD.VerInfoPartido(IDPartido);
    ViewBag.ListaCandidatos= BD.ListarCandidatos(IDPartido);
    return View();
}
public IActionResult VerDetalleCandidato(int IDCandidato) {
    ViewBag.InfoCandidato = BD.VerInfoCandidato(IDCandidato);
    return View();
}

public IActionResult AgregarCandidato(int IDPartido) {
    ViewBag.IDPartido = IDPartido;
    return View();
}
[HttpPost] public IActionResult GuardarCandidato(int IDCandidato, int IDPartido, string Apellido, string Nombre, DateTime FechaNacimiento, string Foto, string Postulacion) {
    Candidato can = new Candidato(IDCandidato, IDPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion);
    BD.AgregarCandidato(can);
    return RedirectToAction("VerDetallePartido", new {IDPartido = can.IDPartido});
}
public IActionResult EliminarCandidato(int IDCandidato, int IDPartido) {
    BD.EliminarCandidato(IDCandidato); 
    return RedirectToAction("VerDetallePartido", new {IDPartido = IDPartido});
}
/*
IActionResult Elecciones(): Debe ir a una view en la que se cuente que es lo que se vota este año.
*/
public IActionResult Elecciones() {
    return View();
}

public IActionResult Creditos() {
    return View();
}
    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}

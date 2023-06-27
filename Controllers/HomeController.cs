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
    ViewBag.ListaCandidatos= BD.ListarCandidatos();
    return view();
}
public IActionResult VerDetalleCandidato(int IDCandidato) {
    ViewBag.InfoCandidato = BD.VerInfoCandidato(IDCandidato);
    return view();
}
/*
IActionResult AgregarCandidato(int idPartido): Debe devolver una View con el formulario de Candidatos para cargar. Cargar en un ViewBag el IdPartido.
*/
public IActionResult AgregarCandidato(int IDPartido) {
    return view();
}
[HttpPost] public IActionResult GuardarCandidato(Candidato can) {
    BD.AgregarCandidato(can);
    return redirectToAction("VerDetallePartido", new {IDPartido = can.IDPartido});
}
public IActionResult EliminarCandidato(int IDCandidato, int IDPartido) {
    BD.EliminarCandidato(idCandidato); 
    return redirectToAction("VerDetallePartido", IDPartido);
}
/*
IActionResult Elecciones(): Debe ir a una view en la que se cuente que es lo que se vota este año.
*/
public IActionResult Elecciones() {
    return view();
}
/*
IActionResult Creditos(): Debe ir a una view que muestra a los integrantes del trabajo práctico.
    */

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

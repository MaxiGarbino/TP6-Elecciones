public class Partido{
    public int IdPartido;
    public string Nombre;
    public string Logo;
    public string SitioWeb;
    public DateTime FechaFundacion;
    public int CantidadDiputados;
    public int CantidadSenadores;
    public Partido(int IdPartido = 0, string Nombre = "...", string Logo = "...", string SitioWeb = "...", DateTime FechaFundacion, int CantidadDiputados = 0, int CantidadSenadores = 0){
        this.IdPartido = IdPartido;
        this.Nombre = Nombre;
        this.Logo = Logo;
        this.SitioWeb = SitioWeb;
        this.FechaFundacion = FechaFundacion;
        this.CantidadDiputados = CantidadDiputados;
        this.CantidadSenadores = CantidadSenadores;
    }
}
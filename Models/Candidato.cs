class Candidato{
    public int IdCandidato;
    public int IdPartido;
    public string Apellido;
    public string Nombre;
    public date FechaNacimiento;
    public string Foto;
    public string Postulacion;
    public Partido(int IdCandidato = 0, int IdPartido = 0, string Apellido = "...", string Nombre = "...", date FechaNacimiento, string Foto = "...", string Postulacion = "..."){
        this.IdCandidato = IdCandidato;
        this.IdPartido = IdPartido;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.FechaNacimiento = FechaNacimiento;
        this.Foto = Foto;
        this.Postulacion = Postulacion;
    }
}
class Candidato{
    public int IDCandidato;
    public int IDPartido;
    public string Apellido;
    public string Nombre;
    public date FechaNacimiento;
    public string Foto;
    public string Postulacion;
    public Partido(int IDCandidato = 0, int IDPartido = 0, string Apellido = "...", string Nombre = "...", date FechaNacimiento, string Foto = "...", string Postulacion = "..."){
        this.IDCandidato = IDCandidato;
        this.IDPartido = IDPartido;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.FechaNacimiento = FechaNacimiento;
        this.Foto = Foto;
        this.Postulacion = Postulacion;
    }
}
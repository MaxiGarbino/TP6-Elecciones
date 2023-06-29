public class Candidato{
    public int IDCandidato {get;set;}
    public int IDPartido {get;set;}
    public string Apellido {get;set;}
    public string Nombre {get;set;}
    public DateTime FechaNacimiento {get;set;}
    public string Foto {get;set;}
    public string Postulacion {get;set;}
    public Candidato(){

    }
    public Candidato(int IDCandidato = 0, int IDPartido = 0, string Apellido = "...", string Nombre = "...", DateTime FechaNacimiento = new DateTime(), string Foto = "...", string Postulacion="..."){
        this.IDCandidato = IDCandidato;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.FechaNacimiento = FechaNacimiento;
        this.Foto = Foto;
        this.Postulacion = Postulacion;
    }
}

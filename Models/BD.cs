using System.Data.SqlClient;
using Dapper;

namespace TP6_Elecciones.Models;

public static class BD
{
    private static string _connectionString = @"Server=localhost; DataBase=TP6_Elecciones;Trusted_Connection=True;";
    public static int AgregarCandidato(Candidato can){
        int r;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "INSERT INTO Candidato(IDPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@pIDPartido, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pPostulacion);";
            r = db.Execute(sql, new {pIDPartido = can.IDPartido, pApellido = can.Apellido, pNombre = can.Nombre, pFechaNacimiento = can.FechaNacimiento, pFoto = can.Foto, pPostulacion = can.Postulacion});
        }
        return r;
    }
    public static int EliminarCandidato(int IDCandidato){
        int r;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "DELETE FROM Candidato WHERE IDCandidato = @pIDCandidato";
            r = db.Execute(sql, new {pIDCandidato = IDCandidato});
        }
        return r;
    }
    public static Partido VerInfoPartido(int IDPartido){
        Partido part;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Partido WHERE IDPartido = @pIDPartido";
            part = db.QueryFirstOrDefault<Partido>(sql, new {pIDPartido = IDPartido});
        }
        return part;
    }
    public static Candidato VerInfoCandidato(int IDCandidato){
        Candidato part;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Candidato WHERE IDCandidato = @pIDCandidato";
            part = db.QueryFirstOrDefault<Candidato>(sql, new {pIDCandidato = IDCandidato});
        }
        return part;
    }
    public static List<Partido> ListarPartidos(){
        List<Partido> part;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Partido";
            part = db.Query<Partido>(sql).ToList();
        }
        return part;
    }
    public static List<Candidato> ListarCandidatos(int IDPartido){
        List<Candidato> part;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SELECT * FROM Candidato WHERE IDPartido = @pIDPartido";
            part = db.Query<Candidato>(sql, new {pIDPartido = IDPartido}).ToList();
        }
        return part;
    }
}
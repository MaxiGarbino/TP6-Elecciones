using System.Data.SqlClient;
using Dapper;

namespace TP06.Models;

public class BD
{
    private static string _connectionString = @"Server=localhost; DataBase=TP6 programacion;Trusted_Connection=True;";
    public bool AgregarCandidato(Candidato can){
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "INSERT INTO Candidato(IDPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@IDPartido, @Apellido, @Nombre, @FechaNacimiento, @Foto, @Postulacion);";
            bool r = db.Execute(sql, new {can});
        }
        return r;
    }
}
using System.Data.SqlClient;
using Dapper;

namespace TP06.Models;

static class BD
{
    private static string _connectionString = @"Server=localhost; DataBase=TP6 programacion;Trusted_Connection=True;";
    public static bool AgregarCandidato(Candidato can){
        return true;
    }
}
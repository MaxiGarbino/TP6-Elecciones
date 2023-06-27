using System.Data.SqlClient;
using Dapper;

namespace TP06.Models;

static class BD
{
    private static string _connectionString = @"Server=localhost; DataBase=TP6 programacion;Trusted_Connection=True;";
<<<<<<< HEAD
=======
    public bool AgregarCandidato(Candidato can){
        return true;
    }
>>>>>>> 169e53647391a9017012307e3c752fcc8ca5b773
}
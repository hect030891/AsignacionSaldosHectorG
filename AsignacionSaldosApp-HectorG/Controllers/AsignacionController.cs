using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;
using AsignacionSaldosApp_HectorG.Models;

namespace AsignacionSaldosApp_HectorG.Controllers
{
    public class AsignacionController : Controller
    {
        private readonly string _connectionString;

        public AsignacionController(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }
       
        public IActionResult Index()
        {
            return View(new List<AsignacionModel>());  
        }

        [HttpPost]
        public IActionResult AsignacionSaldo(AsignacionModel model)
        {
            var asignaciones = new List<AsignacionModel>();
            string errorMessage = null;

            try
            {
                using (SqlConnection conn = new SqlConnection(_connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("PROC_ASIGNACION_SALDO", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        conn.Open();

                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);
                            
                            foreach (DataRow row in dataTable.Rows)
                            {
                                var asignacion = new AsignacionModel
                                {
                                    NombreGestor = row["NombreGestor"].ToString(),
                                    NombreCuenta = row["NombreCuenta"].ToString(),
                                    SaldoCuenta = (decimal)row["SaldoCuenta"],
                                    TotalSaldosPorGestor = (decimal)row["TotalSaldosPorGestor"]
                                };

                                asignaciones.Add(asignacion);
                            }
                        }
                    }
                }
            }
            catch (SqlException ex)            {
                
                errorMessage = "Error al ejecutar la consulta a la base de datos: " + ex.Message;
            }
            catch (Exception ex)
            {               
                errorMessage = "Se ha producido un error: " + ex.Message;
            }
          
            if (errorMessage != null)
            {
                ViewBag.ErrorMessage = errorMessage; 
            }

           
            return View("Index",asignaciones);
        }
    }
}

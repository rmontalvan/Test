using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ConectarDatos;
namespace Test2.Controllers
{
    public class ProductosController : ApiController
    {
        private DBTestEntities dbContext = new DBTestEntities();
        [HttpGet]
        public IEnumerable<Productos> Get()
        {
            using (DBTestEntities ProductoEntities = new DBTestEntities())
            { 
                return ProductoEntities.Productos.ToList();
            }
        }

    }
}

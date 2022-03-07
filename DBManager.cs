using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace my_app_aya
{
    public class DBManager
    {
        
       

        public static int DMLfunction(string query, SqlParameter[] parameters)
        {
            int RowsAffected;
            //  create new sqlconnection and connection to database by using connection string from web.config file
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dtuConnectionString"].ConnectionString);

            SqlCommand InsCommand = new SqlCommand(query, con);
           
            InsCommand.CommandType = CommandType.StoredProcedure;
            
            InsCommand.Parameters.AddRange(parameters);
            try
            {
                con.Open();
                RowsAffected =Convert.ToInt32(InsCommand.ExecuteScalar());
            }
            catch(Exception)
            {
                throw;
            }
            finally { con.Close(); }
            return RowsAffected;
        }

    }
}
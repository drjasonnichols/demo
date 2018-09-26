using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace demo
{
	public partial class index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}



		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
			string sqlSelect = "SELECT id FROM Users WHERE userid=@idValue and password=@passValue";

			SqlConnection sqlConnection = new SqlConnection(sqlConnectString);
			SqlCommand sqlCommand = new SqlCommand(sqlSelect, sqlConnection);

			sqlCommand.Parameters.Add("@idValue", System.Data.SqlDbType.NVarChar);
			sqlCommand.Parameters["@idValue"].Value = idBox.Text;
			sqlCommand.Parameters.Add("@passValue", System.Data.SqlDbType.NVarChar);
			sqlCommand.Parameters["@passValue"].Value = pwBox.Text;

			SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCommand);
			DataTable sqlDt = new DataTable();
			sqlDa.Fill(sqlDt);
			if (sqlDt.Rows.Count > 0)
			{
				Session["id"] = sqlDt.Rows[0]["id"];
				Response.Redirect("SecretPage.aspx");
			}
			else
			{
				invalidText.Text = "Invalid credentials, try again...";
			}
		}
	}
}
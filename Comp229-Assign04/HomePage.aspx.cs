using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Comp229_Assign04
{
    public partial class HomePage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SetBindings();
        }

        //bind the data
        private void SetBindings()
        {
            var models = Global.Models.Select(tModel => new { tModel.name, tModel.faction });
            modelsRepeater.DataSource = models;
            modelsRepeater.DataBind();
        }
        //change to Create Model Page
        protected void newModel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateModel.aspx");
        }
        //send Email with updated JSON file
        protected void sendMail_Click(object sender, EventArgs e)
        {
            Global.EmailJsonFile(emailText.Text, nameText.Text, "NewAssign04.json");
            emailText.Text = "";
            nameText.Text = "";
        }
    }
}
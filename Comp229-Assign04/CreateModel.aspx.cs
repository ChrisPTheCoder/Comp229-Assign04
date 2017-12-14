using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;
using System.IO;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
   
    public partial class CreateModel : System.Web.UI.Page
    {
        string file = HttpContext.Current.Server.MapPath("~/Data/Assign04.json");
        //string filePath = HttpContext.Current.Server.MapPath("~/Data/UpdatedAssign04.json");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //assign the value to JSON file
        protected void createModel_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Model model = new Model();
                model.name = tbName.Text;
                model.faction = tbFaction.Text;
                model.rank = Convert.ToInt32(tbRank.Text);
                model._base = Convert.ToInt32(tbBase.Text);
                model.size = Convert.ToInt32(tbSize.Text);
                model.deploymentZone = tbDZone.Text;
                model.mobility = Convert.ToInt32(tbMobility.Text);
                model.willpower = Convert.ToInt32(tbMobility.Text);
                model.resiliance = Convert.ToInt32(tbResiliance.Text);
                model.wounds = Convert.ToInt32(tbWounds.Text);

                var filepath = System.Web.Hosting.HostingEnvironment.MapPath("~/Data/Assign04.json");
                if (File.Exists(filepath))
                {
                    //Deserialize json file
                    var jsonData = JsonConvert.DeserializeObject<List<Model>>(File.ReadAllText(filepath));

                    //Add object to jsonData
                    jsonData.Add(model);

                    //Serialize jsonData to file
                    File.WriteAllText(filepath, JsonConvert.SerializeObject(jsonData));


                    //Redirect
                    Response.Redirect("~/HomePage.aspx");
                }
            }
        }

        //back to Home Page
        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}
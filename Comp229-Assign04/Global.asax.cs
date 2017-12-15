using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Comp229_Assign04
{
    public class Global : HttpApplication
    {
        public static IEnumerable<Model> Models;
        private const string modelsJsonFilePath = "~/Data/Assign04.json";
        private const string updatedJsonFilePath = "~/Data/NewAssign04.json";
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            PrepareModelCollection();
        }

        // reads data from JSON file and sets it models IEnumerable
        //code source: https://stackoverflow.com/questions/30351227/path-to-content-folder-in-asp-net-mvc
        public void PrepareModelCollection()
        {
            using (StreamReader streamReader = new StreamReader(System.Web.Hosting.HostingEnvironment.MapPath(modelsJsonFilePath)))
            {
                var jsonString = streamReader.ReadToEnd();
                Models = JsonConvert.DeserializeObject<List<Model>>(jsonString);
            }
        }


        // create a new JSON file 
        public static void UpdateModelCollection()
        {
            using (StreamWriter streamwriter = new StreamWriter(System.Web.Hosting.HostingEnvironment.MapPath(updatedJsonFilePath)))
            {
                streamwriter.WriteLine(JsonConvert.SerializeObject(Models));
            }
        }

        // sends updated json file to the user
        public static void EmailJsonFile(string clientEmailAddress, string clientName, string attachmentFileName)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();
            try
            {
                // These values should be set by the client.
                MailAddress fromAddress = new MailAddress("from@example.com", "From Me");
                message.Subject = "Testing!";
                message.Body = "This is the body of a sample message";

                // These could be static, or dynamic, depending on situation.
                MailAddress toAddress1 = new MailAddress("to@example.com", "You");
                MailAddress toAddress2 = new MailAddress("cc-comp229f2016@outlook.com", "You");
                message.From = fromAddress;
                message.To.Add(toAddress1);
                message.To.Add(toAddress2);
                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");
                smtpClient.Send(message);
                //statusLabel.Text = "Email sent.";
            }
            catch (Exception ex)
            {
                //statusLabel.Text = "Coudn't send the message!";
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataValidation
{
    public partial class _Default : Page
    {
        List<string> word1 = new List<string> {"blue", "big", "whiny", "shiny", "muscular", "happy", "spotty", "unsightly", "petite", "bawdy", "careful" };
        List<string> word2 = new List<string> {"Vacation", "bird", "chair", "cookie", "fire", "plane", "trump", "shoe", "congress", "pants", "banana", "state" };
        static Random rnd = new Random();
        string secure;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                secure = getSecurityString();

                securityPhraseTextBox.Text = secure;
            }
            


        }        

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if(!Page.IsValid)
            {
                MessageLabel.Text = "There is an error in one or more of the inputs.";
                return;
            }
            else
            {
                MessageLabel.Text = "Form Submitted Successfully!";
            }
        }

        public string getSecurityString()
        {
            string s1 = word1[rnd.Next(word1.Count)];
            string s2 = word2[rnd.Next(word2.Count)];

            string securityString = s1 + " " + s2;

            return securityString;

        }

        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            
                secure = getSecurityString();
                securityPhraseTextBox.Text = secure;
            
            
        }
    }
}
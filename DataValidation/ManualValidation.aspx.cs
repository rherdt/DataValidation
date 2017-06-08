using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataValidation
{
    public partial class ManualValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var number = InputTexbox.Text;
            int num = int.Parse(number);

            int sum = 0;
        
            while (num != 0)
            {
                sum += num % 10;
                num /= 10;
            }

            if(sum % 10 == 0)
            {
                ResultLabel.Text = "Input is valid!";
            }
            else
            {
                ResultLabel.Text = "Input is not Valid";
            }


        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Konvertera_temp.Model;

namespace Konvertera_temp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Convert_Click(object sender, EventArgs e)
        {
            if (IsValid) 
            {
                var startTemp = int.Parse(StartTemp.Text);
                var endTemp = int.Parse(EndTemp.Text);
                var interval = int.Parse(IntervalTemp.Text);
                var cToF = CtoF;
                var fToC = FtoC;

                if (cToF.Checked)
                {
                    Result.Text = TemperatureConverter.CelsiusToFahrenheit(startTemp).ToString();
                    Result.Visible = true;
                }
                else if (fToC.Checked)
                {
                    Result.Text = TemperatureConverter.FahrenheitToCelsius(startTemp).ToString();
                    Result.Visible = true;
                }
            }
        }
    }
}
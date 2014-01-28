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
                    for (int i = startTemp; i > endTemp; i += interval)
                    {
                        TableRow tRow = new TableRow();
                        Table1.Rows.Add(tRow);
                        for (int cell = 0; cell < 2; cell++)
                        {
                            // Create a new cell and add it to the row.
                            TableCell tCell = new TableCell();
                            tCell.Text = TemperatureConverter.CelsiusToFahrenheit(i).ToString();
                            tRow.Cells.Add(tCell);
                        }
                    }
                    Table1.Visible = true;
                    
                }
                else if (fToC.Checked)
                {
                    //Result.Text = TemperatureConverter.FahrenheitToCelsius(startTemp).ToString();
                   // Result.Visible = true;
                }
            }
        }
    }
}
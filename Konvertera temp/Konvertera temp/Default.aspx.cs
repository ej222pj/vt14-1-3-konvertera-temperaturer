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
                    TableHeaderRow headerRow = new TableHeaderRow();
                    TableHeaderCell headerTableCell1 = new TableHeaderCell();
                    TableHeaderCell headerTableCell2 = new TableHeaderCell();
                    headerTableCell1.Text = "°C";
                    headerTableCell2.Text = "°F";


                    headerRow.Cells.Add(headerTableCell1);
                    headerRow.Cells.Add(headerTableCell2);

                    Table1.Rows.Add(headerRow);

                    for (int i = startTemp; i <= endTemp; i += interval)
                    {
                        TableRow tRow = new TableRow();
                        Table1.Rows.Add(tRow);

                        // Create a new cell and add it to the row.
                        TableCell tCell1 = new TableCell();
                        tCell1.Text = i.ToString();
                        tRow.Cells.Add(tCell1);

                        TableCell tCell2 = new TableCell();
                        tCell2.Text = TemperatureConverter.CelsiusToFahrenheit(i).ToString();
                        tRow.Cells.Add(tCell2);

                    }
                    Table1.Visible = true;
                    
                }
                else if (fToC.Checked)
                {
                    TableHeaderRow headerRow = new TableHeaderRow();
                    TableHeaderCell headerTableCell1 = new TableHeaderCell();
                    TableHeaderCell headerTableCell2 = new TableHeaderCell();
                    headerTableCell1.Text = "°F";
                    headerTableCell2.Text = "°C";


                    headerRow.Cells.Add(headerTableCell1);
                    headerRow.Cells.Add(headerTableCell2);

                    Table1.Rows.Add(headerRow);

                    for (int i = startTemp; i <= endTemp; i += interval)
                    {
                        TableRow tRow = new TableRow();
                        Table1.Rows.Add(tRow);

                        // Create a new cell and add it to the row.
                        TableCell tCell1 = new TableCell();
                        tCell1.Text = i.ToString();
                        tRow.Cells.Add(tCell1);

                        TableCell tCell2 = new TableCell();
                        tCell2.Text = TemperatureConverter.FahrenheitToCelsius(i).ToString();
                        tRow.Cells.Add(tCell2);

                    }
                    Table1.Visible = true;
                }
            }
        }
    }
}
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
                
                if (CtoF.Checked)
                {
                    //Infogar header raden till tabellen
                    tableHeader("°C", "°F");
                    //infogar body till tabellen
                    tableBody(startTemp, endTemp, interval, true);
                    //Gör tabellen synlig
                    Table1.Visible = true;
                    
                }
                else if (FtoC.Checked)
                {
                    tableHeader("°F", "°C");

                    tableBody(startTemp, endTemp, interval, false);

                    Table1.Visible = true;
                }
            }//if (isvalid)
        }//knapp metod

        //Metod för att skapa table header
        public void tableHeader(string input, string output) 
        {
            TableHeaderRow headerRow = new TableHeaderRow();
            TableHeaderCell headerTableCell1 = new TableHeaderCell();
            TableHeaderCell headerTableCell2 = new TableHeaderCell();
            headerTableCell1.Text = input;
            headerTableCell2.Text = output;

            headerRow.Cells.Add(headerTableCell1);
            headerRow.Cells.Add(headerTableCell2);

            Table1.Rows.Add(headerRow);
        }

        //Metod för att skapa table body
        public void tableBody(int startTemp, int endTemp, int interval, bool type)
        {
            for (int i = startTemp; i <= endTemp; i += interval)
            {
                TableRow tRow = new TableRow();
                Table1.Rows.Add(tRow);

                // Skapar första cellen och lägger till den i tabellen med startvärdet
                TableCell tCell1 = new TableCell();
                tCell1.Text = i.ToString();
                tRow.Cells.Add(tCell1);
                //Skapar andra cellen och lägger till den i tabellen med det konverterade värdet
                TableCell tCell2 = new TableCell();
                //Kollar vilken typ av konvertering som ska göras
                if (type) 
                {
                    tCell2.Text = TemperatureConverter.CelsiusToFahrenheit(i).ToString();
                }
                else
                {
                    tCell2.Text = TemperatureConverter.FahrenheitToCelsius(i).ToString();
                }
                tRow.Cells.Add(tCell2);
            }
        }//tablebody

    }//Class
}//Namespace
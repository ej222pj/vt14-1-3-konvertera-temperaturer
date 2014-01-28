using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Konvertera_temp.Model
{
    public static class TemperatureConverter
    {
        public static int CelsiusToFahrenheit(int degreesC) {
            //[°F]=[°C]∙1,8+32
            int degrees = Convert.ToInt32(degreesC * 1.8 + 32);
            return degrees;
        }
        public static int FahrenheitToCelsius(int degreesF){
            //[°C]=([°F]−32)∙5/9
            int degrees = Convert.ToInt32((degreesF-32) * 5 / 9);
            return degrees;
        }
    }
}
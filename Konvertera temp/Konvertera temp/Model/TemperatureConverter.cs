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
            return 5;
        }
        public static int FahrenheitToCelsius(int degreesF){
            //[°C]=([°F]−32)∙5/9
            return 5;
        }
    }
}
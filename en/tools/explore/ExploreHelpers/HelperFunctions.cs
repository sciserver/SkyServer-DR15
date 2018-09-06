using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SkyServer.Tools.Explore
{
    public class HelperFunctions
    {
        public static DateTime ConvertFromJulian(int m_JulianDate)
        {          
            ////Algo1
            //long L = m_JulianDate + 68569;
            //long N = (long)((4 * L) / 146097);
            //L = L - ((long)((146097 * N + 3) / 4));
            //long I = (long)((4000 * (L + 1) / 1461001));
            //L = L - (long)((1461 * I) / 4) + 31;
            //long J = (long)((80 * L) / 2447);
            //int Day = (int)(L - (long)((2447 * J) / 80));
            //L = (long)(J / 11);
            //int Month = (int)(J + 2 - 12 * L);
            //int Year = (int)(100 * (N - 49) + I + L);
            //DateTime dt = new DateTime(Year, Month, Day);
            //return dt;

            ////Algo 2
            //int y =	4716; int v=3;
            //int j = 1401; int u=5;
            //int m =	2; int s =153;
            //int n =	12; int	w =	2;
            //int r =	4; int	B =274277;
            //int p =	1461; int C =-38;

            //long f = m_JulianDate + j + (((4 * m_JulianDate + B) / 146097) * 3) / 4 + C;
            //long e = r * f + v;
            //long g = (e%p) / r;
            //long h = u * g + w;
            //int D = (int)((h % s) / u + 1);            
            //int M = (int)((((h / s) + m) % n) + 1);
            //int Y = (int)((e / p) - y + (n + m - M) / n);
            //return new DateTime(Y, M, D);

            long J = m_JulianDate + 2400001 + 68569;
            long C = 4 * J / 146097;
            J = J - (146097 * C + 3) / 4;
            long Y = 4000 * (J + 1) / 1461001;
            J = J - 1461 * Y / 4 + 31;
            long M = 80 * J / 2447;
            int Day =(int)( J - 2447 * M / 80);
            J = M / 11;
            int Month = (int)(M + 2 - (12 * J));
            int Year = (int)(100 * (C - 49) + Y + J);
            return new DateTime(Year, Month, Day);
        }
    }
}
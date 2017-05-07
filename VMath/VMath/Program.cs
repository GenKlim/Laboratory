using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace VMath
{
    class Program
    {
        static Regex format_regex = new Regex(@"\{(\d)\}");
        static double k, l, a, b, c;

        static void Main(string[] args)
        {
            Console.WriteLine("Введите k (Разделитель - запятая, Не точка): ");
            k = double.Parse(Console.ReadLine());
            Console.WriteLine("Введите l: ");
            l = double.Parse(Console.ReadLine());

            a = (k + l) / 2;
            b = k + l;

            log("\n");
            logln("f(x) = x^2 - {0} + {1}", k + l, k * l);

            logln("a = {0}", a);
            logln("b = {0}", b);

            Console.WriteLine("\n1. Определим, находится ли корень на отрезке [{0}, {1}]", a, b);

            logln("f(a)*f(b) < 0");

            log("\n");
            log("f(a) = ");
            double fa = f(a);
            log("\n");
            log("f(b) = ");
            double fb = f(b);

            log("\n");
            logln("f(a)*f(b) = {0}*{1} = {2} < 0", fa, fb, fa * fb);

            if (fa * fb >= 0)
                return;

            Console.WriteLine("\n2. Найдем первую и вторую производные");

            logln("f`(x) = 2*x - {0}", k + l);
            logln("f``(x) = 2");

            Console.WriteLine("\n3. Найдем неподвижную точку метода хорд С и начальную точку метода касательных");

            logln("       / a, если f(a)*f``(a) > 0");
            logln("С=x0= |");
            logln("       \\ b, если f(b)*f``(b) > 0");


            double ddfa = ddf(a, false);
            double ddfb = ddf(a, false);

            log("\n");
            logln("f(a)*f``(a) = {0}*{1} = {2}", fa, ddfa, fa * ddfa);
            logln("f(b)*f``(b) = {0}*{1} = {2}", fb, ddfb, fb * ddfb);

            c = fa * ddfa > 0 ? a : b;
            logln("c = {0} = {1}", c == b ? "b" : "a", c);

            {
                Console.WriteLine("\n4. Найдем 4 итерации методом хорд");
                StringBuilder sb = new StringBuilder();

                double x0 = c == b ? a : b;
                logln("x0 = !c = {0} = {1}", c == b ? "a" : "b", x0);

                for (int i = 0; i < 4; i++)
                {
                    log("\n");
                    x0 = horda(i, x0);
                    sb.AppendLine(format("x{0} = {1}", i, x0));

                    if (i != 3)
                    {
                        f(x0);
                        log("\n");
                    }
                }

                log("\n");
                Console.Write(sb.ToString());

                Console.WriteLine("\n5. Построим график");
            }

            {
                Console.WriteLine("\n6. Найдем 4 итерации методом секущих");
                StringBuilder sb = new StringBuilder();

                double x0 = c;
                double x1 = c == b ? a : b;

                logln("x0 = c = {0} = {1}", c == b ? "b" : "a", x0);
                logln("x1 = !c = {0} = {1}", c == b ? "a" : "b", x1);

                for (int i = 1; i < 5; i++)
                {
                    log("\n");
                    double t = secuh(i, x1, x0);
                    x0 = x1;
                    x1 = t;

                    sb.AppendLine(format("x{0} = {1}", i, x1));

                    if (i != 4)
                    {
                        f(x1);
                        log("\n");
                    }
                }

                log("\n");
                Console.Write(sb.ToString());

                Console.WriteLine("\n7. Построим график");
            }

            {
                Console.WriteLine("\n8. Найдем 4 итерации методом секущих");
                StringBuilder sb = new StringBuilder();

                double x0 = c;
                logln("x0 = c = {0} = {1}", c == b ? "b" : "a", x0);

                for (int i = 0; i < 4; i++)
                {
                    log("\n");
                    x0 = nyton(i, x0);
                    sb.AppendLine(format("x{0} = {1}", i, x0));

                    if (i != 3)
                    {
                        f(x0);
                        log("\n");
                        df(x0);
                        log("\n");
                    }
                }

                log("\n");
                Console.Write(sb.ToString());

                Console.WriteLine("\n9. Построим график");
            }

            {
                Console.WriteLine("\n10. Найдем 4 итерации методом простой итерации");

                logln("Преобразуем уравнение f(x) к виду x=v(x)");
                log("\n");
                logln("v(x) = sqrt((k+l)*x - k*l) = sqrt(({0}+{1})*x - {0}*{1}) = sqrt({2}*x - {3})", k, l, k + l, k * l);
                logln("Т.е. Xn+1 =  sqrt({2}*Xn - {3}) ,отрезок [{0}, {1}]", a, b, k + l, k * l);
                log("\n");

                double x0 = b;
                logln("x0 = b = {0} (Любая граница отрезка)", x0);
                log("\n");

                for (int i = 1; i < 5; i++)
                    x0 = iter(i, x0);

                Console.WriteLine("\n11. Построим график");
            }

            Console.ReadLine();
        }

        static double f(double x, bool echo = true)
        {
            double val = x * x - (k + l) * x + k * l;
            if (echo) log("f({0}) = ({0})^2 - {1}*{0} + {2} = {3}", x, k + l, k * l, val);
            return val;
        }

        static double df(double x, bool echo = true)
        {
            double val = 2 * x - (k + l);
            if (echo) log("f`({0}) = 2*{0} - {1} = {2}", x, k + l, val);
            return val;
        }

        static double ddf(double x, bool echo = true)
        {
            double val = 2;
            if (echo) log("f``({0}) = {1}", x, val);
            return val;
        }

        static double horda(int n, double x, bool echo = true)
        {
            double fx = f(x, false);
            double fc = f(c, false);
            double val = x - fx / (fc - fx) * (c - x);

            if (echo)
                log("x{0} = {1} - {2}/({3}-{2}) * ({4} - {1}) = {5}\n", n, x, fx, fc, c, val);

            return val;
        }

        static double secuh(int n, double x, double xm1, bool echo = true)
        {
            double fx = f(x, false);
            double fxm1 = f(xm1, false);
            double val = x - fx / (fxm1 - fx) * (xm1 - x);

            if (echo)
                log("x{0} = {1} - {2}/({3}-{2}) * ({4} - {1}) = {5}\n", n, x, fx, fxm1, xm1, val);

            return val;
        }

        static double nyton(int n, double x, bool echo = true)
        {
            double fx = f(x, false);
            double dfx = df(x, false);
            double val = x - fx / dfx;

            if (echo)
                log("x{0} = {1} - {2}/{3} = {4}\n", n, x, fx, dfx, val);

            return val;
        }

        static double iter(int n, double x)
        {
            double val = Math.Sqrt((k + l)* x - k * l);
            logln("x{0} = v({1}) = sqrt({2}*{3} - {4}) = {5}", n, x-1, k+l, x, k*l, val);

            return val;
        }

        static void logln(String _format, params object[] args)
        {
            Console.WriteLine(format(_format, args));
        }

        static void log(String _format, params object[] args)
        {
            Console.Write(format(_format, args));
        }

        static string format(String format, params object[] args)
        {
            string result = format_regex.Replace(format,
                m => "{" + m.Groups[1].Value + ":0.####}"
            );

            return String.Format("\t" + result, args).Replace("--", "+").Replace("- -", "+ ");
        }
    }
}
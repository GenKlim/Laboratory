using System;

namespace VMath
{
    class Task4 : TaskBase
    {
        double k, l, a, b;

        public override void Run()
        {
            Console.WriteLine("Введите k: ");
            k = double.Parse(Console.ReadLine().Replace('.', ','));
            Console.WriteLine("Введите l: ");
            l = double.Parse(Console.ReadLine().Replace('.', ','));

            a = (k - l) / 2;
            b = k + l;

            logln("a = {0}", a);
            logln("b = {0}", b);

            logln("f(x) = x+{0} / (x^2 + x + {1})\n", l, k);

            var result = new double[3, 3];

            {
                Console.WriteLine("\n1. Метод трапеций");
                for (int i = 0; i < 3; i++)
                {
                    int n = 4 + i * 2;

                    logln("n = {0}", n);

                    if (i == 0)
                        logln("Iтр = h{0} * ((f(a)+f(b)) / 2 + f(a+h) + f(a+2h) + f(a+3h) )\n", n);

                    double fa = f(a, i == 0);
                    double fb = f(b, i == 0);
                    double fab2 = (fa + fb) / 2;
                    if (i == 0)
                        logln("(f(a)+f(b)) / 2 = ({0} + {1}) / 2 = {2}\n", fa, fb, fab2);

                    double h = (b - a) / n;
                    logln("h{2} = {0}-{1} / {2} = {3}\n", b, a, n, h);


                    double val = fab2;

                    string buff1 = "";
                    string buff2 = "";
                    for (int k = 1; k < n; k++)
                    {
                        double fahk = f(a + h * k, false);
                        buff1 += format(" + f({0})", a + h * k);
                        buff2 += format(" + {0}", fahk);
                        val += fahk;
                    }

                    val *= h;

                    logln("Iтр = {0} * ( {1} {2} ) = {0} * ( {1} {3} ) = {4}", h, fab2, buff1, buff2, val);
                    logln("");

                    result[0, i] = val;
                }
            }

            {
                Console.WriteLine("\n2. Метод парабол");
                for (int i = 0; i < 3; i++)
                {
                    int n = 4 + i * 2;

                    logln("n = {0}", n);

                    if (i == 0)
                        logln("Iпар = 2/3 h{0} * ((f(a)+f(b)) / 2 + 2*f(a+h) + f(a+2h) + 2*f(a+3h) )\n", n);

                    double fa = f(a, false);
                    double fb = f(b, false);
                    double fab2 = (fa + fb) / 2;

                    double h = (b - a) / n;
                    logln("h{2} = {0}-{1} / {2} = {3}\n", b, a, n, h);


                    double val = fab2;

                    string buff1 = "";
                    string buff2 = "";
                    for (int k = 1; k < n; k++)
                    {
                        double fahk = f(a + h * k, false);
                        if (k % 2 == 1)
                            fahk *= 2;

                        buff1 += format(" + {1}f({0})", a + h * k, k % 2 == 1 ? "2*" : "");
                        buff2 += format(" + {0}", fahk);
                        val += fahk;
                    }

                    val *= 2.0 / 3.0 * h;

                    logln("Iпар = {0} * ( {1} {2} ) = {5} * ( {1} {3} ) = {4}", h, fab2, buff1, buff2, val, 2.0 / 3.0 * h);
                    logln("");

                    result[1, i] = val;
                }
            }

            {
                Console.WriteLine("\n3. Метод Гаусса");
                for (int i = 0; i < 3; i++)
                {
                    int n = 4 + i * 2;

                    logln("n = {0}", n);

                    double ab2 = (a + b) / 2;
                    double bma2 = (b - a) / 2;

                    if (i == 0)
                    {
                        logln("Iг = (b-a)/2 * ( A1 * f( (a+b)/2 + (b-a)/2 * t1 ) + A2 * f( (a+b)/2 + (b-a)/2 * t2 ) + A3 * f( (a+b)/2 + (b-a)/2 * t3 ) + A4 * f( (a+b)/2 + (b-a)/2 * t4 ))\n");

                        logln("{0}+{1} / 2 = {2}\n", a, b, ab2);
                        logln("{1}-{0} / 2 = {2}\n", a, b, bma2);
                    }

                    double[] A = null;
                    double[] t = null;

                    switch (i)
                    {
                        case 0:
                            t = new double[] { -.861136, -.339981, .339981, .861136 };
                            A = new double[] { .347854, .652145, .652145, .347854 };
                            break;
                        case 1:
                            t = new double[] { -.932464, -.661209, -.238619, .238619, .661209, .932464 };
                            A = new double[] { .171324, .360761, .467913, .467913, .360761, .171324 };
                            break;
                        case 2:
                            t = new double[] { -.960289, -.796666, -.525532, -.183434, .183434, .525532, .796666, .960289 };
                            A = new double[] { .101228, .222381, .313706, .362683, .362683, .313706, .222381, .101228 };
                            break;
                    }

                    logln("");
                    for (int k = 0; k < n; k++)
                    {
                        logln("A{0} = {1}\tt{0} = {2}", k, A[k], t[k]);
                    }

                    double val = 0;
                    string buff1 = "";
                    string buff2 = "";
                    for (int k = 0; k < n; k++)
                    {
                        string spect = k == 0 ? "" : " +";
                        double koef = ab2 + bma2 * t[k];
                        double fkoef = f(koef, false);

                        buff1 += format("{0} {1}*f({2})", spect, A[k], koef);
                        buff2 += format("{0} {1}*{2}", spect, A[k], fkoef);

                        val += A[k] * fkoef;
                    }

                    val *= bma2;

                    logln("Iг = {3}*{0} =\n= {3}*{1} = {2}", buff1, buff2, val, bma2);
                    logln("");

                    result[2, i] = val;
                }
            }

            double val_t;

            {
                Console.WriteLine("\n4. Расчет точного значения");

                logln("Iточ = [ 0.5*ln (x^2+x+k) + (l-0.5) / sqrt(k-0.25) * arctg( (x+0.5) / sqrt(k-0.25) )] | от а до b\n");
                logln("Iточ = [ 0.5*ln (x^2+x+{2}) + {1} / sqrt({0}) * arctg( (x+0.5) / sqrt({0}) )] | от а до b\n", k - .25, l - 0.5, k);
                logln("");

                double k1 = (l - 0.5) / Math.Sqrt(k - .25);
                double k2 = (b + 0.5) / Math.Sqrt(k - .25);
                double k3 = (a + 0.5) / Math.Sqrt(k - .25);
                logln("Iточ = [ 0.5*ln ({3}^2+{3}+{2}) + {0} * arctg({1})] - [ 0.5*ln ({4}^2+{4}+{2}) + {0} * arctg({5})] = ", k1, k2, k, b, a, k3);


                double v0 = Math.Log(b * b + b + k);
                double v1 = k1 * Math.Atan(k2);
                double v2 = Math.Log(a * a + a + k);
                double v3 = k1 * Math.Atan(k3);
                double val = (0.5 * v0 + v1) - (0.5 * v2 + v3);

                logln("Iточ = (0.5*{0} + {1}) - (0.5*{2} + {3}) = {4}", v0, v1, v2, v3, val);

                val_t = val;
            }

            {
                Console.WriteLine("\n5. Результаты");

                logln("n\t2\t4\t6");

                for (int i = 0; i < 3; i++)
                {
                    switch (i)
                    {
                        case 0: log("Iтр"); break;
                        case 1: log("Iпар"); break;
                        case 2: log("Iг"); break;
                    }

                    for (int j = 0; j < 3; j++)
                    {
                        Console.Write(format("\t{0}", result[i,j]));
                    }

                    Console.Write("\n");
                }
            }
        }

            double f(double x, bool echo = true)
        {
            double val = (x + l) / (x * x + x + k);
            if (echo) log("f({0}) = {0}+{1} / ({0}^2 + {0} + {2}) = {3}/{4} = {5}\n", x, l, k, x + l, x * x + x + k, val);
            return val;
        }
    }
}
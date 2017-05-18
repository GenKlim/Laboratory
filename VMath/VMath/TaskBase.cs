using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace VMath
{
    abstract class TaskBase
    {
        private static Regex format_regex = new Regex(@"\{(\d)\}");

        public abstract void Run();

        protected static void logln(String _format, params object[] args)
        {
            Console.WriteLine("\t" + format(_format, args));
        }

        protected static void log(String _format, params object[] args)
        {
            Console.Write("\t" + format(_format, args));
        }

        protected static string format(String format, params object[] args)
        {
            string result = format_regex.Replace(format,
                m => "{" + m.Groups[1].Value + ":0.####}"
            );

            return String.Format(result, args).Replace("--", "+").Replace("- -", "+ ").Replace("+-", "-");
        }
    }
}
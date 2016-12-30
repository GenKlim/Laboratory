using System.Collections.Generic;
using System;
using System.IO;
using System.Text;

namespace LangLibrary
{
    public static class LangManager
    {
        private static Dictionary<string, string> lang;
        private static readonly string ConfigFile = "lang";
       // private static bool createDump = true;

        static LangManager()
        {
            lang = new Dictionary<string, string>();

            if (!File.Exists(ConfigFile))
                throw new FileNotFoundException("File '" + ConfigFile + "' not found");

            foreach (var item in File.ReadAllLines(ConfigFile))
            {
                //if (item == "--CREATE_DUMP")
                //{
                //    createDump = true;
                //    continue;
                //}

                if (string.IsNullOrEmpty(item))
                    continue;

                var pair = item.Split(new char[] { ':' }, 2);

                if (pair.Length != 2)
                    throw new Exception(string.Format("Bad line: '{0}', used format: 'original text:Перевод на человеческий'", item));

                string key = pair[0].ToLower();

                if (lang.ContainsKey(key))
                    throw new Exception(string.Format("Dublicate key: '{0}'", item));

                lang.Add(key, pair[1]);
            }
        }

        public static string Translate(string text)
        {
            string lcText = text.ToLower();

            //if (createDump)
            //{
            //    if (!lang.ContainsKey(lcText))
            //        lang.Add(text, "");

            //    StringBuilder dump = new StringBuilder();
            //    foreach (var pair in lang)
            //        dump.AppendFormat("{0}:{1}{2}", pair.Key, pair.Value, Environment.NewLine);

            //    File.WriteAllText("lang_dump.txt", dump.ToString());
            //}

            if (text.StartsWith("Version "))
                return "raft-game.ru";

            return lang.ContainsKey(lcText) ? lang[lcText] : text;
        }
    }
}
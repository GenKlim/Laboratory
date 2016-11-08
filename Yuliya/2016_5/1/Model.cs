using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using int3 = System.Tuple<int, int, int>;
using float3 = System.Tuple<float, float, float>;

namespace opengl
{
    public class Model
    {
        private List<int3> indexs;
        private List<float3> vertexs;

        public int PolygonCount
        {
            get { return indexs.Count(); }
        }

        public Model(string filename)
        {
            indexs = new List<int3>();
            vertexs = new List<float3>();

            foreach (var row in File.ReadAllLines(filename))
            {
                if (row.Length == 0) continue;

                switch (row[0])
                {
                    case 'v':
                        var row2 = row.Replace('.', ',');
                        var vx = row2.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
                        float x = float.Parse(vx[1]);
                        float y = float.Parse(vx[2]);
                        float z = float.Parse(vx[3]);
                        vertexs.Add(new float3(x, y, z));
                        break;
                    case 'f':
                        var ix = row.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
                        int a = int.Parse(ix[1]) - 1;
                        int b = int.Parse(ix[2]) - 1;
                        int c = int.Parse(ix[3]) - 1;
                        indexs.Add(new int3(a, b, c));
                        break;
                }
            }
        }

        public float3[] GetPolygon(int index)
        {
            var poly = new float3[3];
            var ix = indexs[index];

            poly[0] = vertexs[ix.Item1];
            poly[1] = vertexs[ix.Item2];
            poly[2] = vertexs[ix.Item3];

            return poly;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Skydiver
{
    public class Vec2
    {
        public double X;
        public double Y;

        public Vec2() { }
        public Vec2(double x, double y) { X = x; Y = y; }

        public static Vec2 operator +(Vec2 a, Vec2 b)
        {
            return new Vec2(a.X + b.X, a.Y + b.Y);
        }

        public static Vec2 operator -(Vec2 a, Vec2 b)
        {
            return new Vec2(a.X - b.X, a.Y - b.Y);
        }

        public static Vec2 operator *(Vec2 a, Vec2 b)
        {
            return new Vec2(a.X * b.X, a.Y * b.Y);
        }

        public static Vec2 operator *(Vec2 a, double k)
        {
            return new Vec2(a.X * k, a.Y * k);
        }

        public static Vec2 operator /(Vec2 a, double k)
        {
            return new Vec2(a.X / k, a.Y / k);
        }

        public static Vec2 operator -(Vec2 a)
        {
            return new Vec2(-a.X, -a.Y);
        }

        //public static implicit operator Point(Vec2 a)
        //{
        //    return new Point((int)a.X, (int)a.Y);
        //}

        //public static implicit operator PointF(Vec2 a)
        //{
        //    return new PointF((float)a.X, (float)a.Y);
        //}

        public double Length()
        {
            return Math.Sqrt(X * X + Y * Y);
        }

        public override string ToString()
        {
            return string.Format("X={0:0.00} Y={1:0.00}", X, Y);
        }
    }
}
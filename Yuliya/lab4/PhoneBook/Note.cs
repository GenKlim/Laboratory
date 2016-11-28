using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhoneBook
{
    public class Note
    {
        public readonly ushort Id;
        public string LastName;
        public string Name;
        public string Patronymic;
        public string Street;
        public ushort House;
        public ushort Flat;
        public string Phone;

        public Note(ushort _id)
        {
            Id = _id;
        }

        public Note()
        {
        }

        public static bool operator ==(Note o1, Note o2)//используется в методе Exists
        {
            return (o1.Flat == o2.Flat && o1.House==o2.House && o1.LastName==o2.LastName && o1.Name==o2.Name && o1.Patronymic==o2.Patronymic && o1.Phone==o2.Phone && o1.Street==o2.Street);
        }

        public static bool operator !=(Note o1, Note o2)
        {
            return !(o1 == o2);
        }

        public override bool Equals(object obj)//используется в методе Contains
        {
            Note o1 = (Note)obj;
            return (o1.Flat == Flat && o1.House == House && o1.LastName == LastName && o1.Name == Name && o1.Patronymic == Patronymic && o1.Phone == Phone && o1.Street == Street);
        }
        public override int GetHashCode()
        {
            return Id;
        }
    }

}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PhoneBook
{
    public partial class SearshToAdress : Form
    {
        List<Note> PhoneNote;

        public SearshToAdress()
        {
            InitializeComponent();
        }

        public SearshToAdress(List<Note> _PhoneNote)
        {
            InitializeComponent();
            PhoneNote = _PhoneNote;
        }


        private void SearchButton_Click(object sender, EventArgs e)
        {
            ResultsTextBox.Text = "";

            int i = 0;
            foreach (Note MyRecord in PhoneNote)
            {
                if (MyRecord.Street.Contains(StreetTextBox.Text) &&
                MyRecord.House.ToString().Contains(HouseTextBox.Text) && MyRecord.Flat.ToString().Contains(FlatTextBox.Text))
                {
                    i++;
                    ResultsTextBox.Text = ResultsTextBox.Text + i.ToString() + ". " + MyRecord.LastName + " " + MyRecord.Name + " " + MyRecord.Patronymic + ", ул. " + MyRecord.Street + ", д." + MyRecord.House + ", кв. " + MyRecord.Flat + ", тел. " + MyRecord.Phone + "\r\n";
                }
            }
            if (i == 0) ResultsTextBox.Text = "Записей, удовлетворяющих поставленным условиям, в списке абонентов нет!";
        }
    }
}

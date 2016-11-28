using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Xml;

namespace PhoneBook
{
    public partial class MainForm : Form
    {
        private List<Note> PhoneNote;
        private int current;

        public MainForm()
        {
            InitializeComponent();
            PhoneNote = new List<Note>();
            current = -1;

        }

        private void PrintElement()
        {
            if ((current >= 0) && (current < PhoneNote.Count))
            { 
                Note MyRecord = PhoneNote[current];
                LastNameTextBox.Text = MyRecord.LastName;
                NameTextBox.Text = MyRecord.Name;
                PatronymicTextBox.Text = MyRecord.Patronymic;
                PhoneMaskedTextBox.Text = MyRecord.Phone;
                StreetTextBox.Text = MyRecord.Street;
                HouseNumericUpDown.Value = MyRecord.House;
                FlatNumericUpDown.Value = MyRecord.Flat;
            }
            else 
            { 
                LastNameTextBox.Text = "";
                NameTextBox.Text = "";
                PatronymicTextBox.Text = "";
                PhoneMaskedTextBox.Text = "";
                StreetTextBox.Text = "";
                HouseNumericUpDown.Value = 1;
                FlatNumericUpDown.Value = 1;
            }
            NumberToolStripStatusLabel.Text = (current + 1).ToString();
            QuantityToolStripStatusLabel.Text = PhoneNote.Count.ToString();
        }

        private void добавитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Note MyRecord = new Note();
            AddForm _AddForm = new AddForm(MyRecord, AddOrEdit.Add);
            _AddForm.ShowDialog();
            //if (! PhoneNote.Exists(x => x == _AddForm.MyRecord))
            if (!PhoneNote.Contains(_AddForm.MyRecord))
            {
                current = PhoneNote.Count;
                PhoneNote.Add(_AddForm.MyRecord);
                PrintElement();
            }
            else MessageBox.Show("Error");

        }


        private void PreviousButton_Click(object sender, EventArgs e)
        {
            if (current > 0)
            {
                current--;  
                PrintElement();  
            }
            else MessageBox.Show("Предыдущей записи не существует");

        }

        private void NextButton_Click(object sender, EventArgs e)
        {
            if (current < PhoneNote.Count - 1)
            {
                current++;  
                PrintElement();   
            }
            else MessageBox.Show("Следующей записи не существует");
        }

        private void сохранитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            saveFileDialog1.FileName = "Phone";
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                if (saveFileDialog1.FileName.EndsWith(".txt"))
                {
                    {
                        try         
                        {
                            using (StreamWriter sw =
                            new StreamWriter(saveFileDialog1.FileName))
                            {
                                foreach (Note MyRecord in PhoneNote)
                                {
                                    sw.WriteLine(MyRecord.LastName);
                                    sw.WriteLine(MyRecord.Name);
                                    sw.WriteLine(MyRecord.Patronymic);
                                    sw.WriteLine(MyRecord.Street);
                                    sw.WriteLine(MyRecord.House);
                                    sw.WriteLine(MyRecord.Flat);
                                    sw.WriteLine(MyRecord.Phone);
                                }
                            }
                        }
                        catch (Exception ex) 
                        {
                            MessageBox.Show("Не удалось сохранить данные! Ошибка: " +
                            ex.Message);
                        }

                    }
                }
                else if (saveFileDialog1.FileName.EndsWith(".xml"))
                {
                    XmlTextWriter textWritter = new XmlTextWriter(saveFileDialog1.FileName, Encoding.UTF8);
                    textWritter.WriteStartDocument();
                    textWritter.WriteStartElement("Notes");
                    textWritter.WriteEndElement();
                    textWritter.Close();

                    XmlDocument document = new XmlDocument();
                    document.Load(saveFileDialog1.FileName);

                    int i = 0;
                    foreach (Note x in PhoneNote)
                    {
                        XmlElement element = document.CreateElement("Note");
                        document.DocumentElement.AppendChild(element); 
                        XmlAttribute attribute = document.CreateAttribute("id"); 
                        attribute.Value = i.ToString(); 
                        element.Attributes.Append(attribute);

                        XmlNode lastnameElem = document.CreateElement("Lastname"); 
                        lastnameElem.InnerText = x.LastName; 
                        element.AppendChild(lastnameElem); 

                        XmlNode nameElem = document.CreateElement("Name"); 
                        nameElem.InnerText = x.Name; 
                        element.AppendChild(nameElem); 

                        XmlNode patronymic = document.CreateElement("Patronymic"); 
                        patronymic.InnerText = x.Patronymic; 
                        element.AppendChild(patronymic); 

                        XmlNode street = document.CreateElement("Street"); 
                        street.InnerText = x.Street;
                        element.AppendChild(street); 

                        XmlNode house = document.CreateElement("House"); 
                        house.InnerText = x.House.ToString(); 
                        element.AppendChild(house); 

                        XmlNode flat = document.CreateElement("Flat");
                        flat.InnerText = x.Flat.ToString();
                        element.AppendChild(flat); 

                        XmlNode phone = document.CreateElement("Phone");
                        phone.InnerText = x.Phone; 
                        element.AppendChild(phone); 

                        i++;
                    }

                    document.Save(saveFileDialog1.FileName);
                }
        }

        private void открытьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Note MyRecord;
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                if (openFileDialog1.FileName.EndsWith(".txt"))
                {
                    try
                    {
                        using (StreamReader sr =
                        new StreamReader(openFileDialog1.FileName))
                        {
                            while (!sr.EndOfStream)
                            {
                                MyRecord = new Note();
                                MyRecord.LastName = sr.ReadLine();
                                MyRecord.Name = sr.ReadLine();
                                MyRecord.Patronymic = sr.ReadLine();
                                MyRecord.Street = sr.ReadLine();
                                MyRecord.House = ushort.Parse(sr.ReadLine());
                                MyRecord.Flat = ushort.Parse(sr.ReadLine());
                                MyRecord.Phone = sr.ReadLine();
                                PhoneNote.Add(MyRecord);
                            }
                        }
                        if (PhoneNote.Count == 0) current = -1;
                        else current = 0;
                        PrintElement();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("При открытии файла произошла ошибка: " +
                        ex.Message);
                    }
                }
                else
                {
                    try
                    {
                        XmlDocument xDoc = new XmlDocument();
                        xDoc.Load(openFileDialog1.FileName);
                        XmlElement xRoot = xDoc.DocumentElement;
                        foreach (XmlElement xnode in xRoot)
                        {
                            Note node = new Note();
                            foreach (XmlNode cnode in xnode.ChildNodes)
                            {
                                if (cnode.Name == "Lastname") node.LastName = cnode.InnerText;
                                if (cnode.Name == "Name") node.Name = cnode.InnerText;
                                if (cnode.Name == "Patronymic") node.Patronymic = cnode.InnerText;
                                if (cnode.Name == "Street") node.Street = cnode.InnerText;
                                if (cnode.Name == "House") node.House = ushort.Parse(cnode.InnerText);
                                if (cnode.Name == "Flat") node.Flat = ushort.Parse(cnode.InnerText);
                                if (cnode.Name == "Phone") node.Phone = cnode.InnerText;
                            }
                            PhoneNote.Add(node);
                        }
                        if (PhoneNote.Count == 0) current = -1;
                        else current = 0;
                        PrintElement();
                    }
                    catch (Exception)
                    {
                        MessageBox.Show("xml файла не существует");
                    }
                }
            }

        }

        private void saveFileDialog1_FileOk(object sender, CancelEventArgs e)
        {
        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {

        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            string message = "Сохранить данные?";
            string caption = "";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result;
            result = MessageBox.Show(this, message, caption, buttons);

            if (result == DialogResult.Yes)
            {
                сохранитьToolStripMenuItem_Click(sender, new EventArgs());
            }
        }

        private void поФИОToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SearchNameForm _Search = new SearchNameForm(PhoneNote);
            _Search.ShowDialog();

        }

        private void поАдресуToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SearshToAdress _Search = new SearshToAdress(PhoneNote);
            _Search.ShowDialog();
        }

        private void поНомеруТелефонаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            NumberTelephone _Search = new NumberTelephone(PhoneNote);
            _Search.ShowDialog();
        }

        private void поФамилииToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (PhoneNote.Count > 0)
            {
                PhoneNote.Sort(new CompareByLastName());
                current = 0;
                PrintElement();
            }
        }

        private void поКвартиреToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (PhoneNote.Count > 0)
            {
                PhoneNote.Sort(new CompareByFlat());
                current = 0;
                PrintElement();
            }

        }

        private void поИмениToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (PhoneNote.Count > 0)
            {
                PhoneNote.Sort(new CompareByName());
                current = 0;
                PrintElement();
            }
        }

        private void поОтчествуToolStripMenuItem_Click(object sender, EventArgs e)
        {

            if (PhoneNote.Count > 0)
            {
                PhoneNote.Sort(new CompareByPatronymic());
                current = 0;
                PrintElement();
            }
        }

        private void поДомуToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (PhoneNote.Count > 0)
            {
                PhoneNote.Sort(new CompareByHouse());
                current = 0;
                PrintElement();
            }
        }

        private void поТелефонуToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (PhoneNote.Count > 0)
            {
                PhoneNote.Sort(new CompareByPhone());
                current = 0;
                PrintElement();
            }
        }

        private void изменитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (PhoneNote.Count > 0)
            {
                Note MyRecord = new Note();
                MyRecord.LastName = LastNameTextBox.Text;
                MyRecord.Name = NameTextBox.Text;
                MyRecord.Patronymic = PatronymicTextBox.Text;
                MyRecord.Phone = PhoneMaskedTextBox.Text;
                MyRecord.Street = StreetTextBox.Text;
                MyRecord.House = (ushort)HouseNumericUpDown.Value;
                MyRecord.Flat = (ushort)FlatNumericUpDown.Value;
                AddForm _AddForm = new AddForm(MyRecord, AddOrEdit.Edit);
                _AddForm.ShowDialog();
                PhoneNote[current] = _AddForm.MyRecord;
            }
            PrintElement();

        }

        private void удалитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Note MyRecord = new Note();


            if (PhoneNote.Count > 0)
            {
                string message = "Вы уверены, что хотите удалить контакт?";
                string caption = "";
                MessageBoxButtons buttons = MessageBoxButtons.YesNo;
                DialogResult result;
                result = MessageBox.Show(this, message, caption, buttons);
                if (result == DialogResult.Yes)
                    PhoneNote.RemoveAt(current);
                if (PhoneNote.Count == 1)
                {
                    current = 0;
                }
                PrintElement();
            }
        }
        

        class CompareByLastName : IComparer<Note>
        {
            #region IComparer<Note> Members
            public int Compare(Note x, Note y)
            {
                return string.Compare(x.LastName, y.LastName);
            }
            #endregion
        }


        class CompareByFlat : IComparer<Note>
        {
            #region IComparer<Note> Members

            public int Compare(Note x, Note y)
            {
                return x.Flat.CompareTo(y.Flat);
            }

            #endregion
        }

        class CompareByName : IComparer<Note>
        {
            #region IComparer<Note> Members
            public int Compare(Note x, Note y)
            {
                return string.Compare(x.Name, y.Name);
            }
            #endregion
        }

        class CompareByPatronymic : IComparer<Note>
        {
            #region IComparer<Note> Members
            public int Compare(Note x, Note y)
            {
                return string.Compare(x.Patronymic, y.Patronymic);
            }
            #endregion
        }
        class CompareByHouse : IComparer<Note>
        {
            #region IComparer<Note> Members

            public int Compare(Note x, Note y)
            {
                return x.Flat.CompareTo(y.House);
            }

            #endregion
        }

        class CompareByPhone : IComparer<Note>
        {
            #region IComparer<Note> Members
            public int Compare(Note x, Note y)
            {
                return string.Compare(x.Phone, y.Phone);
            }
            #endregion
        }
    }
}
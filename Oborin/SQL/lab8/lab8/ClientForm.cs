using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace lab8
{
    public partial class ClientForm : Form
    {
        private const string BASIC_SQL = "SELECT * FROM ";

        private string ConnectionString
        {
            get { return string.Format(@"Data Source={0};Initial Catalog=register;Integrated Security=True", txtServer.Text); }
        }

        private bool isSetChanged;
        private DataSet setPupils = new DataSet();
        private DataSet setMarks = new DataSet();

        public ClientForm()
        {
            InitializeComponent();
        }

        private void OnPupilsSelection(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            if (!isSetChanged)
            {
                try
                {
                    try
                    {
                        int id = (int)setPupils.Tables[0].Rows[gridPupils.SelectedIndex].ItemArray[0];
                        SqlConnection connection = new SqlConnection(ConnectionString);
                        try
                        {
                            connection.Open();
                            if (setMarks.Tables.Count > 0)
                            {
                                SaveMarks(connection);
                            }
                            string sql = BASIC_SQL + "mark WHERE pupilId = " + id;
                            var adapter = new SqlDataAdapter(sql, connection);
                            setMarks.Clear();
                            adapter.Fill(setMarks);
                            gridMarks.ItemsSource = setMarks.Tables[0].DefaultView;
                            gridMarks.Columns[0].IsReadOnly = true;
                        }
                        catch (SqlException ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                        finally
                        {
                            connection.Close();
                        }
                    }
                    catch (IndexOutOfRangeException)
                    {
                        setMarks.Clear();
                    }
                }
                catch (SystemException ex)
                {
                    MessageBox.Show(ex.Message);
                    isSetChanged = true;
                }
            }
        }

        private void OnBtnLoadClick(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConnectionString);
            try
            {
                connection.Open();
                string sql = string.IsNullOrWhiteSpace(txtFilter.Text) ? BASIC_SQL + "pupil" : BASIC_SQL + "pupil WHERE " + txtFilter.Text;
                var adapter = new SqlDataAdapter(sql, connection);
                setPupils.Clear();
                adapter.Fill(setPupils);
                isSetChanged = false;
                gridPupils.ItemsSource = setPupils.Tables[0].DefaultView;
                gridPupils.Columns[0].IsReadOnly = true;
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }

        private void OnBtnSaveClick(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConnectionString);
            try
            {
                connection.Open();
                SavePupils(connection);
                SaveMarks(connection);
                isSetChanged = false;
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                connection.Close();
            }
        }

        private void SavePupils(SqlConnection connection)
        {
            var adapter = new SqlDataAdapter(BASIC_SQL + "pupil", connection);

            adapter.InsertCommand = new SqlCommand("CreatePupil", connection);
            adapter.InsertCommand.CommandType = CommandType.StoredProcedure;
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@Firstname", SqlDbType.NVarChar, 20, "Firstname"));
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@Lastname", SqlDbType.NVarChar, 20, "Lastname"));
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@Class", SqlDbType.Int, 0, "Class"));
            SqlParameter parameter = adapter.InsertCommand.Parameters.Add("@Id", SqlDbType.Int, 0, "Id");
            parameter.Direction = ParameterDirection.Output;

            adapter.UpdateCommand = new SqlCommand("UpdatePupil", connection);
            adapter.UpdateCommand.CommandType = CommandType.StoredProcedure;
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, "Id"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Firstname", SqlDbType.NVarChar, 20, "Firstname"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Lastname", SqlDbType.NVarChar, 20, "Lastname"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Class", SqlDbType.Int, 0, "Class"));

            adapter.DeleteCommand = new SqlCommand("DeletePupil", connection);
            adapter.DeleteCommand.CommandType = CommandType.StoredProcedure;
            adapter.DeleteCommand.Parameters.Add("@Id", SqlDbType.Int, 0, "Id");

            adapter.Update(setPupils);
        }

        private void SaveMarks(SqlConnection connection)
        {
            var adapter = new SqlDataAdapter(BASIC_SQL + "mark", connection);

            adapter.InsertCommand = new SqlCommand("CreateMark", connection);
            adapter.InsertCommand.CommandType = CommandType.StoredProcedure;
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@Mark", SqlDbType.Int, 0, "Mark"));
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@Lesson", SqlDbType.Int, 0, "Lesson"));
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@Subject", SqlDbType.NVarChar, 20, "Subject"));
            adapter.InsertCommand.Parameters.Add(new SqlParameter("@PupilId", SqlDbType.Int, 0, "PupilId"));
            SqlParameter parameter = adapter.InsertCommand.Parameters.Add("@Id", SqlDbType.Int, 0, "Id");
            parameter.Direction = ParameterDirection.Output;

            adapter.UpdateCommand = new SqlCommand("UpdateMark", connection);
            adapter.UpdateCommand.CommandType = CommandType.StoredProcedure;
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, "Id"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Mark", SqlDbType.Int, 0, "Mark"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Lesson", SqlDbType.Int, 0, "Lesson"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@Subject", SqlDbType.NVarChar, 20, "Subject"));
            adapter.UpdateCommand.Parameters.Add(new SqlParameter("@PupilId", SqlDbType.Int, 0, "PupilId"));

            adapter.DeleteCommand = new SqlCommand("DeleteMark", connection);
            adapter.DeleteCommand.CommandType = CommandType.StoredProcedure;
            adapter.DeleteCommand.Parameters.Add("@Id", SqlDbType.Int, 0, "Id");

            adapter.Update(setMarks);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Training.Classes;
using Training.Controls;

namespace Training.Windows
{
    public partial class Main : Window
    {
        public Main()
        {
            InitializeComponent();
        }

        internal void Load_data()
        {
            list.Children.Clear();
            using (SqlConnection connection = new SqlConnection(Connection.String))
            {
                connection.Open();
                SqlCommand command = new SqlCommand($@"SELECT AgentType.Title, 
                                                              Agent.Title AS Expr1, 
                                                              ProductSale.ProductCount, 
                                                              Agent.Phone, 
                                                              Agent.Priority,
                                                              Agent.Logo,
                                                              Agent.ID,
                                                              Agent.Address,
                                                              Agent.INN,
                                                              Agent.KPP,
                                                              Agent.DirectorName,
                                                              Agent.Email
                                                         FROM Agent INNER JOIN
                                                              AgentType ON Agent.AgentTypeID = AgentType.ID INNER JOIN
                                                              ProductSale ON Agent.ID = ProductSale.AgentID ", connection);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        GayControl Artyom = new GayControl();
                        Artyom.Type.Content = reader[0];
                        Artyom.Name.Content = reader[1];
                        Artyom.ProductCount.Content = reader[2];
                        Artyom.Phone.Content = reader[3];
                        Artyom.Priority.Content = reader[4];
                        Artyom.Logo.Source = new BitmapImage(new Uri(Directory.GetCurrentDirectory() + "\\" + reader[5].ToString()));
                        Artyom.ID.Content = reader[6];
                        Artyom.Adress.Content = reader[7];
                        Artyom.INN.Content = reader[8];
                        Artyom.KPP.Content = reader[9];
                        Artyom.DirectorName.Content = reader[10];
                        Artyom.Email.Content = reader[11];
                        //Artyom.Main = this;
                        list.Children.Add(Artyom);
                    }
                }
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Edit op = new Edit();
            op.Main = this;
            op.Show();
            this.Hide();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Load_data();
        }
    }
}

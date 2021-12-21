using System;
using System.Collections.Generic;
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

namespace Abonents
{
    /// <summary>
    /// Логика взаимодействия для FormConversationLog.xaml
    /// </summary>
    public partial class FormConversationLog : Window
    {
        public FormConversationLog()
        {
            InitializeComponent();
        }

        private void btnBackToForm_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAddAbonent_Click(object sender, RoutedEventArgs e)
        {
            FormConversation formConversation = new FormConversation();
            formConversation.Show();
        }

        private void btnChangeAbonent_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDeleteAbonent_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}

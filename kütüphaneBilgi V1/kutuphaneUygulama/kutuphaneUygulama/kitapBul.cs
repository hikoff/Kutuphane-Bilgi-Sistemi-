using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace kutuphaneUygulama
{
    public partial class kitapBul : Form
    {
        public kitapBul()
        {
            InitializeComponent();
        }

        private void kitapBul_Load(object sender, EventArgs e)
        {
            dataGridView1.AllowUserToResizeColumns = false;
            dataGridView1.AllowUserToResizeRows = false;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
          

            int sayfaSay = 0;
            string KitapIs = null;
            bool Faz=false;
            bool Az = false;
            bool kontrol = false;

            try
            {
                if (textBox1.Text == "" && textBox2.Text == "")
                {
                    MessageBox.Show("Lütfen Değerleri Girin");

                }
                else if (textBox2.Text == "")
                {
                    KitapIs = textBox1.Text;
                    kontrol = true;
                }
                else if (textBox1.Text == "")
                {
                    sayfaSay = Convert.ToInt32(textBox2.Text);
                    kontrol = true;
                }
                else
                {
                    KitapIs = textBox1.Text;
                    sayfaSay = Convert.ToInt32(textBox2.Text);
                    kontrol = true;
                }

                if (kontrol == true && checkBox1.Checked == false && checkBox2.Checked == false)
                {
                    MessageBox.Show("Lütfen değer seç");
                }
                else if (kontrol == true && checkBox1.Checked == true && checkBox2.Checked == true)
                {
                    MessageBox.Show("Hadi ama");
                }
                else if (kontrol == true && checkBox1.Checked == true)
                {
                    Faz = true;
                }
                else if (kontrol == true && checkBox2.Checked == true)
                {
                    Az = true;
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
            
            





        }
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace kutuphaneUygulama
{
    public partial class Kllanicilar : Form
    {
        public Kllanicilar()
        {
            InitializeComponent();
        }
        SqlConnection Baglanti = new SqlConnection("server=.\\SQLEXPRESS; Initial Catalog=kutupHane;Integrated Security=SSPI");
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Kllanicilar_Load(object sender, EventArgs e)
        {
            dataGridView1.AllowUserToResizeColumns = false;
            dataGridView1.AllowUserToResizeRows = false;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
            dataGridView1.RowHeadersVisible = false;
            kullaniciGetir();
        }

        public void kullaniciGetir()
        {
            SqlDataAdapter dr = new SqlDataAdapter("select *from kullaniciBilgi", Baglanti);
            DataSet dataSet = new DataSet();

            try
            {
                Baglanti.Open();
                dr.Fill(dataSet, "kullaniciBilgi");
                dataGridView1.DataSource = dataSet.Tables["kullaniciBilgi"];
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata! | " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }



        }


        private void button1_Click(object sender, EventArgs e)
        {
            try
            {

                Baglanti.Open();
                SqlCommand komut = new SqlCommand("insert into kullaniciBilgi (kullaniciIsimSoyIsim,kullaniciAd,kullaniciSifre,kullaniciTelefon)  values (@kullaniciIsimSoyIsim,@kullaniciAd,@kullaniciSifre,@kullaniciTelefon)", Baglanti);
                komut.Parameters.AddWithValue("@kullaniciIsimSoyIsim", textBox1.Text);
                komut.Parameters.AddWithValue("@kullaniciAd", textBox2.Text);
                komut.Parameters.AddWithValue("@kullaniciSifre", textBox3.Text);
                komut.Parameters.AddWithValue("@kullaniciTelefon", textBox4.Text);

                komut.ExecuteNonQuery();


                MessageBox.Show("Ekleme İşlemi Gerçekleşti.");
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            finally
            {

                Baglanti.Close();
                dataGridView1.DataSource = null;
                kullaniciGetir();
            }
        }

        private void dataGridView1_ColumnAdded(object sender, DataGridViewColumnEventArgs e)
        {
            e.Column.SortMode = DataGridViewColumnSortMode.NotSortable;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string sil = Convert.ToString(dataGridView1.CurrentRow.Cells[0].Value);

            try
            {
                Baglanti.Open();
                SqlCommand komut = new SqlCommand("delete from kullaniciBilgi where kullanciId='" + sil + "'", Baglanti);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(komut);
                da.Fill(ds, "kullaniciBilgi");
                dataGridView1.DataSource = ds.Tables["kullaniciBilgi"];
                
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
                dataGridView1.DataSource = null;
                kullaniciGetir();


            }
        }
    }
}

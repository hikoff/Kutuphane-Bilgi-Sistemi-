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
        SqlConnection Baglanti = new SqlConnection("server=.\\SQLEXPRESS; Initial Catalog=kutupHane;Integrated Security=SSPI");
        bool kontrol = false;
        private void kitapBul_Load(object sender, EventArgs e)
        {


            dataGridView1.AllowUserToResizeColumns = false;
            dataGridView1.AllowUserToResizeRows = false;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
            dataGridView1.RowHeadersVisible = false;


            if (kontrol==false)
            {
                kitapTur_Combo();
                yayinList_Combo();
                yazarList_Combo();
                kontrol=true;
            }
            


           

        }

        public void kitapTur_Combo()
        {
            try
            {
                SqlCommand komut = new SqlCommand("SELECT*FROM kitapTur", Baglanti);

                SqlDataReader dr;

                Baglanti.Open();

                dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    comboBox2.Items.Add(dr["turIsim"]);
                }

                
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }
        public void yayinList_Combo()
        {
            try
            {
                SqlCommand komut = new SqlCommand("SELECT*FROM yayinList", Baglanti);

                SqlDataReader dr;

                Baglanti.Open();

                dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    comboBox3.Items.Add(dr["yayIsim"]);
                }

                
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }
        public void yazarList_Combo()
        {
            try
            {
                SqlCommand komut = new SqlCommand("SELECT*FROM yazarList", Baglanti);

                SqlDataReader dr;

                Baglanti.Open();

                dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    comboBox1.Items.Add(dr["yazarIsim"]);
                }

                
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
        
       

        

      

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string yaz = comboBox1.Text;
            string tur = comboBox2.Text;
            string yay=comboBox3.Text;
            try
            {
                if (   comboBox1.Text!=""&&comboBox2.Text==""&&comboBox3.Text=="")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where yazarIsim=@yazarIsim", Baglanti);
                    komut.Parameters.AddWithValue("@yazarIsim", yaz);

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                else if (comboBox1.Text != "" && comboBox2.Text != "" && comboBox3.Text == "")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where yazarIsim=@yazarIsim and turIsim=@turIsim", Baglanti);
                    komut.Parameters.AddWithValue("@yazarIsim", yaz);
                    komut.Parameters.AddWithValue("@turIsim", tur);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                else if (comboBox1.Text != "" && comboBox2.Text != "" && comboBox3.Text != "")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where yazarIsim=@yazarIsim and turIsim=@turIsim and yayIsim=@yayIsim", Baglanti);
                    komut.Parameters.AddWithValue("@yazarIsim", yaz);
                    komut.Parameters.AddWithValue("@turIsim", tur);
                    komut.Parameters.AddWithValue("@yayIsim", yay);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                else if (comboBox1.Text == "" && comboBox2.Text != "" && comboBox3.Text == "")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where turIsim=@turIsim", Baglanti);
                    komut.Parameters.AddWithValue("@turIsim", tur);

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                else if (comboBox1.Text == "" && comboBox2.Text != "" && comboBox3.Text != "")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where turIsim=@turIsim and yayIsim=@yayIsim", Baglanti);
                    komut.Parameters.AddWithValue("@turIsim", tur);
                    komut.Parameters.AddWithValue("@yayIsim", yay);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                else if (comboBox1.Text == "" && comboBox2.Text == "" && comboBox3.Text != "")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where yayIsim=@yayIsim", Baglanti);
                    komut.Parameters.AddWithValue("@yayIsim", yay);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                else if (comboBox1.Text != "" && comboBox2.Text == "" && comboBox3.Text != "")
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where like yazarIsim=@yazarIsim and yayIsim=@yayIsim", Baglanti);
                    komut.Parameters.AddWithValue("@yayIsim", yay);
                    komut.Parameters.AddWithValue("@yazarIsim", yaz);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }



            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);

            }
            finally
            {
                Baglanti.Close();
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            comboBox1.SelectedItem= null;
            comboBox2.SelectedItem = null;
            comboBox3.SelectedItem = null;
            dataGridView1.DataSource= null;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
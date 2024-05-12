using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace kutuphaneUygulama
{
    public partial class Cikar : Form
    {
        public Cikar()
        {
            InitializeComponent();
        }
        SqlConnection Baglanti = new SqlConnection("server=.\\SQLEXPRESS; Initial Catalog=kutupHane;Integrated Security=SSPI");
        bool kontrol = false;
        private void Cikar_Load(object sender, EventArgs e)
        {
            dataGridView1.AllowUserToResizeColumns = false;
            dataGridView1.AllowUserToResizeRows = false;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
            dataGridView1.RowHeadersVisible = false;
            kitapListele();
            checkBox1.Checked = true;


        }
        public void yazarList()
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter("select yazarIsim from yazarList", Baglanti);
            DataSet ds = new DataSet();

            try
            {

                Baglanti.Open();
                dataAdapter.Fill(ds, "yazarList");
                dataGridView1.DataSource = ds.Tables["yazarList"];
                dataGridView1.Columns[0].HeaderCell.Value = "Yazar";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Veri yükleme hatası: " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }

        public void yayList()
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter("select yayIsim from yayinList", Baglanti);
            DataSet ds = new DataSet();

            try
            {

                Baglanti.Open();
                
                dataAdapter.Fill(ds, "yayinList");
                dataGridView1.DataSource = ds.Tables["yayinList"];
                dataGridView1.Columns[0].HeaderCell.Value = "Yayın Evi";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Veri yükleme hatası: " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }

        public void turList()
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter("select turIsim from kitapTur", Baglanti);
            DataSet ds = new DataSet();

            try
            {

                Baglanti.Open();
                dataAdapter.Fill(ds, "kitapTur");
                dataGridView1.DataSource = ds.Tables["kitapTur"];
                dataGridView1.Columns[0].HeaderCell.Value = "Kitap Türü";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Veri yükleme hatası: " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }


        public void kitapListele()
        {

            SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil\r\n\r\nINNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId\r\nINNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId\r\nINNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId", Baglanti);
            DataSet ds = new DataSet();

            try
            {

                Baglanti.Open();
                dataAdapter.Fill(ds, "KitapBil");
                dataGridView1.DataSource = ds.Tables["KitapBil"];
            }
            catch (Exception ex)
            {
                MessageBox.Show("Veri yükleme hatası: " + ex.Message);
            }
            finally
            {
                Baglanti.Close();
            }
        }




        public void temizlik()
        {

            textBox1.Text = null;
            dataGridView1.DataSource = null;
            comboBox1.Text = null;
            checkBox2.Checked = false;
            checkBox1.Checked = true;
            comboBox1.Enabled = false;

        }


        private void textBox1_TextChanged(object sender, EventArgs e)
        {


            string value = textBox1.Text;

            if (textBox1.Text != "" && comboBox1.Enabled == false)
            {
                checkBox1.Checked = true;
                try
                {
                    Baglanti.Open();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("SELECT kitapAd, sayfaSayisi, yayIsim, yazarIsim, turIsim from kitapBil INNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId INNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId INNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId where kitapAd like '%" + value + "%'", Baglanti);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];


                }
                catch (Exception ex)
                {

                    MessageBox.Show("Test" + Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                }
            }
            else if (comboBox1.Text == "Yazar")

            {
                
    
                try
                {
                    Baglanti.Open();
                    
                    DataSet ds = new DataSet();

                    SqlDataAdapter da = new SqlDataAdapter("SELECT yazarIsim from yazarList where yazarIsim like'" + "%" + value + "%" + "'", Baglanti);
                    da.Fill(ds, "yazarList");
                    dataGridView1.DataSource = ds.Tables["yazarList"];


                }
                catch (Exception ex)
                {

                    MessageBox.Show("Test" + Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                }
            }

            else if (comboBox1.Text == "Yayın Evi")
            {

                try
                {
                    Baglanti.Open();
          
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("SELECT yayIsim from yayinList where yayIsim like'" + "%" + value + "%" + "'", Baglanti);
                    da.Fill(ds, "yayinList");
                    dataGridView1.DataSource = ds.Tables["yayinList"];


                }
                catch (Exception ex)
                {

                    MessageBox.Show("Test" + Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                }
            }
            else if (comboBox1.Text == "Kitap Türü")
            {

                try
                {
                    Baglanti.Open();
         
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("SELECT turIsim from kitapTur where turIsim like'" + "%" + value + "%" + "'", Baglanti);
                    da.Fill(ds, "kitapTur");
                    dataGridView1.DataSource = ds.Tables["kitapTur"];


                }
                catch (Exception ex)
                {

                    MessageBox.Show("Test" + Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                }
            }



        }

        private void button3_Click(object sender, EventArgs e)
        {
            temizlik();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true)
            {
                checkBox2.Checked = false;

            }
            else if (checkBox1.Checked == false && checkBox2.Checked == false)
            {
                kitapListele();
                comboBox1.Enabled = false;
                comboBox1.Text = null;
                checkBox1.Checked = true;
            }
            else if (checkBox1.Checked==false&&checkBox2.Checked==true)
            {
                dataGridView1.DataSource = null;
                textBox1.Text = null;
            }
            

        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked == true)
            {
                checkBox1.Checked = false;
                comboBox1.Enabled = true;
                textBox1.Text = null;
                comboBox1.Text = null;
            }
            else if (checkBox1.Checked == false && checkBox2.Checked == false)
            {
                kitapListele();
                comboBox1.Enabled = false;
                comboBox1.Text = null;
                checkBox1.Checked = true;
            }
            else if (checkBox1.Checked==true&&checkBox2.Checked==false)
            {
                comboBox1.Text = null;
                comboBox1.Enabled = false;
                dataGridView1.DataSource = null;
                textBox1.Text = null;
                kitapListele();
            }



        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (comboBox1.Text == "Yazar")
                {
                    textBox1.Text = null;
                    yazarList();

                }
                else if (comboBox1.Text == "Yayın Evi")
                {
                    textBox1.Text=null;
                    yayList();
                }
                else if (comboBox1.Text == "Kitap Türü")
                {
                    textBox1.Text = null;
                    turList();
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex)); ;
            }



        }

        private void button2_Click(object sender, EventArgs e)
        {
            string sil = Convert.ToString(dataGridView1.CurrentRow.Cells[0].Value);

            if (comboBox1.Enabled == false)
            {
                try
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("delete from KitapBil where kitapAd='"+sil+"'", Baglanti);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "KitapBil");
                    dataGridView1.DataSource = ds.Tables["KitapBil"];
                }
                catch (Exception ex)
                {

                    MessageBox.Show(Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                    kitapListele();
                    

                }
            }
            else if (comboBox1.Text=="Yazar") 
            {

                try
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("delete from yazarList where yazarIsim='" + sil + "'", Baglanti);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "yazarList");
                    dataGridView1.DataSource = ds.Tables["yazarList"];
                }
                catch (Exception ex)
                {

                    MessageBox.Show(Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                    yazarList();


                }
            }
            else if (comboBox1.Text == "Yayın Evi")
            {

                try
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("delete from yayinList where yayIsim='" + sil + "'", Baglanti);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "yayinList");
                    dataGridView1.DataSource = ds.Tables["yayinList"];
                }
                catch (Exception ex)
                {

                    MessageBox.Show(Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                    yayList();


                }
            }

            else if (comboBox1.Text == "Kitap Türü")
            {

                try
                {
                    Baglanti.Open();
                    SqlCommand komut = new SqlCommand("delete from kitapTur where turIsim='" + sil + "'", Baglanti);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    da.Fill(ds, "kitapTur");
                    dataGridView1.DataSource = ds.Tables["kitapTur"];
                }
                catch (Exception ex)
                {

                    MessageBox.Show(Convert.ToString(ex));
                }
                finally
                {
                    Baglanti.Close();
                    turList();


                }
            }
            textBox1.Text = null;










        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

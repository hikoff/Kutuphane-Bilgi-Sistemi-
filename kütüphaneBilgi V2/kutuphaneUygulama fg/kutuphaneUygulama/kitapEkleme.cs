using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace kutuphaneUygulama
{
    public partial class kitapEkleme : Form
    {
        public kitapEkleme()
        {
            InitializeComponent();
        }
       

        SqlConnection Baglanti = new SqlConnection("server=.\\SQLEXPRESS; Initial Catalog=kutupHane;Integrated Security=SSPI");
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

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

                Baglanti.Close();
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
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

                Baglanti.Close();
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
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

                Baglanti.Close();
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
            }
        }


        private void kitapEkleme_Load(object sender, EventArgs e)
        {
            label3.Text = "Uygulamamızda verileri İlişikisel \nveritabanında tuttuğumuzdan öncelikle yazar,\nyayın evi,kitap türü değerlerini veritabanına \nkaydetemeniz gerekiyor. sonrasında yeni kayıt \noluşturabileceksiniz.";
            comboBox2.Items.Clear();
            comboBox1.Items.Clear();
            comboBox3.Items.Clear();
           
            kitapTur_Combo();
            yayinList_Combo();
            yazarList_Combo();
           

           
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {
            
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            

        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            #region degerler
            string yazIs = comboBox1.Text;
            string kitapTur=comboBox2.Text;
            string yay=comboBox3.Text;
            int yazarId = 0;
            int yayId = 0;
            int tur = 0;
            #endregion 
            #region yazar
            try
            {
                SqlCommand komut = new SqlCommand("select * from yazarList where yazarIsim=@yazarIsim", Baglanti);   
                komut.Parameters.AddWithValue("@yazarIsim", yazIs);
                
                Baglanti.Open();

                object result=komut.ExecuteScalar();

                Baglanti.Close();

                if (result!=null)
                {
                    yazarId = Convert.ToInt32(result);
                    
                }
                else
                {
                    MessageBox.Show("Yazar yok");
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
            }
            #endregion
            #region kitaptür
            try
            {
                SqlCommand komut = new SqlCommand("select * from kitapTur where turIsim=@kitapTur", Baglanti);
                komut.Parameters.AddWithValue("@kitapTur", kitapTur);

                Baglanti.Open();

                object result = komut.ExecuteScalar();

                Baglanti.Close();

                if (result != null)
                {
                    tur = Convert.ToInt32(result);

                }
                else
                {
                    MessageBox.Show("tür yk");
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
            }
            #endregion
            #region yayinList
            try
            {
                SqlCommand komut = new SqlCommand("select * from yayinList where yayIsim=@yayIsim", Baglanti);
                komut.Parameters.AddWithValue("@yayIsim", yay);

                Baglanti.Open();

                object result = komut.ExecuteScalar();

                Baglanti.Close();

                if (result != null)
                {
                    yayId = Convert.ToInt32(result);
                    
                }
                else
                {
                    MessageBox.Show("Yazar yk");
                }
            }

            
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
            }
            #endregion
            #region kitapKaydet
            try
            {

                DataSet ds = new DataSet();
                Baglanti.Open();

                string kayit = "insert into kitapBil(kitapAd,sayfaSayisi,yazarId,yayId,turId) values (@kitapAd,@sayfaSayisi,@yazarId,@yayId,@kitapTur)";
                SqlCommand komut = new SqlCommand(kayit, Baglanti);
                komut.Parameters.AddWithValue("@kitapAd", textBox1.Text);
                komut.Parameters.AddWithValue("@yazarId", yazarId);
                komut.Parameters.AddWithValue("@sayfaSayisi",textBox4.Text);
                komut.Parameters.AddWithValue("@kitapTur", tur);
                komut.Parameters.AddWithValue("@yayId", yayId);

                komut.ExecuteNonQuery();

                Baglanti.Close();
                MessageBox.Show("Kitap Ekleme İşlemi Gerçekleşti.");
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
            }
            #endregion

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand(("insert into yazarList(yazarIsim) values(@yazarIsim)"), Baglanti);
                Baglanti.Open();
                komut.Parameters.AddWithValue("yazarIsim", textBox3.Text);
                komut.ExecuteNonQuery();
                Baglanti.Close();
                MessageBox.Show("Başarıyla Eklendi");
                comboBox1.Items.Clear();
                yazarList_Combo();

            }
            catch (Exception ex)
            {
                Baglanti.Close();
                MessageBox.Show(Convert.ToString(ex));
            }
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand(("insert into kitapTur(turIsim) values (@turIsim)"),Baglanti);
                Baglanti.Open();
                komut.Parameters.AddWithValue("@turIsim", textBox5.Text);
                komut.ExecuteNonQuery();
                Baglanti.Close();
                MessageBox.Show("Başarıyla Eklendi");
                comboBox2.Items.Clear();
                kitapTur_Combo();
            }
            catch (Exception ex)
            {
                Baglanti.Close();
                MessageBox.Show(Convert.ToString(ex));
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand(("insert into yayinList(yayIsim) values (@yayIsim)"), Baglanti);
                Baglanti.Open();
                komut.Parameters.AddWithValue("@yayIsim", textBox6.Text);
                komut.ExecuteNonQuery();
                Baglanti.Close();
                MessageBox.Show("Başarıyla Eklendi");
                comboBox3.Items.Clear();
                yayinList_Combo();
            }
            catch (Exception ex)
            {

                Baglanti.Close();
                MessageBox.Show(Convert.ToString(ex));
            }
            
           
        }

        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Text = null;
            textBox4.Text = null;
            comboBox1.Text = null;
            comboBox2.Text = null;
            comboBox3.Text = null;
        }
    }
}

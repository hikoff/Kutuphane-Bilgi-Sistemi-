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

namespace kutuphaneUygulama
{
    public partial class kullaniciGiris : Form
    {
        public kullaniciGiris()
        {
            InitializeComponent();
        }
        SqlConnection Baglanti = new SqlConnection("server=.\\SQLEXPRESS; Initial Catalog=kutupHane;Integrated Security=SSPI");
        Yonetici yonetici=new Yonetici();
        kullanici kullan =new kullanici();
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked==false)
            {
                label1.Text = "Kullanıcı Ad =";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string kullanici = textBox1.Text;
            string sifre = textBox2.Text;
            try
            {
                if (radioButton1.Checked == true)
                {
                    try
                    {
                        Baglanti.Open();
                        SqlCommand kmt = new SqlCommand("select kullaniciAd,kullaniciSifre from kullaniciBilgi where kullaniciAd='" + kullanici + "' and kullaniciSifre='" + sifre + "'", Baglanti);
                        SqlDataReader dr = kmt.ExecuteReader();
                        if (dr.Read())
                        {
                            MessageBox.Show("Giriş Başarılı");
                            this.Close();
                            kullan.ShowDialog();
                        }
                        else
                        {
                            MessageBox.Show("Giriş Başarısız.");
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
                else if (radioButton2.Checked == true)
                {
                    try
                    {
                        Baglanti.Open();
                        SqlCommand kmt = new SqlCommand("select yoneticiAd,yoneticiSifre from yoneticiBilgi where yoneticiAd='" + kullanici + "' and yoneticiSifre='" + sifre + "'", Baglanti);
                        SqlDataReader dr = kmt.ExecuteReader();
                        if (dr.Read())
                        {
                            MessageBox.Show("Giriş Başarılı");
                            this.Close();
                            yonetici.ShowDialog();
                        }
                        else
                        {
                            MessageBox.Show("Giriş Başarısız.");
                        }
                    }
                    catch (Exception ex)
                    {

                        MessageBox.Show("Hata!! | " + ex.Message) ;
                    }
                    finally
                    {
                        Baglanti.Close();

                    }

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            finally
            {
                textBox1.Text = null;
                textBox2.Text = null;
            }
            
           
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked==true)
            {
                label1.Text = "Yönetici Ad =";
            }
        }

        private void kullaniciGiris_Load(object sender, EventArgs e)
        {
            radioButton1.Checked = true;
            checkBox1.Checked = false;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked==true&&textBox2.PasswordChar=='*')
            {
                textBox2.PasswordChar = '\0';
                checkBox1.Text = "Şifre Gizle";
            }
           else if (checkBox1.Checked == false && textBox2.PasswordChar == '\0')
            {
                textBox2.PasswordChar = '*';
                checkBox1.Text = "Şifre Göster";
            }
        }
    }
}

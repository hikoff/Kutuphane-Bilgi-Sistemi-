using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace kutuphaneUygulama
{
    public partial class Yonetici : Form
    {
        public Yonetici()
        {
            InitializeComponent();
        }
        arsivListele arsiv=new arsivListele();
        kitapEkleme ekle=new kitapEkleme();
        Cikar sil=new Cikar();
        Kllanicilar kullaniciEkle=new Kllanicilar();

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                ekle.ShowDialog();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                arsiv.ShowDialog();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                sil.ShowDialog();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                kullaniciEkle.ShowDialog();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
            
        }

        private void Yonetici_Load(object sender, EventArgs e)
        {

        }

        private void Yonetici_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}

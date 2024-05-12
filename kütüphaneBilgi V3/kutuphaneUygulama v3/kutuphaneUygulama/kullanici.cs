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
    public partial class kullanici : Form
    {
        public kullanici()
        {
            InitializeComponent();
        }

        arsivListele arsiv=new arsivListele();
        kitapBul  bul = new kitapBul();

        private void kullanici_Load(object sender, EventArgs e)
        {

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
                bul.ShowDialog();

            }
            catch (Exception ex)
            {

                MessageBox.Show("Hata!! | " + ex.Message);
            }
        
        }

        private void kullanici_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}

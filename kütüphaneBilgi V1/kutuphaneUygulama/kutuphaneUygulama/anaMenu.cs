using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;


namespace kutuphaneUygulama
{
    public partial class anaMenu : Form
    {
        public anaMenu()
        {
            InitializeComponent();
            this.IsMdiContainer = true;
        }

        arsivListele arsiv = new arsivListele();
        kitapEkleme kitap=new kitapEkleme();
        kitapBul bul= new kitapBul();
      

    
        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Interval = 1000;
            
            timer1.Enabled = true;
            timer2.Interval = 3000;
            timer2.Enabled = true;
            pictureBox1.Image = ımageList1.Images[0];
        }

        int i = 0;



        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                arsiv.Show();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Nesneye Erişilmiyor lütfen programı tekrar başlatın!");
            }




           
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                kitap.Show();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Nesneye Erişilmiyor lütfen programı tekrar başlatın!");
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            i++;
            if (i == 6)
            {
                i = 0;
            }
            pictureBox1.Image = ımageList1.Images[i];
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text = DateTime.Now.ToString();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                bul.Show();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Nesneye Erişilmiyor lütfen programı tekrar başlatın!");
            }
        }
    }
}

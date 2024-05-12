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
    public partial class arsivListele : Form
    {
        public arsivListele()
        {
            InitializeComponent();
        }

        private void arsivListele_Load(object sender, EventArgs e)
        {
            anaMenu anaMenu = new anaMenu();
            kitapListele();
            dataGridView1.AllowUserToResizeColumns = false;
            dataGridView1.AllowUserToResizeRows = false;
            dataGridView1.SelectionMode= DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;

        }
        public void kitapListele()
        {
            
            SqlConnection Baglanti = new SqlConnection("server=DESKTOP-I45OCQM\\SQLEXPRESS; Initial Catalog=kutupHane;Integrated Security=SSPI");
            SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT kitapAd,sayfaSayisi,yayIsim,yazarIsim,turIsim from kitapBil\r\n\r\nINNER JOIN yayinList y1 ON KitapBil.yayId = y1.yayId\r\nINNER JOIN yazarList y2 ON KitapBil.yazarId = y2.yazarId\r\nINNER JOIN kitapTur k1 ON KitapBil.turId = k1.turId", Baglanti);
            DataSet ds = new DataSet();



            try
            {

                Baglanti.Open();
                dataAdapter.Fill(ds, "KitapBil");
                dataGridView1.DataSource= ds.Tables["KitapBil"];
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

        private void dataGridView1_ColumnAdded(object sender, DataGridViewColumnEventArgs e)
        {
            e.Column.SortMode = DataGridViewColumnSortMode.NotSortable;
        }

        private void dataGridView1_AllowUserToResizeRowsChanged(object sender, EventArgs e)
        {
            
        }

        private void dataGridView1_AllowUserToResizeColumnsChanged(object sender, EventArgs e)
        {
            
        }
    }
}

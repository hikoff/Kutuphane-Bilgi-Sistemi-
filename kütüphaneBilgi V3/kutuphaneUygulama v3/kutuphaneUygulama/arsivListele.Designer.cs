namespace kutuphaneUygulama
{
    partial class arsivListele
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(arsivListele));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.kitapAd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sayfaSayisi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.yayIsim = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.yazarIsim = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.turIsim = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCellsExceptHeaders;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(167)))), ((int)(((byte)(146)))), ((int)(((byte)(119)))));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.kitapAd,
            this.sayfaSayisi,
            this.yayIsim,
            this.yazarIsim,
            this.turIsim});
            this.dataGridView1.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(167)))), ((int)(((byte)(146)))), ((int)(((byte)(119)))));
            this.dataGridView1.Location = new System.Drawing.Point(-1, 1);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(803, 451);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.AllowUserToResizeColumnsChanged += new System.EventHandler(this.dataGridView1_AllowUserToResizeColumnsChanged);
            this.dataGridView1.AllowUserToResizeRowsChanged += new System.EventHandler(this.dataGridView1_AllowUserToResizeRowsChanged);
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            this.dataGridView1.ColumnAdded += new System.Windows.Forms.DataGridViewColumnEventHandler(this.dataGridView1_ColumnAdded);
            // 
            // kitapAd
            // 
            this.kitapAd.DataPropertyName = "kitapAd";
            this.kitapAd.HeaderText = "Kitap Adı";
            this.kitapAd.Name = "kitapAd";
            // 
            // sayfaSayisi
            // 
            this.sayfaSayisi.DataPropertyName = "sayfaSayisi";
            this.sayfaSayisi.HeaderText = "Sayfa Sayısı";
            this.sayfaSayisi.Name = "sayfaSayisi";
            // 
            // yayIsim
            // 
            this.yayIsim.DataPropertyName = "yayIsim";
            this.yayIsim.HeaderText = "Yayın Evi";
            this.yayIsim.Name = "yayIsim";
            // 
            // yazarIsim
            // 
            this.yazarIsim.DataPropertyName = "yazarIsim";
            this.yazarIsim.HeaderText = "Yazar";
            this.yazarIsim.Name = "yazarIsim";
            // 
            // turIsim
            // 
            this.turIsim.DataPropertyName = "turIsim";
            this.turIsim.HeaderText = "Kitap Türü";
            this.turIsim.Name = "turIsim";
            // 
            // arsivListele
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(167)))), ((int)(((byte)(146)))), ((int)(((byte)(119)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "arsivListele";
            this.Text = "Kitap Listele";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.arsivListele_FormClosing);
            this.Load += new System.EventHandler(this.arsivListele_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn kitapAd;
        private System.Windows.Forms.DataGridViewTextBoxColumn sayfaSayisi;
        private System.Windows.Forms.DataGridViewTextBoxColumn yayIsim;
        private System.Windows.Forms.DataGridViewTextBoxColumn yazarIsim;
        private System.Windows.Forms.DataGridViewTextBoxColumn turIsim;
    }
}
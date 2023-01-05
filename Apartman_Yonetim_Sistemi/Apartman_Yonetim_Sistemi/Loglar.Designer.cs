namespace Apartman_Yonetim_Sistemi
{
    partial class Loglar
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
            this.components = new System.ComponentModel.Container();
            this.textBox15 = new System.Windows.Forms.TextBox();
            this.label26 = new System.Windows.Forms.Label();
            this.dataGridView7 = new System.Windows.Forms.DataGridView();
            this.apartmanDataSet = new Apartman_Yonetim_Sistemi.apartmanDataSet();
            this.loggBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.loggTableAdapter = new Apartman_Yonetim_Sistemi.apartmanDataSetTableAdapters.loggTableAdapter();
            this.islemDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ipDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tcDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.aciklamaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tarihDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.apartmanDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.loggBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // textBox15
            // 
            this.textBox15.BackColor = System.Drawing.Color.Azure;
            this.textBox15.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.55F);
            this.textBox15.Location = new System.Drawing.Point(588, 24);
            this.textBox15.Name = "textBox15";
            this.textBox15.Size = new System.Drawing.Size(94, 24);
            this.textBox15.TabIndex = 23;
            this.textBox15.TextChanged += new System.EventHandler(this.textBox15_TextChanged);
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.55F);
            this.label26.ForeColor = System.Drawing.Color.DarkCyan;
            this.label26.Location = new System.Drawing.Point(539, 24);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(51, 18);
            this.label26.TabIndex = 22;
            this.label26.Text = "Arama";
            // 
            // dataGridView7
            // 
            this.dataGridView7.AutoGenerateColumns = false;
            this.dataGridView7.BackgroundColor = System.Drawing.Color.Azure;
            this.dataGridView7.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView7.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.islemDataGridViewTextBoxColumn,
            this.ipDataGridViewTextBoxColumn,
            this.tcDataGridViewTextBoxColumn,
            this.aciklamaDataGridViewTextBoxColumn,
            this.tarihDataGridViewTextBoxColumn});
            this.dataGridView7.DataSource = this.loggBindingSource;
            this.dataGridView7.Location = new System.Drawing.Point(65, 50);
            this.dataGridView7.Name = "dataGridView7";
            this.dataGridView7.RowHeadersWidth = 51;
            this.dataGridView7.Size = new System.Drawing.Size(617, 354);
            this.dataGridView7.TabIndex = 21;
            // 
            // apartmanDataSet
            // 
            this.apartmanDataSet.DataSetName = "apartmanDataSet";
            this.apartmanDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // loggBindingSource
            // 
            this.loggBindingSource.DataMember = "logg";
            this.loggBindingSource.DataSource = this.apartmanDataSet;
            // 
            // loggTableAdapter
            // 
            this.loggTableAdapter.ClearBeforeFill = true;
            // 
            // islemDataGridViewTextBoxColumn
            // 
            this.islemDataGridViewTextBoxColumn.DataPropertyName = "islem";
            this.islemDataGridViewTextBoxColumn.HeaderText = "islem";
            this.islemDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.islemDataGridViewTextBoxColumn.Name = "islemDataGridViewTextBoxColumn";
            this.islemDataGridViewTextBoxColumn.Width = 125;
            // 
            // ipDataGridViewTextBoxColumn
            // 
            this.ipDataGridViewTextBoxColumn.DataPropertyName = "ip";
            this.ipDataGridViewTextBoxColumn.HeaderText = "ip";
            this.ipDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.ipDataGridViewTextBoxColumn.Name = "ipDataGridViewTextBoxColumn";
            this.ipDataGridViewTextBoxColumn.Width = 125;
            // 
            // tcDataGridViewTextBoxColumn
            // 
            this.tcDataGridViewTextBoxColumn.DataPropertyName = "tc";
            this.tcDataGridViewTextBoxColumn.HeaderText = "tc";
            this.tcDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.tcDataGridViewTextBoxColumn.Name = "tcDataGridViewTextBoxColumn";
            this.tcDataGridViewTextBoxColumn.Width = 125;
            // 
            // aciklamaDataGridViewTextBoxColumn
            // 
            this.aciklamaDataGridViewTextBoxColumn.DataPropertyName = "aciklama";
            this.aciklamaDataGridViewTextBoxColumn.HeaderText = "aciklama";
            this.aciklamaDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.aciklamaDataGridViewTextBoxColumn.Name = "aciklamaDataGridViewTextBoxColumn";
            this.aciklamaDataGridViewTextBoxColumn.Width = 125;
            // 
            // tarihDataGridViewTextBoxColumn
            // 
            this.tarihDataGridViewTextBoxColumn.DataPropertyName = "tarih";
            this.tarihDataGridViewTextBoxColumn.HeaderText = "tarih";
            this.tarihDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.tarihDataGridViewTextBoxColumn.Name = "tarihDataGridViewTextBoxColumn";
            this.tarihDataGridViewTextBoxColumn.Width = 125;
            // 
            // Loglar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(768, 428);
            this.Controls.Add(this.textBox15);
            this.Controls.Add(this.label26);
            this.Controls.Add(this.dataGridView7);
            this.Font = new System.Drawing.Font("Verdana", 8.25F);
            this.Name = "Loglar";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Loglar";
            this.Load += new System.EventHandler(this.Loglar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.apartmanDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.loggBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox15;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.DataGridView dataGridView7;
        private apartmanDataSet apartmanDataSet;
        private System.Windows.Forms.BindingSource loggBindingSource;
        private apartmanDataSetTableAdapters.loggTableAdapter loggTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn islemDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ipDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tcDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn aciklamaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tarihDataGridViewTextBoxColumn;
    }
}
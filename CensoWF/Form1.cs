﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CensoWF
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'SCDataSet.Censo' Puede moverla o quitarla según sea necesario.
            this.CensoTableAdapter.Fill(this.SCDataSet.Censo);

            this.reportViewer1.RefreshReport();
        }
    }
}

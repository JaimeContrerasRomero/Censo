using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Censo
{
    public partial class Default : System.Web.UI.Page
    {
        db db = new db();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void finish_Click(object sender, EventArgs e)
        {
            try
            {
                Censo c = new Censo();
                c.IdCenso = 0;
                c.FotoT = this.wizardpicture.HasFile && this.wizardpicture.PostedFile.ContentLength > 0 ? this.Imagen(this.wizardpicture) : null;
                c.NombreT = this.txtNombreTutor.Text.Trim();
                c.EdadT = this.txtEdad.Text.Trim();
                c.SexoT = this.cboSexo.SelectedItem.Text;
                c.TelefonoT = this.txtTelefono.Text.Trim();
                c.CelularT = this.txtCelular.Text.Trim();
                c.EmailT = this.txtEmail.Text.Trim();
                c.DomicilioT = this.txtDomicilio.Text.Trim();
                c.EstadoCivilT = this.cboEstadoCivil.SelectedItem.Text;
                c.HijosT = this.txtNoHijos.Text.Trim();
                c.EdadHijos = this.txtEdadHijos.Text.Trim();
                c.ActividadT = this.txtActividad.Text.Trim();
                c.HorarioT = this.txtHorarioTrabajo.Text.Trim();
                c.EnfermedadT = this.txtEnfermedad.Text.Trim();
                c.FotoD = this.wizardpicture1.HasFile && this.wizardpicture1.PostedFile.ContentLength > 0 ? this.Imagen(this.wizardpicture1) : null;
                c.NombreD = this.txtNombreD.Text.Trim();
                c.PrimerApellidoD = this.txtPrimerApellidoD.Text.Trim();
                c.SegundoApellidoD = this.txtSegundoApellidoD.Text.Trim();
                c.FechaNacD = DateTime.Parse(this.txtFechaNacimientoD.Text);
                c.SexoD = this.cboSexoD.SelectedItem.Text;
                c.InstitucionD = this.txtInstSegSocialD.Text.Trim();
                c.DiscapacidadD = this.cboDiscapacidadD.Text.Trim();
                c.DiscapacidadOtraD = this.txtOtroDiscapacidadD.Text.Trim();
                c.PadecimientoD = this.cboPadecimientoD.SelectedItem.Text;
                c.PadecimientoOtroD = this.txtOtroTranstornoD.Text.Trim();
                c.RevisionD = this.txtRevisionMeidcaD.Text.Trim();
                c.TerapiaD = this.cboTerapiaD.SelectedItem.Text;
                c.TerapiaRecibeD = this.txtTerapiaD.Text.Trim();
                c.TerapiaEducativaD = this.cboTerapiaEducativaD.SelectedItem.Text;
                c.EscuelaD = this.txtEscuelaTerapia.Text.Trim();
                c.ApoyoSocialD = this.cboApoyoD.SelectedItem.Text;
                c.CualApoyo = this.txtApoyoD.Text.Trim();
                c.Actividades = this.cboActividades.SelectedItem.Text;
                c.OtraActividad = this.txtOtraActividad.Text.Trim();
                c.PlaticaHigiene = this.cboPlatica.SelectedItem.Text;
                c.PlaticaSexual = this.cboEducacionSexual.SelectedItem.Text;
                c.Trabajar = this.cboEmpresa.SelectedItem.Text;
                int i = db.InsertAspirtante(c);

                if(i != 0)
                {
                    Response.Redirect("~/Gracias.aspx", false);
                }
                else
                {
                    Response.Redirect("~/Error.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Error.aspx", false);
            }
        }

        private Byte[] Imagen(FileUpload fu)
        {
            Stream fsimagen = fu.PostedFile.InputStream;
            BinaryReader brImagen = new BinaryReader(fsimagen);
            Byte[] bytesImagen = brImagen.ReadBytes((Int32)fsimagen.Length);
            return Resize(bytesImagen, 100, 100);
        }

        protected virtual byte[] Resize(byte[] data, int width, int height)
        {
            var inStream = new MemoryStream(data);
            var outStream = new MemoryStream();

            var bmp = System.Drawing.Bitmap.FromStream(inStream);
            var th = bmp.GetThumbnailImage(width, height, null, IntPtr.Zero);
            th.Save(outStream, System.Drawing.Imaging.ImageFormat.Jpeg);
            return outStream.ToArray();
        }
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class SubirDescargar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarDatos();
        }

        public void mostrarDatos()
        {
            string path = $"{Server.MapPath(".")}/files";
            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);
                List<Archivo> fileList = new List<Archivo>();
                foreach (string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                bool val = false;
                string result = string.Empty;
                string path = $"{Server.MapPath(".")}/files";
                if(Directory.Exists(path))
                {
                    foreach(HttpPostedFile archivo in FileUpload1.PostedFiles)
                    {
                        if(archivo.ContentLength < 1000)
                        {
                            FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                            result += $"El archivo {archivo.FileName} se agrego correctamente";
                        }
                        else
                        {
                            result += $"El archivo {archivo.FileName} supera los 1000b";
                        }
                        
                    }
                    Label1.Text = result;
                    mostrarDatos();
                }
                else
                {
                    Directory.CreateDirectory(path);
                    foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
                    {
                        if (archivo.ContentLength < 1000)
                        {
                            FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                            result += $"El archivo {archivo.FileName} se agrego correctamente";
                        }
                        else
                        {
                            result += $"El archivo {archivo.FileName} supera los 1000b";
                        }
                    }
                    Label1.Text = result;
                    mostrarDatos();
                }
            }
            else
            {
                Label1.Text = "No se cargo ningun archivo";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Descargar")
            {
                GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = row.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
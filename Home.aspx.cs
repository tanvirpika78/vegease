using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    public static int i = 0;
    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static Slide[] GetImages()
    {
        List<Slide> slides = new List<Slide>();
        string path = HttpContext.Current.Server.MapPath("~/imageslide/");
        if (path.EndsWith("\\"))
        {
            path = path.Remove(path.Length - 1);
        }
        Uri pathUri = new Uri(path, UriKind.Absolute);
        string[] files = Directory.GetFiles(path);
        foreach (string file in files)
        {
            Uri filePathUri = new Uri(file, UriKind.Absolute);
            slides.Add(new Slide
            {
                Name = Path.GetFileNameWithoutExtension(file),
                Description = Path.GetFileNameWithoutExtension(file) + " Description.",
                ImagePath = pathUri.MakeRelativeUri(filePathUri).ToString()
            });
        }
        return slides.ToArray();
    }

}
using DevExpress.Web;
using DevExpress.Web.ASPxThemes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected override void OnInit(EventArgs e) {
        base.OnInit(e);
		ASPxButton button4 = new ASPxButton();        
        button4.ID = "RuntimeButton";        
        ph.Controls.Add(button4);
        button4.CssClass = "button";
        button4.Image.IconID = DevExpress.Web.ASPxThemes.IconID.NavigationHome32x32;
        LiteralControl lc = new LiteralControl("<span>This ASPxButton is created at runtime in PlaceHolder</span>");
        ph.Controls.Add(lc);

    }

    protected void Button2_Init(object sender, EventArgs e) {
        Button btn = sender as Button;
        btn.CssClass += " dxIcon_" + IconID.NavigationHome32x32;
    }
}
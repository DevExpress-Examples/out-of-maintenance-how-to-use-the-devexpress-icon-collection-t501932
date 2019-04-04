<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to use the DevExpress Icon Collection


<p>The sample illustrates ways of assigning an image from the DevExpress <a href="https://documentation.devexpress.com/#AspNet/CustomDocument15861">Icon Collection</a>. Images are presented in sprites. To load sprites properly, register ASPxHttpHandlerModule in the web.config.<br><br></p>
<p>1. A full list of DevExpress icons can be found by the following link: <a href="https://codecentral.devexpress.com/T205563/">Icon Collection</a>. You need to copy the Full Icon ID column value for the necessary icon and assign this value to the Image.IconID property: </p>


```aspx
<dx:ASPxButton ID="ASPxButton1" CssClass="button" runat="server">
    <Image IconID="navigation_home_32x32">
    </Image>
</dx:ASPxButton>

```


<p> </p>
<p>2. Icon Collection constants can be used to assign the IconID at runtime:</p>


```cs
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

```


<p> </p>
<p>3. It's possible to use DevExpress icons for non-DevExpress controls. Form the css class name by joining "dxIcon_" and the Full Icon ID column value. To use IconID constants for server controls, add a new css class to the CssClass property in the Init event handler:</p>


```aspx
<asp:Button ID="Button2" runat="server" CssClass="myButton" OnInit="Button2_Init" />

```




```cs
protected void Button2_Init(object sender, EventArgs e) {
    Button btn = sender as Button;
    btn.CssClass += " dxIcon_" + IconID.NavigationHome32x32;
}

```


<p><br> 4. For a standard input element, use an embedded code block to use IconID constants:</p>


```aspx
<input type="button" class="dxIcon_<%= IconID.NavigationHome32x32%> myButton" />
```


<p><br><strong>See also:</strong><br><a href="https://www.devexpress.com/Support/Center/p/T205563">Icon Library Explorer</a></p>

<br/>



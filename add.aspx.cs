using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUnitPrice.Attributes.Add("readonly", "readonly");
    }

    protected void submit_AddRecord (object sender, EventArgs e)
    {
        string fullName = txtFullName.Text;
        string emailAddress = txtEmail.Text;
        string productname = dropProductNames.SelectedValue;
        string unitPrice = txtUnitPrice.Text.Substring(1);
        int unitprice = Int32.Parse(unitPrice);
        int quantity = Int32.Parse(txtQuant.Text);

        DataSource.addRecord(fullName, emailAddress, productname, unitprice, quantity);
        confirmation.Text = "New record successfully added to data bank.";

    }
}
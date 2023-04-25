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
        if (!Page.IsPostBack)
        {
            populateDetails();
        }
    }
    protected void populateDetails()
    {
        DateTime localDate = DateTime.Now;
        DateTime invoiceDueDate = localDate.AddDays(14);
        invoicee.Text = "Invoice for: " + Request.Form["txtCustomerName"];
        issueDate.Text = "Date Issued: " + localDate.ToShortDateString();

        product1.Text = Request.Form["txtItemName1"];
        product2.Text = Request.Form["txtItemName2"];
        product3.Text = Request.Form["txtItemName3"];

        unitPrice1.Text = Request.Form["txtUnitPrice1"];
        unitPrice2.Text = Request.Form["txtUnitPrice2"];
        unitPrice3.Text = Request.Form["txtUnitPrice3"];

        quantity1.Text = Request.Form["txtQuantity1"];
        quantity2.Text = Request.Form["txtQuantity2"];
        quantity3.Text = Request.Form["txtQuantity3"];

        int sub1;
            int sub2;
            int sub3;
        try
        {
            sub1 = Int32.Parse(quantity1.Text) * Int32.Parse(unitPrice1.Text);
            string sub1Str = "$" + sub1.ToString();
            subTotal1.Text = sub1Str;
        }
        catch (Exception e)
        {
            sub1 = 0;
        }
        try
        {
            sub2 = Int32.Parse(quantity2.Text) * Int32.Parse(unitPrice2.Text);
            string sub2Str = "$" + sub2.ToString();
            subTotal2.Text = sub2Str;
        }
        catch(Exception e)
        {
            sub2 = 0;

        }
        try
        {
            sub3 = Int32.Parse(quantity3.Text) * Int32.Parse(unitPrice3.Text);
            string sub3Str = "$" + sub3.ToString();
            subTotal3.Text = sub3Str;
        }
        catch (Exception e)
        {
            sub3 = 0;

        }

        int total = sub1 + sub2 + sub3;
        Total.Text = "$"+total.ToString();

        dueDate.Text = "Due Date: " + invoiceDueDate.ToShortDateString();

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
        PopulateFields();
        }
    }
    public void PopulateFields()//populates all gridview fields with data from XML document
    {
        List<Purchase> purchases = DataSource.readData();//reads data from xml document saving it in List object
        RecentPurchases.DataSource = purchases;//conects xml data to class structure of fields
        RecentPurchases.DataBind();//binds data to gridview
        
        //loops through List object to count how many orders have 10 or more quantity
        int largeOrders = 0;
        foreach (Purchase p in purchases)
        {
            if (p.quantity > 9)
            {
                largeOrders++;
            }
        }
        largeOrderLabel.Text = "Number of Large Orders: "+largeOrders.ToString();

    }
}
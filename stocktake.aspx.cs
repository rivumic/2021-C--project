using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void calculateFields()
    {
        reorderQuant1.Text = (Int32.Parse(reorderLevel.Text) -Int32.Parse(stockQuant1.Text)).ToString();
        reorderQuant2.Text = (Int32.Parse(reorderLevel.Text) - Int32.Parse(stockQuant2.Text)).ToString();
        reorderQuant3.Text = (Int32.Parse(reorderLevel.Text) - Int32.Parse(stockQuant3.Text)).ToString();
        
        
        subtotal1.Text = (Double.Parse(unitPrice1.Text)*Double.Parse(reorderQuant1.Text)).ToString();;
        
        subtotal2.Text = (Double.Parse(unitPrice2.Text) * Double.Parse(reorderQuant2.Text)).ToString();;
        
        subtotal3.Text = (Double.Parse(unitPrice3.Text) * Double.Parse(reorderQuant3.Text)).ToString();;

        TotalNumber.Text = (Double.Parse(subtotal1.Text) + Double.Parse(subtotal2.Text) + Double.Parse(subtotal3.Text)).ToString();
    }

    protected void decrementLevel_Click(object sender, EventArgs e)
    {
        if (Int32.Parse(reorderLevel.Text) > 0)
        {
reorderLevel.Text=(Int32.Parse(reorderLevel.Text)-1).ToString();
        calculateFields();
        }
    }

    protected void incrementLevel_Click(object sender, EventArgs e)
    {
        if (Int32.Parse(reorderLevel.Text) < 1000)
        {
            reorderLevel.Text = (Int32.Parse(reorderLevel.Text) + 1).ToString();
            calculateFields();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        calculateFields();
    }
}
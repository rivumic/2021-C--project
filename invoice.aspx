<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="vb_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <header>
        <a href="index.aspx" class="logoNav"><img class="logo" src="data/images/GoodGums-logo-sm.png" alt="Good Gums orange and green coloured tree Logo" /></a>
        <nav>
            <ul>
                <li class="navButtons"><a href="index.aspx">Home</a></li>
                <li class="navButtons"><a href="add.aspx">Add Record</a></li>
                <li class="navButtons"><a href="invoice.aspx" class="current">Invoice</a></li>
                <li class="navButtons"><a href="stocktake.aspx">Stocktake</a></li>
                <li class="navButtons"><a href="chart.aspx">Chart</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="wrapper">
            <form id="form1" runat="server" method="post" action="print.aspx">
                <div class="margin">
                    <h1>Invoice Generator</h1>
                    <div>
                        <asp:Label ID="lblCustomerName" runat="server" Text="Full Name of Customer:"><asp:RequiredFieldValidator ID="rfvCustomerName"  ControlToValidate="txtCustomerName" runat="server" ErrorMessage="Customer Name is required." Text="*"></asp:RequiredFieldValidator></asp:Label>
                        <asp:TextBox ID="txtCustomerName" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                        <h2>Product 1</h2>
                    <div class="formSection">
                        <div class ="smallInvoice">
                            <asp:Label ID="lblItemName1" runat="server" Text="Item Name"></asp:Label>
                            <asp:TextBox MaxLength="100" ID="txtItemName1" runat="server"></asp:TextBox>
                        </div>
                        <div class ="smallInvoice">
                            <asp:Label ID="lblUnitPrice1" runat="server" Text="Unit Price">
                        
                            </asp:Label><asp:RangeValidator ID="rvUnitPrice1" runat="server" ErrorMessage="Unit Price (product 1) must be between '0.00' and '1000.00'." ControlToValidate="txtUnitPrice1" Type="Currency" MaximumValue="1000.00" MinimumValue="0.00" Text=" *">
                                </asp:RangeValidator>

                            <asp:TextBox  placeholder="0.00 - 1000.00" ID="txtUnitPrice1" runat="server"></asp:TextBox>
                        </div>
                        <div class ="smallInvoice">
                            <asp:Label ID="lblQuantity1" runat="server" Text="Quantity">
                            </asp:Label><asp:RangeValidator ID="rvQuantity1" runat="server" ErrorMessage="Quantity (product 1) must be between '0' and '100'." ControlToValidate="txtQuantity2" MinimumValue="0" MaximumValue="100" Type="Integer" Text=" *"></asp:RangeValidator>

                        
                            <asp:TextBox placeholder="0 - 100" ID="txtQuantity1" runat="server"></asp:TextBox>
                    
                        </div>
                    </div>

                    <h2>Product 2</h2>
                    <div class="formSection">
                        <div class ="smallInvoice">
                            <asp:Label ID="lblItemName2" runat="server" Text="Item Name"></asp:Label>
                            <asp:TextBox MaxLength="100" ID="txtItemName2" runat="server"></asp:TextBox>
                        </div>
                        <div class ="smallInvoice">
                            <asp:Label ID="lblUnitPrice2" runat="server" Text="Unit Price"></asp:Label>
                            <asp:RangeValidator ID="rvUnitPrice2" runat="server" ErrorMessage="Unit Price (product 2) must be between '0.00' and '1000.00'" Text=" *" ControlToValidate="txtUnitPrice2" MinimumValue="0.00" MaximumValue="1000.00" Type="Currency"></asp:RangeValidator>
                            <asp:TextBox  placeholder="0.00 - 1000.00" ID="txtUnitPrice2" runat="server"></asp:TextBox>
                        </div>
                        <div class ="smallInvoice">
                            <asp:Label ID="lblQuantity2" runat="server" Text="Quantity"></asp:Label>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Quantity (product 2) must be between '0' and '100'." ControlToValidate="txtQuantity2" MinimumValue="0" MaximumValue="100" Type="Integer" Text=" *"></asp:RangeValidator>
                            <asp:TextBox placeholder="0 - 100" ID="txtQuantity2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <h2>Product 3</h2>
                    <div class="formSection">
                        <div class ="smallInvoice">
                            <asp:Label ID="lblItemName3" runat="server" Text="Item Name"></asp:Label>
                            <asp:TextBox MaxLength="100" ID="txtItemName3" runat="server"></asp:TextBox>
                        </div>
                        <div class ="smallInvoice">
                            <asp:Label ID="lblUnitPrice3" runat="server" Text="Unit Price"></asp:Label>
                    
                            <asp:RangeValidator ID="rvUnitPrice3" runat="server" ErrorMessage="Unit Price (product 3) must be between '0.00' and '1000.00'" Text=" *" ControlToValidate="txtUnitPrice3" MinimumValue="0.00" MaximumValue="1000.00" Type="Currency"></asp:RangeValidator>
                            <asp:TextBox placeholder="0.00 - 1000.00" ID="txtUnitPrice3" runat="server"></asp:TextBox>
                        </div>
                        <div class ="smallInvoice">
                            <asp:Label ID="lblQuantity3" runat="server" Text="Quantity"></asp:Label>
                    
                            <asp:RangeValidator ID="rvQuantity3" runat="server" ErrorMessage="Quantity (product 3) must be between '0' and '100'." ControlToValidate="txtQuantity3" MinimumValue="0" MaximumValue="100" Type="Integer" Text=" *"></asp:RangeValidator>
                            <asp:TextBox placeholder="0 - 100" ID="txtQuantity3" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="fieldButton"><asp:Button ID="submitInvoice" CssClass="addRecordButton" runat="server" Text="Submit" /></div>
                    <div>
                        <asp:ValidationSummary ID="ValidationSummary1" CssClass="invoiceSummary" runat="server" />
                    </div>
                </div>
            </form>
        </section>
    </main>
    <footer>
        © 2021 Good Gums<br />
    </footer>
</body>
</html>

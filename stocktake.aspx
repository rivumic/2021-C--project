<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stocktake.aspx.cs" Inherits="_Default" %>

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
                <li class="navButtons"><a href="invoice.aspx">Invoice</a></li>
                <li class="navButtons"><a href="stocktake.aspx" class="current">Stocktake</a></li>
                <li class="navButtons"><a href="chart.aspx">Chart</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="wrapper">
            <form id="form1" class="stockForm" runat="server">
                <h1>Stocktake Calculator</h1>

                <asp:Table ID="Table1" runat="server" BorderStyle="Solid" GridLines="Both">
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="4">
                            <asp:Label ID="lblReorderLevel" runat="server" Text="Reorder Level: "></asp:Label>
                            <div class="buttonFlex"><asp:Button ID="decrementLevel" runat="server" CssClass="stockButtons" Text="-" OnClick="decrementLevel_Click"/>
                            <asp:TextBox ID="reorderLevel" runat="server" CssClass="stockLevel" ReadOnly="true" Text="10"></asp:TextBox>
                            <asp:Button ID="incrementLevel" CssClass="stockButtons" runat="server" Text="+" OnClick="incrementLevel_Click"/></div>
                        
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:RangeValidator ID="rvReorderLevel" runat="server" ErrorMessage="Reorder Level must be between 0 and 1000." ControlToValidate="reorderLevel" MinimumValue="0" MaximumValue="1000" Type="Integer"></asp:RangeValidator>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell CssClass="itemNameColumn">
                            <asp:Label ID="Label1" runat="server" Text="Item Name:"></asp:Label></asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="smallColumns"><asp:Label ID="Label2" runat="server" Text="Stock Quantity"></asp:Label></asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="smallColumns"><asp:Label ID="Label3" runat="server" Text="Unit Price"></asp:Label></asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="smallColumns"><asp:Label ID="Label4" runat="server" Text="Reorder Quantity"></asp:Label></asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="smallColumns"><asp:Label ID="Label5" runat="server" Text="Subtotal"></asp:Label></asp:TableHeaderCell>
                        <asp:TableCell CssClass="tinyColumn"></asp:TableCell>
                    </asp:TableHeaderRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:TextBox MaxLength="100" ID="itemName1" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="stockQuant1" runat="server" Text="0"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="unitPrice1" runat="server" Text="0"></asp:TextBox></asp:TableCell>

                        <asp:TableCell><asp:Label ID="reorderQuant1" runat="server" Text=""></asp:Label></asp:TableCell>

                        <asp:TableCell><asp:Label ID="subtotal1" runat="server" Text=""></asp:Label></asp:TableCell>

                        <asp:TableCell>
                            <asp:RequiredFieldValidator ID="rfvStockQuant1" ControlToValidate="stockQuant1" runat="server" ErrorMessage="Stock Quantity (item 1) is required."></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfvUnitPrice1" runat="server" ControlToValidate="unitPrice1" ErrorMessage="Unit Price (item 1) is required."></asp:RequiredFieldValidator>

                            <asp:RangeValidator ID="rvStockQuant1" runat="server" ErrorMessage="Stock Quantity (item 1) must be between '0' and '100'." Text="*" ControlToValidate="stockQuant1" MinimumValue="0" MaximumValue="100" Type="Integer" ></asp:RangeValidator>

                            <asp:RangeValidator ID="rvUnitPrice1" runat="server" ErrorMessage="Unit Price (item 1) must be between '0.00' and '1000.00'" ControlToValidate="unitPrice1" MinimumValue="0.00" MaximumValue="1000.00" Type="Currency" Text="*"></asp:RangeValidator>

                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:TextBox MaxLength="100" ID="itemName2" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="stockQuant2" runat="server" Text="0"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="unitPrice2" runat="server" Text="0"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="reorderQuant2" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:Label ID="subtotal2" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator ID="rfvStockQuant2" ControlToValidate="stockQuant2" runat="server" ErrorMessage="Stock Quantity (item 2) is required."></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfvUnitPrice2" ControlToValidate="unitPrice2" runat="server" ErrorMessage="Unit Price (item 2) is required."></asp:RequiredFieldValidator>

                            <asp:RangeValidator ID="rvStockQuant2" runat="server" ErrorMessage="Stock Quantity (item 2) must be between '0' and '100'." Text="*" ControlToValidate="stockQuant2" MinimumValue="0" MaximumValue="100" Type="Integer" ></asp:RangeValidator>

                            <asp:RangeValidator ID="rvUnitPrice2" runat="server" ErrorMessage="Unit Price (item 2) must be between '0.00' and '1000.00'" ControlToValidate="unitPrice2" Text="*" MinimumValue="0.00" MaximumValue="1000.00" Type="Currency"></asp:RangeValidator>

                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:TextBox MaxLength="100" ID="itemName3" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="stockQuant3" runat="server" Text="0"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="unitPrice3" runat="server" Text="0"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:Label ID="reorderQuant3" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:Label ID="subtotal3" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator ID="rfvStockQuant3" ControlToValidate="stockQuant3" runat="server" ErrorMessage="Stock Quantity (item 3) is required."></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfvUnitPrice3" ControlToValidate="unitPrice3" runat="server" ErrorMessage="Unit Price (item 3) is required." ></asp:RequiredFieldValidator>
                        
                            <asp:RangeValidator ID="rvStockQuant3" runat="server" ErrorMessage="Stock Quantity (item 3) must be between '0' and '100'." ControlToValidate="stockQuant3" MinimumValue="0" MaximumValue="100" Type="Integer" Text="*"></asp:RangeValidator>
                        
                            <asp:RangeValidator ID="rvUnitPrice3" runat="server" ErrorMessage="Unit Price (item 3) must be between '0.00' and '1000.00'"  ControlToValidate="unitPrice3" Text="*" MinimumValue="0.00" MaximumValue="1000.00" Type="Currency"></asp:RangeValidator>

                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableFooterRow>
                        <asp:TableCell ColumnSpan="3">
                            <asp:Button ID="Button1" CssClass="calcButton" runat="server" Text="Calculate" OnClick="Button1_Click"/></asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Total" runat="server" Text="Total:"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:Label ID ="TotalNumber" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableFooterRow>
                </asp:Table>
                <div>
                    <asp:ValidationSummary CssClass="stockSummary" ID="ValidationSummary1" runat="server" />
                </div>
            </form>
        </div>
    </main>
</body>
</html>

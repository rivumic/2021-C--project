<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Invoice</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <main>
        <form id="printForm" class="wrapper" runat="server">
            <div class="printForm">
                <asp:Label ID="invoicee" runat="server" Text=""></asp:Label></div>
            <div class="printForm">
                <asp:Label ID="issueDate" runat="server" Text=""></asp:Label></div>
            <div class="printForm">
                <asp:Table ID="Table1" runat="server" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2" CellPadding="3" CellSpacing="3" Font-Italic="False" HorizontalAlign="Center">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell Text="Item" runat="server"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="Unit Price" runat="server"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="Quantity" runat="server"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="Subtotal" runat="server"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell ID="product1" runat="server"></asp:TableCell>
                        <asp:TableCell ID="unitPrice1" runat="server"></asp:TableCell>
                        <asp:TableCell ID="quantity1" runat="server"></asp:TableCell>
                        <asp:TableCell ID="subTotal1" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="product2" runat="server"></asp:TableCell>
                        <asp:TableCell ID="unitPrice2" runat="server"></asp:TableCell>
                        <asp:TableCell ID="quantity2" runat="server"></asp:TableCell>
                        <asp:TableCell ID="subTotal2" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="product3" runat="server"></asp:TableCell>
                        <asp:TableCell ID="unitPrice3" runat="server"></asp:TableCell>
                        <asp:TableCell ID="quantity3" runat="server"></asp:TableCell>
                        <asp:TableCell ID="subTotal3" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableHeaderCell Text="Total" ColumnSpan="3"></asp:TableHeaderCell>
                        <asp:TableCell ID="Total"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <p>Terms: Invoice is due to be paid in full in 14 days.</p>
            <div class="printForm">
                <asp:Label ID="dueDate" runat="server" Text=""></asp:Label>
            </div>
        </form>
    </main>
</body>
</html>

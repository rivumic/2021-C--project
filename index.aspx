<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home | Good Gums</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <header>
        <%-- Logo and nav buttons --%>
        <a href="index.aspx" class="logoNav"><img class="logo" src="data/images/GoodGums-logo-sm.png" alt="Good Gums orange and green coloured tree Logo" /></a>
        <nav>
            <ul>
                <li class="navButtons"><a class="current">Home</a></li>
                <li class="navButtons"><a href="add.aspx">Add Record</a></li>
                <li class="navButtons"><a href="invoice.aspx">Invoice</a></li>
                <li class="navButtons"><a href="stocktake.aspx">Stocktake</a></li>
                <li class="navButtons"><a href="chart.aspx">Chart</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <%-- Hero Image--%>
        <div class="hero backgroundWithText backgroundImage">
            <span class="heroSpan">Recent Orders</span>
        </div>

        <section class="wrapper">
            <form id="form1" runat="server" >
                <div class="field">
                    <%--Control to show all fields in XML document--%>
                    <asp:GridView ID="RecentPurchases" runat="server" CssClass="gridView" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID"/>
                            <asp:BoundField DataField="fullName" HeaderText="Name"/>
                            <asp:BoundField DataField="emailAddress" HeaderText="Email"/>
                            <asp:BoundField DataField="productname" HeaderText="Product"/>
                            <asp:BoundField DataField="unitprice" HeaderText="Unit Price"/>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity"/>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="orderLabel">
                    <%--Shows how many orders are "large" - with a quantity of 10 or more--%>
                    <asp:Label ID="largeOrderLabel" runat="server" Text=""></asp:Label>
                </div>
            </form>
        </section>
    </main>
    <footer>
            Banner image by James St. John, <a href="https://creativecommons.org/licenses/by/2.0">CC By 2.0</a> via Wikimedia Commons<br />
            <br />
            © 2021 Good Gums

        </footer>
</body>
</html>

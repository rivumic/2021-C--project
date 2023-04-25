<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Record | Good Gums</title>
    <link href="styles.css" rel="stylesheet" />
    
</head>
<body>
    <header>
        <a href="index.aspx" class="logoNav"><img class="logo" src="data/images/GoodGums-logo-sm.png" alt="Good Gums orange and green coloured tree Logo" /></a>
        <nav>
            <ul>
                <li class="navButtons"><a href="index.aspx">Home</a></li>
                <li class="navButtons"><a class="current">Add Record</a></li>
                <li class="navButtons"><a href="invoice.aspx">Invoice</a></li>
                <li class="navButtons"><a href="stocktake.aspx">Stocktake</a></li>
                <li class="navButtons"><a href="chart.aspx">Chart</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="wrapper">
            <h1 class="indexHeading">Add New Purchase Record</h1>
            <form id="addForm" runat="server">
                <div class="formSection">
                    <div class="addRecordField">
                        <asp:Label CssClass="formLabel" ID="lblFullName" runat="server" Text="Full Name">
                            <asp:RequiredFieldValidator CssClass="asterisk" ID="rfvFullName" runat="server" ErrorMessage="Full Name is required." Text=" *" ControlToValidate="txtFullName">
                            </asp:RequiredFieldValidator>
                        </asp:Label>
                        <asp:TextBox ID="txtFullName" runat="server" MaxLength="35" ></asp:TextBox>
                    </div>
                    <div class="addRecordField">
                        <asp:Label CssClass="formLabel" ID="lblEmail" runat="server" Text="E-Mail Address">
                            <asp:RequiredFieldValidator CssClass="asterisk" ID="rfvEmail" runat="server" ErrorMessage="E-Mail Address is required." Text=" *" ControlToValidate="txtEmail">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email Address is not a valid Email Address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" CssClass="asterisk" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                        </asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" MaxLength="30"></asp:TextBox>
                    </div>
                    <div class="addRecordField">
                        <asp:Label ID="lblDropDown" CssClass="formLabel dropDown" runat="server" Text="Product Name">
                        </asp:Label>

                        <asp:DropDownList ID="dropProductNames" runat="server" onchange="selectUnitPrice(this)">  
                        
                        <asp:ListItem Text="Small Plants" CssClass="listHeader" disabled="disabled"></asp:ListItem>
                            <asp:ListItem Text="Tall Kangaroo Paw" Value="Tall Kangaroo Paw" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Canberra Bells" Value="Canberra Bells" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Grevillia Firecracker" Value="Grevillia Firecracker" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Poa Grass" Value="Poa Grass" CssClass="dropdownListItem"></asp:ListItem>
                
                        <asp:ListItem Text="Large Plants" CssClass="listHeader" disabled="disabled"></asp:ListItem>
                            <asp:ListItem Text="Rose Boronia" Value="Rose Boronia" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Happy Wanderer" Value="Happy Wanderer" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Lilly Pilly" Value="Lilly Pilly" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Waratah" Value="Waratah" CssClass="dropdownListItem"></asp:ListItem>

                        <asp:ListItem Text="Trees" CssClass="listHeader" disabled="disabled"></asp:ListItem>
                            <asp:ListItem Text="Golden Wattle" Value="Golden Wattle" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Rusty Gum" Value="Rusty Gum" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Crimson Bottlebrush" Value="Crimson Bottlebrush" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Red Flowering Gum" Value="Red Flowering Gum" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Silver Princess Gum" Value="Silver Princess Gum" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Snow Gum" Value="Snow Gum" CssClass="dropdownListItem"></asp:ListItem>
                            <asp:ListItem Text="Silky Oak" Value="Silky Oak" CssClass="dropdownListItem"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="formSection">
                
                    <div class="addRecordField">
                        <asp:Label ID="lblUnitPrice" CssClass="formLabel" runat="server" Text="Unit Price" ></asp:Label>
                        <asp:TextBox ID="txtUnitPrice" runat="server" value="$15"></asp:TextBox>
                    </div>
                    <div class="addRecordField">
                        <asp:Label CssClass="formLabel" ID="lblQuant" runat="server" Text="Item Quantity">
                            <asp:RequiredFieldValidator CssClass="asterisk" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Item Quantity is required." Text=" *" ControlToValidate="txtQuant"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvQuant" runat="server" ErrorMessage="Item Quantity must be a whole number." Text="*" ControlToValidate="txtQuant" Type="Integer" Operator="DataTypeCheck" CssClass="asterisk"></asp:CompareValidator>
                        </asp:Label>
                        <asp:TextBox ID="txtQuant" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="addRecordSummary">
                    <asp:ValidationSummary ID="vSummary" runat="server" HeaderText="Please correct the following:" />
                </div>
                <div class="confirmMessage">
                    <asp:Label ID="confirmation" runat="server" Text=""></asp:Label></div>
                <div class="fieldButton">
                    <asp:Button ID="submit" CssClass="addRecordButton" runat="server" Text="Submit" OnClick="submit_AddRecord" />
                </div>
            </form>
        </section>
    </main>
    <footer>
        © 2021 Good Gums<br />
    </footer>
    <script type="text/javascript">
        function selectUnitPrice(object) {
            switch (object.value) {

                //Small Plants
                case "Tall Kangaroo Paw":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$15";
                    break;
                case "Canberra Bells":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$12";
                    break;
                case "Grevillia Firecracker":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$16";
                    break;
                case "Poa Grass":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$9";
                    break;
                //Large Plants
                case "Rose Boronia":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value
                case "Happy Wanderer":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$45";
                    break;
                case "Lilly Pilly":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$100";
                    break;
                case "Waratah":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$69";
                    break;
                //Trees

                case "Snow Gum":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$17";
                    break;
                case "Golden Wattle":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$45";
                    break;
                case "Rusty Gum":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$8";
                    break;
                case "Crimson Bottlebrush":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$89";
                    break;
                case "Red Flowering Gum":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$57";
                    break;
                case "Silver Princess Gum":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$90";
                    break;
                case "Silky Oak":
                    document.getElementById('<%= txtUnitPrice.ClientID %>').value = "$150";
                    break;
            }
        }
    </script>
</body>
</html>

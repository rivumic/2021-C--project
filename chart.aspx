<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chart.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
            <li class="navButtons"><a href="stocktake.aspx">Stocktake</a></li>
            <li class="navButtons"><a href="chart.aspx" class="current">Chart</a></li>
        </ul>
    </nav>
    </header>
    <main>
        <form id="form1" runat="server">
            <div class="chartWrapper">
                <h1>Yearly Revenue For Last 5 Years</h1>
                <div class="chartContainer">
                    <asp:Chart ID="Chart1" CssClass="chart" runat="server" width="750px">
                        <Series>
                            <asp:Series Name=" " Color="#f09a27">
                                <Points>
                                    <asp:DataPoint AxisLabel="2017" YValues="110234" Label="$110234" LabelBackColor="Wheat"/>
                                    <asp:DataPoint AxisLabel="2018" YValues="238374" Label="$238374" LabelBackColor="Wheat"/>
                                    <asp:DataPoint AxisLabel="2019" YValues="583847" Label="$583847" LabelBackColor="Wheat"/>
                                    <asp:DataPoint AxisLabel="2020" YValues="198575" Label="$198575" LabelBackColor="Wheat"/>
                                    <asp:DataPoint AxisLabel="2021" YValues="328477" Label="$328477" LabelBackColor="Wheat"/>
                                </Points>
                        
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" >
                                <AxisY Title="Yearly Revenue ($)" TitleFont="'Trebuchet MS', 16pt"></AxisY>
                                <AxisX Title="Years of Operation" TitleFont="'Trebuchet MS', 18pt"></AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Title="Yearly Revenue"></asp:Legend>
                        </Legends>
                </asp:Chart>
                </div>
            </div>
        </form>
    </main>
    <footer>
        © 2021 Good Gums<br />
    </footer>
</body>
</html>

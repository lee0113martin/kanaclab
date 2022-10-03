<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="inventory.aspx.vb" Inherits="ACC_DB.inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALUMNI ICT LAB</title>
    <style type="text/css">
        .auto-style10 {}
    </style>
</head>
<body background="KETASCO3.JPG">
     <center>

    <form id="form1" runat="server"  >
        <center>
            <asp:Panel ID="Panel2" runat="server" Height="593px" HorizontalAlign="Center" Width="969px" BackColor="#0099CC">
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="80px" ImageAlign="Middle" ImageUrl="~/R.png" Width="111px" />
                <br />
                <br />
                <asp:ListBox ID="NLB" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="30px" Rows="1" ToolTip="SELECT A PROGRAM CLICK SUBMIT.." Width="217px"></asp:ListBox>
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="36px" Text="VIEW" Width="95px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="36px" Text="BACK" Width="96px" />
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="21px" Visible="False"></asp:TextBox>
                <br />
                &nbsp; &nbsp;
                <br />
                <center>
                <asp:GridView ID="PARENTGV0" runat="server" AllowCustomPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" Caption="ALUMIN CENTER" CaptionAlign="Top" CellPadding="1" ForeColor="#333333" Height="156px" HorizontalAlign="Center" PageSize="63" RowHeaderColumn="Center" style="text-align: center; font-weight: 700; font-size: medium; font-family: 'Times New Roman'; color: #000000; background-color: #FFFFFF" Visible="False" Width="948px" Font-Size="Medium">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Item_Name" HeaderText="ITEM" />
                        <asp:BoundField DataField="Brand" HeaderText="BRAND" />
                        <asp:BoundField DataField="Quantity" HeaderText="QUANTITY" />
                        <asp:BoundField DataField="Condition" HeaderText="CONDITION" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                                    </center>

                <br />
                <br />
                <br />
            </asp:Panel>
             </center>
        &nbsp;</form>
        </center>
</body>
</html>

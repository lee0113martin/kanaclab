<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="ACC_DB.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALUMNI ICT LAB</title>
</head>
<body background="KETASCO3.JPG">
      <center>

    <form id="form1" runat="server"  >
        <center>
                <br />
            <asp:Panel ID="Panel2" runat="server" Height="401px" HorizontalAlign="Center" Width="596px" BackColor="#0099CC">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="KETASCO ALUMNI OF NORTH AMERICA" Font-Bold="True" Font-Underline="True"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="83px" ImageAlign="Middle" ImageUrl="~/R.png" Width="85px" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="Username"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Text="Password"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password" align="center"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Login" Width="87px" Font-Names="Times New Roman" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Cancel" Width="83px" Font-Names="Times New Roman" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
            </asp:Panel>
             </center>
        &nbsp;</form>
        </center>
</body>
</html>

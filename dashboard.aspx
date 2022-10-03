<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard.aspx.vb" Inherits="ACC_DB.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALUMNI ICT LAB</title>
</head>
<body background="KETASCO3.JPG">
    <center>

    <form id="form1" runat="server"  >
        <center>
            <asp:Panel ID="Panel2" runat="server" Height="539px" HorizontalAlign="Center" Width="969px" BackColor="#0099CC">
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="DASHBOARD" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="36px" Text="VIEW" Width="95px" />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="36px" Text="EDIT" Width="96px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="36px" Text="LOGOUT" Width="96px" />
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="233px" ImageUrl="~/R.png" Width="270px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp; &nbsp;
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
             </center>
        &nbsp;</form>
        </center>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="library.aspx.vb" Inherits="ACC_DB.library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALUMNI ICT LAB</title>
</head>
<body background="KETASCO3.JPG">
   <center>

    <form id="form1" runat="server"  >
        <center>
            <asp:Panel ID="Panel2" runat="server" Height="558px" HorizontalAlign="Center" Width="969px" BackColor="#0099CC">
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="ALUMNI COMPUTER CENTER:: INVENTORY DATABASE" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="128px" ImageAlign="Middle" ImageUrl="~/R.png" Width="143px" />
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Title"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Author"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Quantity"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Remark"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="33px" Text="Add" Width="85px" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="33px" Text="Update" Width="82px" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="33px" Text="Remove" Width="82px" />
&nbsp;
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="33px" Text="Back" Width="82px" />
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

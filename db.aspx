<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="db.aspx.vb" Inherits="ACC_DB.db" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALUMNI ICT LAB</title>

     <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  
  
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
   
 <link rel="stylesheet" href="fonts/icomoon/style.css">

   
 <link rel="stylesheet" href="css/bootstrap.min.css">
  
  <link rel="stylesheet" href="css/magnific-popup.css">
   
 <link rel="stylesheet" href="css/jquery-ui.css">
   
 <link rel="stylesheet" href="css/owl.carousel.min.css">
   
 <link rel="stylesheet" href="css/owl.theme.default.min.css">

   
 <link rel="stylesheet" href="css/bootstrap-datepicker.css">

   
 <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

   
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">



 <link rel="stylesheet" href="css/aos.css">

   
 <link rel="stylesheet" href="css/style.css">
</head>
<body background="KETASCO3.JPG">
     <center>

    <form id="form1" runat="server"  >
        <center>
            <asp:Panel ID="Panel2" runat="server" Height="668px" HorizontalAlign="Center" Width="969px" BackColor="#0099CC">
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="ALUMNI COMPUTER CENTER:: INVENTORY DATABASE" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="128px" ImageAlign="Middle" ImageUrl="~/R.png" Width="143px" />
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Item Name"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Brand"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Quantity"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="184px"></asp:TextBox>
                <br />
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Condition"></asp:Label>
                &nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox>
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

     <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  
<script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
 
 <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
 
 <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
 
 <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js">
</script>
</body>
</html>

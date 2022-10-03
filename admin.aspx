<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="ACC_DB.admin" %>

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
<body background="KETASCO3.jpg">
    <div class="container">
<div class="row align-items-center">
     
<div class="col-12">

    <center>

    <form id="form2" runat="server"  >
        <center>
                <br />
            <asp:Panel ID="Panel2" runat="server" Height="520px" HorizontalAlign="Center" Width="596px" BackColor="#0099CC">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="ADMINISTRATOR" Font-Bold="True" Font-Underline="True"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="83px" ImageAlign="Middle" ImageUrl="~/R.png" Width="85px" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="Username"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Text="Password"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Login" Width="87px" />
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
    </div>
        </div>

            </div>


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

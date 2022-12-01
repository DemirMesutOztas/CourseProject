<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home3.aspx.cs" Inherits="CourseProject.home3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Cabin&display=swap" rel="stylesheet" />
    <link href="./css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <title>Özel Ders Rezervasyon</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar2">
            <a class="active2" href="home3.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>

            <a href="teacherLogin.aspx"><i class="fa fa-fw fa-book"></i>Eğitmen</a>
            <a href="#" style="float: right">
               
            </a>
        </div>
        <div class="wrap">



            <div class="sidebar">
            </div>
            <!-- kenar menü -->

            <div class="content">
                <h2>Oturum aç 
                </h2>

                <h3>Yeni kullanıcı ?
                    <asp:HyperLink runat="server" NavigateUrl="~/student.aspx" Font-Underline="false"><span style="color: darkturquoise">Hesap aç</span></asp:HyperLink></h3>
                <br />


                <asp:Table runat="server" CellPadding="1" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="epostalb" runat="server" Text="E-posta"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="epostatx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="sifrelb" runat="server" Text="Şifre"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="sifretx" runat="server" Type="password"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <asp:Label ID="lblBilgi" runat="server"></asp:Label>

                <br />
                <br />

                <asp:Button ID="giris" runat="server" Text="Giriş" OnClick="giris_Click" Height="38px" Width="131px" />
                <br />
                <br />


            </div>


        </div>

    </form>
</body>
</html>

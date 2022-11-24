<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home3.aspx.cs" Inherits="CourseProject.home3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Cabin&display=swap" rel="stylesheet" />
    <link href="./css/main.css" rel="stylesheet" />

    <title>Özel Ders Rezervasyon</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrap">

           
                <div class="topnav">
                    <div class="navbar">
                        <a href="#home">Anasayfa</a>
                        <a href="#news">Dersler</a>
                        <div class="dropdown">
                            <button class="dropbtn">
                                Öğretmen
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="teacherLogin.aspx">Öğretmen Giriş</a>
                                <a href="teacher.aspx">Öğretmen Kayıt</a>
                                <a href="#">Eğitmen Listesi</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">
                                Öğrenci
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="studentLogin.aspx">Öğrenci Giriş</a>
                                <a href="student.aspx">Öğrenci Kayıt</a>
                                
                            </div>
                        </div>
                    </div>
                </div>

            <!-- Başlık -->

            <div class="sidebar">
                <input id="search" type="text" placeholder="Search"/>
            </div>
            <!-- kenar menü -->

            <div class="content">




                <h2>Oturum aç</h2>

                <h3>Yeni kullanıcı ?
                    <asp:HyperLink runat="server" NavigateUrl="~/student.aspx" Font-Underline="false"><span style="color: darkturquoise">Hesap aç</span></asp:HyperLink></h3>
                <br />


                <asp:Table runat="server" CellPadding="1" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblBilgi" runat="server" Text="E-posta"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="kullaniciEposta" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblBilgi2" runat="server" Text="Şifre"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="kullaniciSifre" runat="server" Type="password"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <br />
                <br />

                <asp:Button ID="giris" runat="server" Text="Giriş" OnClick="giris_Click" Height="38px" Width="131px" />


            </div>
            <!--  İçerik -->

            <div class="footer">
            </div>
            <!-- Alt bilgi -->

        </div>

    </form>
</body>
</html>

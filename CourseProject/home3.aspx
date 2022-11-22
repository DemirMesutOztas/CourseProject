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

            <div class="header">
            </div>
            <!-- Başlık -->

            <div class="sidebar">
            </div>
            <!-- kenar menü -->

            <div class="content">

                <div class="login">


                    <h2>Oturum aç</h2>
                   
                    <h3>Yeni kullanıcı ? <span style="color: aqua">Hesap aç</span></h3>
                    <br />
                 

                    <asp:Label ID="lblBilgi" runat="server" Text="E-posta"></asp:Label>
                    <br />
                 
                    <asp:TextBox ID="kullaniciAdi" runat="server"></asp:TextBox>
                    <br />
                 

                    <asp:Label ID="lblBilgi2" runat="server" Text="Şifre"></asp:Label>
                    <br />
                 
                    <asp:TextBox ID="kullaniciSifre" runat="server" Type="password"></asp:TextBox>
                    <br />
            

                    <asp:Button ID="giris" runat="server" Text="Giriş" OnClick="giris_Click" />
                </div>

            </div>
            <!--  İçerik -->

            <div class="footer">
            </div>
            <!-- Alt bilgi -->

        </div>

    </form>
</body>
</html>

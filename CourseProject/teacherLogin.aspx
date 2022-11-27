<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherLogin.aspx.cs" Inherits="CourseProject.teacherLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Cabin&display=swap" rel="stylesheet" />
    <link href="./css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Özel Ders Rezervasyon</title>

</head>
<body>
    <form id="form2" runat="server">
        <div class="navbar2">
            <a class="active2" href="home3.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>

            <a href="teacherLogin.aspx"><i class="fa fa-fw fa-book"></i>Eğitmen</a>
            <a href="#" style="float: right">
                <i class="fa fa-fw fa-user"></i>
            </a>
        </div>
        <div class="wrap">
                      
            <div class="content2">
               
                <h3>Eğitmen Giriş</h3>

                <h3>Oturum aç ?
                    <asp:HyperLink runat="server" NavigateUrl="~/teacher.aspx" Font-Underline="false"><span style="color: darkturquoise">Hesap aç</span></asp:HyperLink></h3>
                <br />


                <asp:Table runat="server" CellPadding="1" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="tremailLbl" runat="server" Text="E-posta"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="tremail" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="sifrelb" runat="server" Text="Şifre"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="trpassword" runat="server" Type="password"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <asp:Label ID="trlblBilgi" runat="server"></asp:Label>

                <br />
                <br />

                <asp:Button ID="trgiris" runat="server" Text="Giriş" OnClick="giris_Click" Height="45px" Width="116px" />
                <br />
                <br />


            </div>


        </div>

    </form>
</body>
</html>

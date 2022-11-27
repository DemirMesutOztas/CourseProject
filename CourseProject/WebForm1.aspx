<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CourseProject.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Cabin&display=swap" rel="stylesheet" />
    <link href="./css/main.css" rel="stylesheet" />

    <title>Özel Ders Rezervasyon</title>

</head>
<body>
    <form id="form2" runat="server">
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

            <div class="sidebar2">
                
                <asp:Table ID="Table2" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>
                            Foto
                        </asp:TableHeaderCell>
                         <asp:TableHeaderCell>
                            İsim
                        </asp:TableHeaderCell>
                         <asp:TableHeaderCell>
                            Tarih
                        </asp:TableHeaderCell>
                         <asp:TableHeaderCell>
                            Saat
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>

                    </asp:TableRow>
                </asp:Table>

               



          






            </div>
            <!-- kenar menü -->

            <div class="content2">



               


                <asp:Table ID="Table1" runat="server">
                </asp:Table>



               


            </div>
            <!--  İçerik -->

            <div class="footer">
                
            </div>
            <!-- Alt bilgi -->

        </div>

    </form>
</body>
</html>




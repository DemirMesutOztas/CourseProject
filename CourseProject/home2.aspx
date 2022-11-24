<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="CourseProject.home2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Özel Ders Platformu</title>
    <link href="./css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Özel Ders Platformu</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="/home.aspx">Ana Sayfa <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/course.aspx">Dersler</a>
                    </li>

                </ul>
            </div>
        </nav>
        <div class="user">
            <h3>Oturum aç</h3>
            <h4>Yeni kullanıcı</h4>
            <asp:HyperLink ID="HyperLink1" runat="server">Kayıt ol</asp:HyperLink>

            <table style="width: 100%; margin:15px">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="E-posta"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Type="password"></asp:TextBox>

                    </td>

                </tr>
                <tr>
                    <td style="left:250px">
                        <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="alert-info" Font-Bold="True" />

                    </td>

                </tr>
            </table>



        </div>


        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource11" DataTextField="hourId" DataValueField="hourId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [hourId], [hour] FROM [hour]"></asp:SqlDataSource>


    </form>
</body>
</html>

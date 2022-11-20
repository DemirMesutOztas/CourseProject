<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CourseProject.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem NavigateUrl="~/home.aspx" Text="Özel Ders Platformu" Value="Özel Ders Platformu"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/course.aspx" Text="Dersler" Value="Dersler"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/studentLogin.aspx" Text="Öğrenci Giriş" Value="Öğrenci Giriş"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/teacherLogin.aspx" Text="Eğitmen Giriş" Value="Eğitmen Giriş"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/student.aspx" Text="Öğrenci Kayıt" Value="Öğrenci Kayıt"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/teacher.aspx" Text="Eğitmen Kayıt" Value="Eğitmen Kayıt"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    </form>
</body>
</html>

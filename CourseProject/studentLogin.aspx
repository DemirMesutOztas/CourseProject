<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentLogin.aspx.cs" Inherits="CourseProject.studentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <h3>Kursiyer Giriş </h3>

                <tbody>
                    <tr>
                        <td>Kullanıcı Adı</td>
                        <td>
                            <asp:TextBox ID="kullaniciAdi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="kullaniciSifre" runat="server" Type="password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblBilgi" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Button ID="giris" runat="server" Text="Giriş" OnClick="giris_Click" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherLogin.aspx.cs" Inherits="CourseProject.teacherLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <h3>Eğitmen Giriş </h3>

                <tbody>
                    <tr>
                        <td>E-mail</td>
                        <td>
                            <asp:TextBox ID="tremail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Şifre</td>
                        <td>
                            <asp:TextBox ID="trpassword" runat="server" Type="password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="trlblBilgi" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Button ID="trgiris" runat="server" Text="Giriş" OnClick="giris_Click" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

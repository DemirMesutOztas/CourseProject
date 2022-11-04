<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trainer.aspx.cs" Inherits="CourseProject.trainer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
             
                   <h3>Eğitmen Kayıt Ekranı</h3> 
                
                <tbody>
                    <tr>
                        <td>Adı</td>
                        <td>
                            <asp:TextBox ID="tr_txt_adi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Soyadı</td>
                        <td>
                            <asp:TextBox ID="tr_txt_surname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>
                            <asp:TextBox ID="tr_txt_email" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Telefon</td>
                        <td>
                            <asp:TextBox ID="tr_txt_phone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Yaş</td>
                        <td>
                            <asp:TextBox ID="tr_txt_age" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Branş</td>
                        <td>
                            <asp:TextBox ID="tr_txt_branch" runat="server"></asp:TextBox>
                        </td>
                    </tr
                <tr>
                    <td>Şifre</td>
                    <td>
                        <asp:TextBox ID="tr_txt_password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Şifre Tekrar</td>
                    <td>
                        <asp:TextBox ID="tr_txt_password2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                </tbody>

            </table>
            
           

        </div>
        <p>
            <asp:Button ID="trainer_kaydet" runat="server" Text="Kaydet" OnClick="trainer_kaydet_Click"  />
        </p>
    </form>
</body>
</html>

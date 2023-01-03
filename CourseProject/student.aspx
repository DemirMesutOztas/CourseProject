<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="CourseProject.trainee" %>

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

            <div class="content3">

                <h3>Öğrenci Kayıt Ekranı</h3>
                <table>

                    <tbody>
                        <tr>
                            <td>Adı</td>
                            <td>
                                <asp:TextBox ID="t_txt_adi" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Soyadı</td>
                            <td>
                                <asp:TextBox ID="t_txt_surname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>E-mail</td>
                            <td>
                                <asp:TextBox ID="t_txt_email" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Şehir</td>
                            <td>
                                <asp:TextBox ID="t_txt_city" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Şifre</td>
                            <td>
                                <asp:TextBox ID="t_txt_password" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="t_txt_password"
                                    ErrorMessage="Zorunlu Alan" ForeColor="Red" Display="Dynamic" Font-Size="XX-Small">
                                </asp:RequiredFieldValidator>
                            </td>

                        </tr>
                        <tr>
                            <td>Şifre Tekrar</td>
                            <td>
                                <asp:TextBox ID="t_txt_password2" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:CompareValidator runat="server" ControlToCompare="t_txt_password" ControlToValidate="t_txt_password2" 
                                    ErrorMessage="Şifre eşleşmedi." ForeColor="Red" Display="Dynamic" Font-Size="XX-Small">
                                </asp:CompareValidator>
                            </td>
                        </tr>
                    </tbody>

                </table>
                <asp:Button ID="user_kaydet" runat="server" Text="Kaydet" OnClick="user_kaydet_Click" Height="45px" Width="116px" />

            </div>
        </div>

    </form>
</body>
</html>


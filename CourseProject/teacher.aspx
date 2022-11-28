<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="CourseProject.teacher" %>

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
                 <h3>Eğitmen Kayıt Ekranı</h3>

                <table>

                   

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
                            <td>Yaş</td>
                            <td>
                                <asp:TextBox ID="tr_txt_age" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Şehir</td>
                            <td>
                                <asp:TextBox ID="tr_txt_city" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Eğitim</td>
                            <td>
                                <asp:TextBox ID="tr_txt_education" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Branş</td>
                            <td>
                                <asp:TextBox ID="tr_txt_branch" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Açıklama</td>
                            <td>
                                <asp:TextBox ID="tr_txt_information" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Şifre</td>
                            <td>
                                <asp:TextBox ID="tr_txt_password" runat="server" TextMode="Password"></asp:TextBox>
                                 <br />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="tr_txt_password"
                                    ErrorMessage="Zorunlu Alan" ForeColor="Red" Display="Dynamic" Font-Size="XX-Small">
                                </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Şifre Tekrar</td>
                            <td>
                                <asp:TextBox ID="tr_txt_password2" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                 <asp:CompareValidator runat="server" ControlToCompare="tr_txt_password" ControlToValidate="tr_txt_password2" 
                                    ErrorMessage="Şifre eşleşmedi." ForeColor="Red" Display="Dynamic" Font-Size="XX-Small">
                                </asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:FileUpload ID="fileUpload1" runat="server" />
                            </td>
                        </tr>
                       

                    </tbody>

                </table>
                <asp:Button ID="teacher_kaydet" runat="server" Text="Kaydet" OnClick="teacher_kaydet_Click1" Height="45px" Width="116px"  />

            </div>
       

        </div>



    </form>
</body>
</html>



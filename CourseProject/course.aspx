<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="CourseProject.course" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="288px" Width="269px" >
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:ImageField DataImageUrlField="photo" ItemStyle-Width="15px" ControlStyle-Width="50" ControlStyle-Height = "50" >
<ControlStyle Height="50px" Width="50px"></ControlStyle>

<ItemStyle Width="15px"></ItemStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:TemplateField HeaderText="teacherId" SortExpression="teacherId" Visible="False">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("teacherId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="trid" runat="server" Text='<%# Bind("teacherId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ders Tipi">
                            <ItemTemplate>
                                <asp:DropDownList ID="dersTipi" runat="server" AutoPostBack="false">
                                    <asp:ListItem>Online</asp:ListItem>
                                    <asp:ListItem>Yüz yüze</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tarih">
                            <ItemTemplate>
                                <asp:TextBox ID="tarih" runat="server" type="date"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Saat">
                            <ItemTemplate>
                                <asp:DropDownList ID="saat" runat="server"  DataTextField="saat" onselectedindexchanged="GridView1_SelectedIndexChanged">
                                                                     
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField CommandName="Select" Text="Rezervasyon Yap" />

                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [photo], [branch], [name], [surname], [city], [teacherId] FROM [teacher]"></asp:SqlDataSource>

               



                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />






              <%--  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT saat FROM hour WHERE (saat NOT IN (SELECT hour FROM reservation where teacherId = @tch ))">
                    <FilterParameters>
                        <asp:Parameter DbType="Int32" Name="tch" Type="Int32"  DefaultValue=sel />
                    </FilterParameters>
                </asp:SqlDataSource>--%>






            </div>
            <!-- kenar menü -->

            <div class="content2">




                <h2>Oturum aç</h2>

                <h3>Yeni kullanıcı ?
                    <asp:HyperLink runat="server" NavigateUrl="~/student.aspx" Font-Underline="false"><span style="color: darkturquoise">Hesap aç</span></asp:HyperLink></h3>
                <br />


                <asp:Table runat="server" CellPadding="1" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="epostalb" runat="server" Text="E-posta"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="epostatx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="sifrelb" runat="server" Text="Şifre"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="sifretx" runat="server" Type="password"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <asp:Label ID="lblBilgi" runat="server"></asp:Label>

                <br />
                <br />

               


            </div>
            <!--  İçerik -->

            <div class="footer">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
            <!-- Alt bilgi -->

        </div>

    </form>
</body>
</html>



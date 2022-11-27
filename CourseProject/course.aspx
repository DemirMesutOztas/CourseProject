<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="CourseProject.course" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Cabin&display=swap" rel="stylesheet" />
    <link href="./css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <title>Özel Ders Rezervasyon</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar2">
            <a class="active2" href="home3.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>

            <a href="teacherLogin.aspx"><i class="fa fa-fw fa-book"></i>Eğitmen</a>
            <a href="#" style="float: right">
                <i class="fa fa-fw fa-user"></i>
            </a>
        </div>
        <div class="wrap">

            <div class="sidebar">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Seçiniz" />

                        <asp:ImageField DataImageUrlField="photo" ItemStyle-Width="32px" ControlStyle-Width="50" ControlStyle-Height="50" HeaderText="Fotoğraf">
                            <ControlStyle Height="120px" Width="90px"></ControlStyle>

                            <ItemStyle Width="15px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        </asp:ImageField>

                        <asp:BoundField DataField="branch" HeaderText="Ders" SortExpression="branch" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Ad" SortExpression="name" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="surname" HeaderText="Soyad" SortExpression="surname" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="city" HeaderText="Şehir" SortExpression="city" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="teacherId" SortExpression="teacherId" Visible="False">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("teacherId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="trid" runat="server" Text='<%# Bind("teacherId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <EditRowStyle BorderStyle="Dotted" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [photo], [branch], [name], [surname], [city], [teacherId] FROM [teacher]"></asp:SqlDataSource>


                <%--  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT saat FROM hour WHERE (saat NOT IN (SELECT hour FROM reservation where teacherId = @tch ))">
                    <FilterParameters>
                        <asp:Parameter DbType="Int32" Name="tch" Type="Int32"  DefaultValue=sel />
                    </FilterParameters>
                </asp:SqlDataSource>--%>
            </div>

            <div class="content">


                <h2>Rezervasyon Yap</h2>


                <asp:Table runat="server" CellPadding="1" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="dersTipiLbl" runat="server" Text="Ders Tipi"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="dersTipi" runat="server" AutoPostBack="false">
                                <asp:ListItem>Seçiniz</asp:ListItem>
                                <asp:ListItem>Online</asp:ListItem>
                                <asp:ListItem>Yüz yüze</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="tarihLbl" runat="server" Text="Tarih"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="tarih" runat="server" type="date" OnTextChanged="tarih_TextChanged" OnClick="TextBox1_Click" AutoPostBack="true"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="saatLbl" runat="server" Text="Saat"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="saatDrop" runat="server" DataTextField="saat" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <asp:ListItem>Seçiniz</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
                <asp:Button ID="rezerButton" runat="server" OnClick="Button1_Click" Text="Rezervasyon Yap" />

                <asp:Label ID="lblBilgi" runat="server"></asp:Label>

                <br />
                <br />



            </div>

        </div>

    </form>
</body>
</html>





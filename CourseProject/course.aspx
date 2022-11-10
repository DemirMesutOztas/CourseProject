<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="CourseProject.course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
      
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <h3>Kurslar</h3>

                <%--                <tbody>
                    <tr>
                        <td>
                            <asp:Image ID="trImage" runat="server" Alt="Fotoğraf"  ImageUrl="~/image/murat.jfif"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="courseName" runat="server" Text="Ders Adı"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Eğitmen Adı ve Soyadı</td>
                        <td>
                            <asp:Label ID="trainerName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Tecrübe</td>
                        <td>
                            <asp:Label ID="trainerExp" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>İl</td>
                        <td>
                            <asp:Label ID="city" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Ders Tipi</td>
                        <td>
                            <asp:Label ID="lessonType" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="lessonChoose" runat="server" Text="Rezervasyon Yap" />
                        </td>

                    </tr>

                </tbody>--%>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:ImageField DataImageUrlField="photo">
                </asp:ImageField>
                <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="information" HeaderText="information" SortExpression="information" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=dmo.database.windows.net;Initial Catalog=course;Persist Security Info=True;User ID=dmo;Password=demirfe06*" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [surname], [city], [branch], [information], [photo] FROM [trainer]"></asp:SqlDataSource>

        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="ders" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="egitmenadSoyad" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Ders Tipi"></asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tarihzaman" runat="server"></asp:TextBox>
                    </td>

                </tr>
            </table>
        </div>












































































    </form>
</body>
</html>

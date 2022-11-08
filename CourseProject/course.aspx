<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="CourseProject.course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <h3>Kurslar</h3>

                <tbody>
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

                </tbody>


            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                <asp:ImageField DataAlternateTextField="photo" DataImageUrlField="photo">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=dmo.database.windows.net;Initial Catalog=course;Persist Security Info=True;User ID=dmo;Password=demirfe06*" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [photo] FROM [trainer]"></asp:SqlDataSource>
    </form>
</body>
</html>

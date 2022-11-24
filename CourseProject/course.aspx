<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="CourseProject.course" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

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


            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:ImageField DataImageUrlField="photo">
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
                        <asp:DropDownList ID="dersTipi" runat="server" autopostback ="false">
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
                        <asp:DropDownList ID="saat" runat="server">
                            <asp:ListItem>09.00</asp:ListItem>
                            <asp:ListItem>10.00</asp:ListItem>
                            <asp:ListItem>11.00</asp:ListItem>
                            <asp:ListItem>12.00</asp:ListItem>
                            <asp:ListItem>13.00</asp:ListItem>
                            <asp:ListItem>14.00</asp:ListItem>
                            <asp:ListItem>15.00</asp:ListItem>
                            <asp:ListItem>16.00</asp:ListItem>
                            <asp:ListItem>17.00</asp:ListItem>
                            <asp:ListItem>18.00</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField CommandName="Select" Text="Rezervasyon Yap" />

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [photo], [branch], [name], [surname], [city], [teacherId] FROM [teacher]"></asp:SqlDataSource>

       


        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

       


    </form>
</body>
</html>

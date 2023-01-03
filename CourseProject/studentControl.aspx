<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentControl.aspx.cs" Inherits="CourseProject.studentControl" %>

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
            <a class="active2" href="course.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>
            <a href="course.aspx"><i class="fa fa-fw fa-book"></i>Ders Listesi</a>

            <a href="#" style="float: right">
                <asp:HyperLink runat="server" NavigateUrl="~/student.aspx" Font-Underline="false" Style="float: right">
                    <asp:Label ID="icon" runat="server"></asp:Label>
                </asp:HyperLink>
                <asp:LinkButton runat="server" NavigateUrl="~/home3.aspx" Font-Underline="false" Style="float: right" OnClick="Logout_Click">
                   <i class="fa fa-sign-out" aria-hidden="true"></i> 
                </asp:LinkButton>
            </a>
        </div>
        <div class="wrap33">

            <div class="content33">

                <asp:TextBox ID="txtSearch" runat="server" CssClass="txt"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Ara" CssClass="buttongr" OnClick="btnSearch_Click" />
                <asp:Button ID="refreshButton" runat="server" Text="Temizle" CssClass="buttongr" OnClick="refreshButton_Click" />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="reservationId" DataSourceID="SqlDataSource22" AllowPaging="False" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="reservationId" HeaderText="Rezervasyon Id" SortExpression="lessonname" Visible="False" />
                        <asp:BoundField DataField="lessonname" HeaderText="Ders Adı" SortExpression="lessonname" />
                        <asp:BoundField DataField="lessontype" HeaderText="Ders Tipi" SortExpression="lessontype" />
                        <asp:BoundField DataField="date_choose" HeaderText="Tarih" SortExpression="date_choose" />
                        <asp:BoundField DataField="hour" HeaderText="Saat" SortExpression="hour" />
                        <asp:BoundField DataField="name" HeaderText="Öğretmen Adı" SortExpression="name" />
                        <asp:BoundField DataField="surname" HeaderText="Öğretmen Soyadı" SortExpression="surname" />
                        <asp:BoundField DataField="email" HeaderText="E-posta" SortExpression="email" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowSelectButton="True" Visible="False" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient"
                    DeleteCommand="DELETE FROM [reservation] WHERE [reservationId] = @reservationId"
                    SelectCommand="SELECT [studentId], teacher.name, teacher.surname, [date_choose], [hour], [lessonname], [lessontype],  reservationId, teacher.email FROM [reservation] JOIN teacher ON reservation.teacherId = teacher.teacherId WHERE ([studentId] = @studentId)"
                    UpdateCommand="UPDATE [reservation] SET [studentId] = @studentId, [teacherId] = @teacherId, [date_choose] = @date_choose, [hour] = @hour, [lessonname] = @lessonname, [lessontype] = @lessontype WHERE [reservationId] = @reservationId"
                    FilterExpression="name LIKE '{0}%' or surname LIKE '{1}%' or lessontype LIKE '{2}%' OR  date_choose LIKE '{3}%' OR hour LIKE '{4}%' OR lessonname LIKE '{5}%'">
                    <DeleteParameters>
                        <asp:Parameter Name="reservationId" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="studentId" Type="Int32" />
                    </SelectParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="[name]" ControlID="txtSearch" PropertyName="Text" />
                        <asp:ControlParameter Name="[surname]" ControlID="txtSearch" PropertyName="Text" />
                        <asp:ControlParameter Name="[lessontype]" ControlID="txtSearch" PropertyName="Text" />
                        <asp:ControlParameter Name="[date_choose]" ControlID="txtSearch" PropertyName="Text" />
                        <asp:ControlParameter Name="[hour]" ControlID="txtSearch" PropertyName="Text" />
                        <asp:ControlParameter Name="[lessonname]" ControlID="txtSearch" PropertyName="Text" />
                    </FilterParameters>

                </asp:SqlDataSource>
                <br />

            </div>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherControl.aspx.cs" Inherits="CourseProject.teacherControl" %>

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
            <a class="active2" href="teacherControl.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>

            <a href="teacherControl.aspx"><i class="fa fa-fw fa-book"></i>Rezervasyon Kontrol Paneli</a>
            <a href="#" style="float: right">
                <asp:HyperLink runat="server" NavigateUrl="~/teacher.aspx" Font-Underline="false" Style="float: right">
                    <asp:Label ID="icon" runat="server"></asp:Label>
                </asp:HyperLink>
                 <asp:LinkButton  runat="server" NavigateUrl="~/home3.aspx" Font-Underline="false" style="float: right" OnClick="Logout_Click">
                   <i class="fa fa-sign-out" aria-hidden="true"></i> 
               </asp:LinkButton>
            </a>

        </div>
        <div class="wrap33">

            <div class="content33">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reservationId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="lessontype" HeaderText="Ders Tipi" SortExpression="lessontype" />
                        <asp:BoundField DataField="date_choose" HeaderText="Tarih" SortExpression="date_choose" />
                        <asp:BoundField DataField="hour" HeaderText="Saat" SortExpression="hour" />
                        <asp:BoundField DataField="name" HeaderText="Öğrenci Adı" SortExpression="name" />
                        <asp:BoundField DataField="surname" HeaderText="Öğrenci Soyadı" InsertVisible="False" ReadOnly="True" SortExpression="surname" />
                        <asp:BoundField DataField="teacherId" HeaderText="teacherId" SortExpression="teacherId" Visible="False" />
                        <asp:CommandField CancelText="İptal" DeleteText="Sil" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True"
                    DeleteCommand="DELETE FROM [reservation] WHERE [reservationId] = @reservationId"
                    ProviderName="System.Data.SqlClient"
                    SelectCommand="SELECT student.name, student.surname, [teacherId], [date_choose], [hour], [lessonname], [lessontype], reservationId FROM [reservation] JOIN [student] ON reservation.studentId=student.studentId WHERE ([teacherId] = @teacherId)">
                    <DeleteParameters>
                        <asp:Parameter Name="reservationId" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="teacherId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>


        </div>



    </form>
</body>
</html>


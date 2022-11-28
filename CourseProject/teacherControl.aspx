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
            <a class="active2" href="home3.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>

            <a href="teacherLogin.aspx"><i class="fa fa-fw fa-book"></i>Eğitmen</a>
            <a  href="#" style="float: right">
                <asp:Label id="icon" runat="server"></asp:Label>
            </a>
        </div>
        <div class="wrap33">
                      
            <div class="content33">
               

                


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="lessontype" HeaderText="Ders Tipi" SortExpression="lessontype" />
                        <asp:BoundField DataField="date_choose" HeaderText="Tarih" SortExpression="date_choose" />
                        <asp:BoundField DataField="hour" HeaderText="Saat" SortExpression="hour" />
                        <asp:BoundField DataField="name" HeaderText="Öğrenci Ad" SortExpression="student.name" />
                        <asp:BoundField DataField="surname" HeaderText="Öğrenci Soyad" SortExpression="student.surname" />
                        <asp:CommandField CancelText="İptal Et" DeleteText="Sil" EditText="Düzenle" ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" DeleteText="Sil" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT student.name, student.surname, [teacherId], [date_choose], [hour], [lessonname], [lessontype] FROM [reservation] JOIN [student] ON reservation.studentId=student.studentId WHERE ([teacherId] = @teacherId)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="teacherId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
               


            </div>


        </div>

    </form>
</body>
</html>


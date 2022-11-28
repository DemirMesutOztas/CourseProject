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
            <a class="active2" href="home3.aspx"><i class="fa fa-fw fa-home"></i>Özel Ders</a>

            <a href="studentControl.aspx"><i class="fa fa-fw fa-book"></i>Kontrol Paneli</a>
            <a  href="#" style="float: right">
                <asp:Label id="icon" runat="server"></asp:Label>
            </a>
        </div>
        <div class="wrap33">
                      
            <div class="content33">
               

                


                


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="lessonname" HeaderText="Ders Adı" SortExpression="lessonname" />
                        <asp:BoundField DataField="lessontype" HeaderText="Ders Tipi" SortExpression="lessontype" />
                        <asp:BoundField DataField="name" HeaderText="Eğitmen Adı" SortExpression="teacher.name" />
                        <asp:BoundField DataField="surname" HeaderText="Eğitmen Soyadı" SortExpression="teacher.surname" />
                        <asp:BoundField DataField="date_choose" HeaderText="Tarih" SortExpression="date_choose" />
                        <asp:BoundField DataField="hour" HeaderText="Saat" SortExpression="hour" />
                        <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=course;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [studentId], teacher.name, teacher.surname, [date_choose], [hour], [lessonname], [lessontype] FROM [reservation] JOIN teacher ON reservation.teacherId = teacher.teacherId WHERE ([studentId] = @studentId)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="studentId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
               

                


                


            </div>


        </div>

    </form>
</body>
</html>

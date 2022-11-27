<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeBasic.aspx.cs" Inherits="CourseProject.WebForm1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="./css/main2.css" rel="stylesheet" />

    <title>Özel Ders Rezervasyon</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</head>
<body>
    <form id="form2" runat="server">

        <ul>
            <li><a href="homeBasic.aspx">Özel Ders Rezervasyon</a></li>
            <li><a href="#news">Dersler</a></li>
            <li><a href="#contact">Contact</a></li>
            <li style="float: right"><a class="active" href="teacherLogin.aspx">Eğitmen</a></li>
            <li style="float: right"><a href="#"><i class="fa fa-fw fa-user""></i></a></li>
        </ul>
    

    </form>
</body>
</html>




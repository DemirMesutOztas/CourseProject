<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="CourseProject.homepage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Özel Ders Platformu</title>
    <link href="https://fonts.googleapis.com/css?family=Cabin&display=swap" rel="stylesheet" />
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-size: 20px;
        }

        .v1_2 {
            width: 100%;
            height: 1034px;
            background: rgba(98,119,227,1);
            opacity: 1;
            position: relative;
            top: 0px;
            left: 0px;
            overflow: hidden;
        }

        .v11_66 {
            width: 682px;
            height: 79px;
            background: rgba(217,217,217,1);
            opacity: 1;
            position: absolute;
            top: 553px;
            left: 70px;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            overflow: hidden;
        }

        .v1_3 {
            width: 100%;
            height: 149px;
            background: rgba(217,217,217,1);
            opacity: 1;
            position: relative;
            top: 0px;
            left: 0px;
            overflow: hidden;
        }

        .v1_4 {
            width: 360px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 62px;
            left: 28px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }

        .v10_10 {
            width: 426px;
            height: 554px;
            background: url("../images/v10_10.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 223px;
            left: 774px;
            overflow: hidden;
        }

        .v10_6 {
            width: 91px;
            height: 43px;
            background: url("../images/v10_6.png");
            opacity: 1;
            position: absolute;
            top: 450px;
            left: 159px;
        }

        .v1_46 {
            width: 426px;
            height: 554px;
            background: rgba(217,217,217,1);
            opacity: 1;
            position: relative;
            top: 0px;
            left: 0px;
        }

        .v10_4 {
            width: 218px;
            color: rgba(19,201,201,100);
            position: absolute;
            top: 97px;
            left: 50px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v10_2 {
            width: 151px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 48px;
            left: 46px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v1_52 {
            width: 52px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 308px;
            left: 55px;
            font-family: Cabin;
            font-weight: 400;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }

        .v1_51 {
            width: 150px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 181px;
            left: 50px;
            font-family: Cabin;
            font-weight: 400;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }

        .v1_53 {
            width: 334px;
            height: 45px;
            background: rgba(249,243,243,1);
            opacity: 1;
            position: absolute;
            top: 220px;
            left: 46px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            overflow: hidden;
        }

        .v1_54 {
            width: 334px;
            height: 45px;
            background: rgba(249,243,243,1);
            opacity: 1;
            position: absolute;
            top: 347px;
            left: 46px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            overflow: hidden;
        }

        .v10_8 {
            width: 125px;
            height: 43px;
            background: rgba(98,119,227,1);
            opacity: 1;
            position: absolute;
            top: 450px;
            left: 150px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            overflow: hidden;
        }

        .v10_9 {
            width: 50px;
            color: rgba(255,255,255,1);
            position: absolute;
            top: 457px;
            left: 180px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }

        .v10_11 {
            width: 212px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 13px;
            left: 48px;
            font-family: Cabin;
            font-weight: 300;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v12_3 {
            width: 100px;
            height: 100px;
            background: rgba(217,217,217,1);
            opacity: 1;
            position: absolute;
            top: 36px;
            left: 326px;
            overflow: hidden;
        }

        .v102_28 {
            width: 200px;
            height: 51px;
            background: url("../images/v102_28.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 418px;
            left: 141px;
            overflow: hidden;
        }

        .v102_29 {
            width: 200px;
            height: 49px;
            background: rgba(255,255,255,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            overflow: hidden;
        }

        .v102_35 {
            width: 74px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 10px;
            left: 63px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }

        .v102_33 {
            width: 200px;
            height: 51px;
            background: url("../images/v102_33.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 416px;
            left: 440px;
            overflow: hidden;
        }

        .v102_34 {
            width: 200px;
            height: 49px;
            background: rgba(255,255,255,1);
            opacity: 1;
            position: relative;
            top: 0px;
            left: 0px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            overflow: hidden;
        }

        .v102_36 {
            width: 92px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 10px;
            left: 54px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }

        .v102_12 {
            width: 45px;
            height: 41px;
            background: url("../images/v102_12.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 566px;
            left: 607px;
            overflow: hidden;
        }

        .v102_11 {
            width: 45px;
            height: 41px;
            background: rgba(35,31,32,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
        }

        .v114_6 {
            width: 231px;
            height: 45px;
            background: rgba(98,119,227,1);
            padding: 3px 64px;
            margin: 10px;
            opacity: 1;
            position: absolute;
            top: 61px;
            left: 521px;
            border-top-left-radius: 25px;
            border-top-right-radius: 25px;
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            overflow: hidden;
        }

        .v114_7 {
            width: 103px;
            color: rgba(0,0,0,1);
            position: absolute;
            top: 3px;
            left: 64px;
            font-family: Cabin;
            font-weight: 600;
            font-size: 20px;
            opacity: 1;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="v1_2">
            <div class="v11_66"></div>
            <div class="v1_3"></div>
            <span class="v1_4">Özel Ders Rezervasyon</span>
            <div class="v10_10">
                <div class="v10_6"></div>
                <div class="v1_46">
                    <span class="v10_11">Öğrenci / Eğitmen</span>
                </div>
                <span class="v10_4">Yeni Kullanıcı ?  Hesap aç</span>
                <span class="v10_2">Oturum aç</span>
                <span class="v1_52">Şifre</span>
                <span class="v1_51">E-posta adresi</span>
                <div class="v1_53"></div>
                <div class="v1_54"></div>
                <div class="v10_8"></div>
                <span class="v10_9">Giriş</span>
                <div class="v12_3"></div>

            </div>
            <div class="v102_28">
                <div class="v102_29"></div>
                <span class="v102_35">Online</span>

            </div>
            <div class="v102_33">
                <div class="v102_34"></div>
                <span class="v102_36">Yüzyüze</span>

            </div>
            <div class="v102_12">
                <div class="v102_11"></div>
            </div>
            <div class="v114_6">
                <span class="v114_7">Dersler</span>
            </div>

        </div>


    </form>
</body>
</html>

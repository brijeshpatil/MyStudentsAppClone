<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="StudentWebApp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <style type="text/css">
        .txt {
            width:250px;
            height:25px;
        }
        .btn {
            background-color:#3b7687;
            color:#c5d6db;
            height:35px;
            width:100px;
            font-weight:bold;
        }
    </style>
    <script src="jquery-1.6.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_Button1").click(function () {
                var str = "";
                if ($("#ContentPlaceHolder1_txtfname").val() == "") {
                    str += "Please Enter Your FirstName \n";
                }
                if ($("#ContentPlaceHolder1_txtlname").val() == "") {
                    str += "Please Enter Your LastName \n";
                }
                if ($("#ContentPlaceHolder1_txtUName").val() == "") {
                    str += "Please Enter Your UserName\n";
                }
                var emailexp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

                if ($("#ContentPlaceHolder1_txtUName").val() != "") {
                    if (!$("#ContentPlaceHolder1_txtUName").val().match(emailexp)) {
                        str += "Please Enter Valid UserName \n";
                    }
                }

                if ($("#ContentPlaceHolder1_txtPass").val() == "") {
                    str += "Please Enter Your Password \n";
                }
                if ($("#ContentPlaceHolder1_txtCPass").val() == "") {
                    str += "Please Enter Your Confirm Password \n";
                }
                if ($("#ContentPlaceHolder1_txtPass").val() != $("#ContentPlaceHolder1_txtCPass").val()) {
                    str += "Password Not Matched \n";
                }

                if (str != "") {
                    alert(str);
                    return false;
                }
                else {
                    return true;
                }
            });

            $("#ContentPlaceHolder1_Button2").click(function () {

                var str = "";
                if ($("#ContentPlaceHolder1_txtLogUserName").val() == "") {
                    str += "Please Enter Your UserName\n";
                }
                var emailexp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

                if ($("#ContentPlaceHolder1_txtLogUserName").val() != "") {
                    if (!$("#ContentPlaceHolder1_txtLogUserName").val().match(emailexp)) {
                        str += "Please Enter Valid UserName \n";
                    }
                }

                if ($("#ContentPlaceHolder1_txtLogPass").val() == "") {
                    str += "Please Enter Your Password \n";
                }

                if (str != "") {
                    alert(str);
                    return false;
                }
                else {
                    return true;
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <table cellspacing="20" >
                    <caption style="font-weight:bold;">Student Registration</caption>
                    <tr>
                        <td>First Name</td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>UserName</td>
                        <td>
                            <asp:TextBox ID="txtUName" runat="server" CssClass="txt" PlaceHolder="Enter Your EmailID"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td>
                            <asp:TextBox ID="txtCPass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" OnClick="Button1_Click" />
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2" align="center" style="color:#3b7687;">
                            <asp:Label ID="lblSuccess" runat="server" Text=" "></asp:Label>

                        </td>
                    </tr>
                </table>

            </td>
            <td valign="Top" align="Right">
                <table  cellspacing="20" style="box-shadow:0px 0px 10px #3b7687; border-radius:10px 10px 10px 10px;">
                    <tr>
                        <td colspan="2" align="center"  style="font-weight:bold;">Student Login</td>
                    </tr>
                    <tr>
                        <td>UserName</td>
                        <td>
                            <asp:TextBox ID="txtLogUserName" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtLogPass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Login" CssClass="btn" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" style="color:#3b7687;">
                            <asp:Label ID="lblErorr" runat="server" Text=" "></asp:Label>

                        </td>
                    </tr>
                </table>

            </td>
        </tr>

    </table>
    
</asp:Content>

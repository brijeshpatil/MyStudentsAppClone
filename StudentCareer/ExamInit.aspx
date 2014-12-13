<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamInit.aspx.cs" Inherits="StudentWebApp.StudentCareer.ExamInit" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body {
            background: #F4F4F4;
            margin: 0;
        }

        #container {
            width: 90%;
            margin: 0 auto;
            background: #FFFFFF;
        }

        #header {
            padding: 45px 0 20px 40px;
        }

            #header a {
                color: #121212;
                text-decoration: none;
                font-size: 30px;
                font-family: "Myriad Pro", "Arial Narrow";
            }

        #menu {
            background-color: #3b7687;
            padding: 6px 0 6px 40px;
        }

            #menu a {
                color: #c5d6db;
                text-decoration: none;
                font-size: 14px;
                font-family: "Arial Narrow", "Myriad Pro";
            }

                #menu a:hover {
                    color: #ecf2f3;
                }

        #sidebar {
            float: left;
            width: 120px;
            padding: 30px 0 0 40px;
            margin: 0;
        }

        h1 {
            margin: 0px;
            color: #869843;
            font-size: 24px;
            font-family: "Arial Narrow", "Myriad Pro";
            font-weight: normal;
        }

        h2 {
            color: #3b7687;
            font-size: 15px;
            margin: 20px 0 5px 0;
        }

        #main {
            margin: 0 0 0 180px;
            padding: 35px 40px 30px 0;
            color: #444444;
            font-family: "Georgia";
            font-size: 13px;
            line-height: 18px;
            text-align: justify;
            min-height: 500px;
        }

            #main a {
                color: #3b7687;
                text-decoration: none;
            }

                #main a:hover {
                    color: #444444;
                }

        #footer {
            padding: 6px 40px 6px 40px;
            background: #d6d6d6;
            font-family: "Lucida Sans Unicode";
            color: #444444;
            font-size: 11px;
            text-align: right;
        }

            #footer a {
                text-decoration: none;
                color: #262626;
            }

                #footer a:hover {
                    color: #666666;
                }

        .separator {
            font-size: 11px;
            color: #FFFFFF;
        }

        input[type='submit'] {
            background-color: #3b7687;
            color: #c5d6db;
            height: 35px;
            width: 100px;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <div id="container">
            <div id="header"><a href="#">Student Assessment</a> </div>
            <div id="menu">
                <a href="#">&nbsp;</a>
                <div style="float: right; margin-right: 10px; color: white; font-weight: bold;">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                </div>

            </div>
            <div id="sidebar">
                <h1></h1>
            </div>
            <div id="main">
                <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>--%>
                <asp:Panel ID="Panel1" runat="server" Width="100%" Height="450px" ScrollBars="Both">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="Qid" OnDataBound="GridView1_DataBound" CellPadding="10" CellSpacing="10" Font-Names="Verdana" ShowFooter="True">
                        <Columns>
                            <asp:TemplateField HeaderText="Questions">
                                <FooterTemplate>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClientClick="return confirm('Are you sure to Submit your Exam?');" OnClick="Button1_Click" CausesValidation="false" />
                                </FooterTemplate>
                                <ItemTemplate>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td>
                                                <b>Question: &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b><br />
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("question") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>A)</b>
                                                <asp:RadioButton ID="RadioButton1" runat="server" Text='<%# Bind("opA") %>' GroupName="Opstions" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>B)</b>
                                                <asp:RadioButton ID="RadioButton2" runat="server" Text='<%# Bind("opB") %>' GroupName="Opstions" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>C)</b>
                                                <asp:RadioButton ID="RadioButton3" runat="server" Text='<%# Bind("opC") %>' GroupName="Opstions" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>D)</b>
                                                <asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Bind("opD") %>' GroupName="Opstions" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
                <asp:Panel ID="PanelComplete" runat="server" Visible="false">
                    <h1>
                        <asp:Label ID="lblMarks" runat="server" Text=""></asp:Label>
                    </h1>
                    <br />
                    <asp:Label ID="lblSuggetions" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <a href="SelectExam.aspx">Click here....</a>
                </asp:Panel>
                <%--    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </div>
            <div id="footer">&copy;2014 Keep smiling &nbsp;<span class="separator">|</span>&nbsp; Design by <a href="#">Brijesh Patil</a> </div>
        </div>

    </form>
</body>
</html>

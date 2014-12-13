<%@ Page Title="" Language="C#" MasterPageFile="~/MyERP/ERPMasterPage.Master" AutoEventWireup="true" CodeBehind="ManageQuestionBank.aspx.cs" Inherits="StudentWebApp.MyERP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style type="text/css">
        select {
            width: 250px;
            height: 35px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width: 100%;">
        <tr>
            <td>
                <asp:DropDownList ID="drpQuestionType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpQuestionType_SelectedIndexChanged"></asp:DropDownList>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Panel ID="pnlExtractQuestions" runat="server" Visible="false">
                    Select File with xlsx Extension....<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <%--<cc1:AsyncFileUpload ID="FileUpload1" runat="server" />--%>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Extract" OnClick="Button1_Click" />
                </asp:Panel>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" Width="100%">
        <Columns>
            <asp:TemplateField HeaderText="Questions">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("question") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:40%;">Option A:&nbsp;
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("opA") %>'></asp:Label>
                            </td>
                            <td style="width:40%;">Option B:&nbsp;
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("opB") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width:40%;">Option C:&nbsp;
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("opC") %>'></asp:Label></td>
                            <td style="width:40%;">Option D:&nbsp;
                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("opD") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label6" runat="server" Text='<%#Bind("correctans") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td align="right">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EditItemTemplate>

                    <table>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("question") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Option A:&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("opA") %>'></asp:TextBox>
                            </td>
                            <td>Option B:&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("opB") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Option C:&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("opC") %>'></asp:TextBox></td>
                            <td>Option D:&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("opD") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("corrctans") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Update">Update</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <h2>Sorry, No Questions available.....</h2>
            <br />

            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Click Here to Upload Questions....</asp:LinkButton>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

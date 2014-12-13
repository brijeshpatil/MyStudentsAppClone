<%@ Page Title="" Language="C#" MasterPageFile="~/MyERP/ERPMasterPage.Master" AutoEventWireup="true" CodeBehind="ExamTypes.aspx.cs" Inherits="StudentWebApp.MyERP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridviewExamTypes" runat="server" AutoGenerateColumns="False" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" DataKeyNames="ExamTypeID" OnRowCancelingEdit="GridviewExamTypes_RowCancelingEdit" OnRowEditing="GridviewExamTypes_RowEditing" OnRowUpdating="GridviewExamTypes_RowUpdating" OnRowCommand="GridviewExamTypes_RowCommand" ShowHeaderWhenEmpty="True" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Exam Type ID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ExamTypeID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Exam Type">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ExamType") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ExamType") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Required="required"></asp:TextBox>&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add" CommandName="Add" />
                </HeaderTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</asp:Content>

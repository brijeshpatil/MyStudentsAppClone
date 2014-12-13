<%@ Page Title="" Language="C#" MasterPageFile="~/StudentCareer/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="SelectExam.aspx.cs" Inherits="StudentWebApp.StudentCareer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style type="text/css">
        select {
            width: 350px;
            height: 35px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:DropDownList ID="drpExamType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpExamType_SelectedIndexChanged"></asp:DropDownList>
    &nbsp;&nbsp;
    <span style="color:red;">
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    </span>
</asp:Content>

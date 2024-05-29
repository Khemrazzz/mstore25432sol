<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="pageispostback.aspx.cs" Inherits="mstore25432.Tutorial.week2.pageispostback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">


    <div>
 <asp:DropDownList
 ID="DropDownList1"
 runat="server" />
 <asp:Button
 ID="Button1"
 Text="Select"
 OnClick="Button1_Click"
 runat="server" />
 <br />
 <br />
 You selected:
 <asp:Label
 ID="Label1"
 runat="server" />
 </div>
</asp:Content>

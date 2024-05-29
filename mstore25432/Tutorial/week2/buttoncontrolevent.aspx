<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="buttoncontrolevent.aspx.cs" Inherits="mstore25432.Tutorial.week2.buttoncontrolevent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
     <asp:Button
         ID="btnSubmit" OnClick="btnSubmit_Click"
         Text="Click Here"
         runat="server" />
     <br />
     <br />
     <asp:Label
         ID="Label1"
         runat="server" />
 </div>
</asp:Content>

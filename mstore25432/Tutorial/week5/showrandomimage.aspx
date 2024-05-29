<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="showrandomimage.aspx.cs" Inherits="mstore25432.Tutorial.week5.showrandomimage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <user:RandomImage ID="rndImage" ImageFolderPath="~/images2" runat="server" />


</asp:Content>

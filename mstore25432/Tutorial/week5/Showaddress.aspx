<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="Showaddress.aspx.cs" Inherits="mstore25432.Tutorial.week5.Showaddress" %>
<%@ Register TagPrefix="user" TagName="Address" Src="~/Tutorial/week5/addressform.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="content">
        <user:Address ID="ucBilling" runat="server"/>

        <asp:Button
            ID="btnSubmit"
             OnClick="btnSubmit_Click"
            Text="Submit Form"
            runat="server" />
        <hr />
        <asp:Literal
            ID="ltlResults"
            runat="server" />
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="imagebutton.aspx.cs" Inherits="mstore25432.Tutorial.week2.imagebutton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">


    <div>
        <asp:ImageButton
            ID="btnHouse"
            ImageUrl="~/images/house.jpg"
            runat="server" OnClick="btnHouse_Click" />
        <br />
        X Coordinate:

        <asp:Label
            ID="lblX"
            runat="server" />
        <br />
        Y Coordinate:

        <asp:Label
            ID="lblY"
            runat="server" />
    </div>
</asp:Content>

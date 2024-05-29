<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="twobutton.aspx.cs" Inherits="mstore25432.Tutorial.week2.twobutton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        First Counter:

        <asp:Button
            ID="Button1"
            Text="0"
            OnClick="Button1_Click"
            runat="server" />
        <br />
        <br />
        Second Counter:

        <asp:Button
            ID="Button2"
            Text="0"
            OnClick="Button2_Click"
            runat="server" />
    </div>
</asp:Content>

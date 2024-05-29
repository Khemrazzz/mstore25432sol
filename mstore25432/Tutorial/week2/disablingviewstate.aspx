<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="disablingviewstate.aspx.cs" Inherits="mstore25432.Tutorial.week2.disablingviewstate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        Label 1:
        <asp:Label
            ID="Label1"
            EnableViewState="false"
            Text="0"
            runat="server" />
        <br />
        Label 2:
        <asp:Label
            ID="Label2"
            Text="0"
            runat="server" />
        <br />
        <br />
        <asp:Button
            ID="btnAdd"
            Text="Add"
            OnClick="btnAdd_Click"
            runat="server" />
    </div>
</asp:Content>

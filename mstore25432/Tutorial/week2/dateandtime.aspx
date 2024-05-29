<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="dateandtime.aspx.cs" Inherits="mstore25432.Tutorial.week2.dateandtime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        The current date and time is:
        <asp:Label
            ID="lblServerTime"
            runat="server" />
    </div>
</asp:Content>

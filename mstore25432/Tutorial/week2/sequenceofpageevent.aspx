<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="sequenceofpageevent.aspx.cs" Inherits="mstore25432.Tutorial.week2.sequenceofpageevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div>
        <asp:Button
            ID="Button1"
            Text="Click Here"
            OnClick="Button1_Click"
            runat="server" />
        <br />
        <br />
        <asp:Label
            ID="Label1"
            runat="server" />
    </div>

</asp:Content>

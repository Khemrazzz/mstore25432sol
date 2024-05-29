<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="showrndquotation.aspx.cs" Inherits="mstore25432.Tutorial.week5.showrndquotation" %>

<%@ Register TagPrefix="user" TagName="RandomQuote" Src="~/Tutorial/week5/rndquotation.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .quote {
            width: 200px;
            padding: 20px;
            border: Dotted 2px orange;
            background-color: #eeeeee;
            font: 16px Georgia,Serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>
        <%= DateTime.Now %>
        <br />
        <asp:Timer ID="Timer1" Interval="3000" runat="server"></asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 

            <ContentTemplate>

                <user:RandomQuote ID="ucrquote" runat="server" />
            </ContentTemplate>
            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

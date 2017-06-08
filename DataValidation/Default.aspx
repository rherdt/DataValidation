<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataValidation._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" BackColor="SlateGray">
        <asp:Label ID="rangeTextboxLabel" runat="server" Width="100%">Enter the day of the month you were born:</asp:Label>
        <asp:TextBox ID="rangeTextBox" runat="server" ValidationGroup="Group1" />
        <asp:RangeValidator ID="rangeValidator" runat="server"
            ErrorMessage="The entered number is out of range."
            ControlToValidate="rangeTextBox"
            Display="None"
            MaximumValue="31"
            MinimumValue="1"
            ValidationGroup="Group1"
            ForeColor="Red"
            Type="Integer" />
        <br />
        <br />
        <asp:Label ID="RequiredFieldLabel" runat="server" Width="100%">Enter your name:</asp:Label>
        <asp:TextBox ID="RequiredNameTextbox" runat="server" ValidationGroup="Group1" />
        <asp:RequiredFieldValidator ID="RequiredValidator" runat="server"
            ErrorMessage="Name Required"
            Display="None"
            ControlToValidate="RequiredNameTextbox"
            ValidationGroup="Group1"
            ForeColor="Red" />
        <br />
        <br />
        <asp:Label ID="SecurityLabel" runat="server" Width="100%">Enter the security phrase:</asp:Label>
        <asp:TextBox ID="securityTextBox" runat="server" />
        <asp:CompareValidator ID="CompareFieldValidator" runat="server"
            ErrorMessage="The entered phrase does not match the provided phrase"
            ValidationGroup="Group1"
            Display="None"
            ControlToValidate="securityTextBox"
            ControlToCompare="securityPhraseTextBox"
            ForeColor="Red" />
        <br />
        <br />
        <asp:Panel runat="server">
            <asp:Label runat="server" Width="100%">Security Phrase:</asp:Label>
            <asp:TextBox ID="securityPhraseTextBox" BackColor="SlateGray" runat="server" ReadOnly="true" BorderColor="Black" BorderStyle="Solid" ValidationGroup="Group2"></asp:TextBox>
            <asp:Button ID="RefreshButton" OnClick="RefreshButton_Click" Text="New Phrase" runat="server" />
            <br />
            <br />
        </asp:Panel>
        <asp:Button runat="server" ID="submitButton" Text="Submit!" OnClick="submitButton_Click" ValidationGroup="Group1"/>
        <br />
        <br />
        <asp:ValidationSummary id="Errors" ForeColor="Red" runat="server" ValidationGroup="Group1"/>
        <asp:Label ID="MessageLabel" runat="server" EnableViewState="false" />
    </asp:Panel>

</asp:Content>

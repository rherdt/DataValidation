<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ManualValidation.aspx.cs" Inherits="DataValidation.ManualValidation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" BackColor="SlateGray">      
        <h3 id="header">Enter a numeric value with checksum zero:</h3>
        <br />
        <asp:TextBox ID="InputTexbox" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="InputValidator" runat="server"
            Type="Integer"
            ErrorMessage="Input must be numeric, greater than 0, and less than 99999"
            ForeColor="Red"
            MaximumValue="99999"
            MinimumValue="0"
            ControlToValidate="InputTexbox">
        </asp:RangeValidator>
        <br />
        <br />
         <asp:Button ID="SubmitButton" OnClick="SubmitButton_Click" Text="Submit" runat="server" />
        <br />
        <br />
        <asp:Label ID="ResultLabel" runat="server"></asp:Label>
    </asp:Panel>
</asp:Content>

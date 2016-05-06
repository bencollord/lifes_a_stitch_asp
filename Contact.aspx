<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Main" ContentPlaceHolderId="MainContent" runat="server">

  <main class="container">
    <h1>Contact Us</h1>
    <h2 class="tagline">Drop us a line, we're here to help!</h2>
    <div class="row">
      <section class="six columns">

        <asp:Label ID="lblSentStatus" runat="server" Visible="false"></asp:Label>

        <label>Name</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="u-full-width"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="isNotValid" ControlToValidate="txtName" ErrorMessage="Name is a required field" />
	
        <label>Email Address</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="u-full-width"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvEmail" runat="server" CssClass="isNotValid" ControlToValidate="txtEmail" ErrorMessage="Email address is a required field" />
          <asp:RegularExpressionValidator ID="revEmail" runat="server" CssClass="isNotValid" ControlToValidate="txtEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="Please enter a valid email address" />

        <label>Message</label>
        <textarea runat="server" id="txtMessage" class="u-full-width" rows="7" cols="24"></textarea>
          <asp:RequiredFieldValidator ID="rfvMessage" runat="server" CssClass="isNotValid" ControlToValidate="txtMessage" ErrorMessage="Please enter a message." />

        <asp:Button runat="server" ID="btnSubmit" CssClass="button button-submit" onclick="btnSubmit_Click" Text="Send" />
      </section>
      <section class="six columns map-wrapper">
        <div id="map"></div>
      </section>
    </div>
  </main>

</asp:Content>
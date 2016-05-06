<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"%>
<asp:Content ID="Main" CssClass="container" ContentPlaceHolderId="MainContent" runat="server">

    <main class="container">
      <section>
        <h1>Thank you for your message!</h1>
        <p>We always value customer feedback. We will respond to you in 3 days or less.</p>
      </section>
      <section class="row" id="countDown">
        <div class="three columns card counter">
          <div class="ticker" id="days">
            3
          </div>
          <h2>Days</h2>
        </div>
        <div class="three columns card counter">
          <div class="ticker" id="hours">
            00
          </div>
          <h2>Hours</h2>
        </div>
        <div class="three columns card counter">
          <div class="ticker" id="minutes">
            00
          </div>
          <h2>Minutes</h2>
        </div>
        <div class="three columns card counter">
          <div class="ticker" id="seconds">
            00
          </div>
          <h2>Seconds</h2>
        </div>
      </section>
    </main>
</asp:Content>
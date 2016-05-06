
<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Main" CssClass="container" ContentPlaceHolderId="MainContent" runat="server">
  <section id="banner" class="banner banner-main">
    <div class="container row">
      <div class="six columns">
        <h1>Welcome.</h1>
        <p>We're a locally owned and operated business in Riverbank, California specializing in custom embroidery, apparel, and screen printing.</p>
        <a href="http://www.companycasuals.com/zlifesastitch/start.jsp" class="button button-primary">View Our Catalog</a>
      </div>
    </div>
  </section>
  <main class="container">
    <section class="row">
      <div class="twelve columns">
        <h2>Services We Offer</h2>
        <p>We have something to offer for nearly any occasion. Having a family reunion? We'll print you some transfer shirts for the entire family! Need logo shirts for a special company function or custom monogrammed napkins for your wedding? We've got you covered. From , to small businesses, clubs, and organizations, we do it all, and we do it well.</p>
      </div>
    </section>
    <section class="feature-list">
      <div class="row">
        <div class="four columns feature-list-tile">
          <i class="feature-list-icon fa fa-shirtsinbulk"></i>
          <!--img src="images/icon-sewing.png" alt="Sewing machine icon" class="feature-list-icon" /-->
          <h3>Custom embroidery</h3>
        </div>
        <div class="col four columns feature-list-tile">
          <i class="feature-list-icon fa fa-fire"></i>
          <!--img src="images/icon-printed-shirt.png" alt="Printed shirt icon" class="feature-list-icon" /-->
          <h3>Heat transfer printing</h3>
        </div>
        <div class="four columns feature-list-tile">
          <i class="feature-list-icon fa fa-pencil-square-o"></i>
          <!--img src="images/icon-art-design.png" alt="Paintbrush icon" class="feature-list-icon" /-->
          <h3>Logo and art design</h3>
        </div>
      </div>
      <div class="row">
        <div class="four columns feature-list-tile">
          <i class="feature-list-icon fa fa-tag"></i>
          <!--img src="images/icon-cap.png" alt="Baseball cap icon" class="feature-list-icon" /-->
          <h3>Apparel and caps</h3>
        </div>
        <div class="four columns feature-list-tile">
          <i class="feature-list-icon fa fa-coffee"></i>
          <!--img src="images/icon-coffeecup.png" alt="Coffee cup icon" class="feature-list-icon" /-->
          <h3>Plates and coffee cups</h3>
        </div>
        <div class="four columns feature-list-tile">
          <i class="feature-list-icon fa fa-gift"></i>
          <!--img src="images/icon-mousepad.png" alt="Mouse pad icon" class="feature-list-icon" /-->
          <h3>Gifts and accessories</h3>
        </div>
      </div>
    </section>

    <section>
      <h2>Our Promises To You</h2>
      <div class="row">
        <div class="three columns card">
          <h4>No order too small</h4>
          <p>No matter how much or how little you need done, we've got you covered.</p>
        </div>

        <div class="three columns card">
          <h4>Quality at a fair price</h4>
          <p>We put maximum effort into every product we make, guaranteed.</p>
        </div>

        <div class="three columns card">
          <h4>Quick turnaround</h4>
          <p>Come to us at the last minute and we'll make it count.</p>
        </div>

        <div class="three columns card">
          <h4>Service and accountability</h4>
          <p>We get your approval at each step of your custom order</p>
        </div>
      </div>
    </section>
</main>
</asp:Content>
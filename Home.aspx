<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="100%"  Width="100%" />
        <cc1:SlideShowExtender ID="SlideShowExtender" runat="server" TargetControlID="Image1"
            SlideShowServiceMethod="GetImages" ImageTitleLabelID="lblImageTitle" ImageDescriptionLabelID="lblImageDescription"
            AutoPlay="true" PlayInterval="2000" Loop="true">
        </cc1:SlideShowExtender>
    </div>
    <div class="welcome">Welcome To VegEase</div>


  <section class="about">
   <div class="row">
      <div class="sideLogin">
         <img src="Images/b1.jpg" alt="">
      </div>
      <div class="content"><h3>Welcome To VegEase</h3>
         <p>At VegEase, Our goal is to provide you with a wide variety of vegetables as well as Fresh Fruits.</p>
      </div>
   </div>
</section>


                <div>
                    <footer class="footer">
   <section class="box-container">
      <div class="box">
         <img src="images/email-icon.png" alt=""><br />
         <h9 class="centered-text">our     email</h9>
         <a href="mailto:shaikhanas@gmail.com">vegease@gmail.com</a>
         
      </div>
      <div class="box">
         <img src="images/clock-icon.png" alt=""><br />
        <h9 class="centered-text">opening hours</h9>
         <a style="text-decoration: underline;">8am - 6pm</a>
      </div>
      <div class="box">
         <img src="images/map-icon.png" alt=""><br />
         <h9 class="centered-text" >our address</h9>
         <a href="https://www.google.com/maps">Dhaka- 400104</a>
      </div>
      <div class="box">
         <img src="images/phone-icon.png" alt=""><br />
         <h9 class="centered-text">our number</h9>
         <a href="tel:1234567890">+019xxxxxxxx</a>
        
      </div>
   </section>
  
</footer>
                    </div>

<%--<div>
    <div class="sideLogin">
        <img src="Images/b1.jpg" alt="First Image Description"class="vegease-image">
        <p>
            
          
        </p>
    </div>
</div>--%>
</asp:Content>


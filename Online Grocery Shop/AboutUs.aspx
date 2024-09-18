<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 30px;">About Us</legend>
            <div style="margin-left: 20px">
                <!-- Container for image and text -->
                <div style="display: flex; align-items: flex-start;">
                    <!-- Image with increased size -->
                    <img src="Images/b1.jpg" alt="VegEase Logo" style="width: 500px; height: auto; margin-right: 120px;"/>
                    <!-- Text content with limited width and centered alignment -->
                    <div style="flex: 1; max-width: 500px; display: flex; flex-direction: column; justify-content: center; align-items: center;">
                        <!-- Centered headline above the text -->
                        <h2 style="font-size: 24px; text-align: center; margin-top: 0;">Why Choose Us</h2>
                        <!-- Justified text content -->
                        <p style="font-size: 18px; line-height: 1.6; text-align: justify; text-align-last: center;">
                            At VegEase, our goal is to provide you with a wide variety of vegetables as well as fresh fruits. We are dedicated to offering high-quality produce that meets your needs and exceeds your expectations. Our commitment to freshness and customer satisfaction makes us a reliable choice for all your grocery needs.
                        </p>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>

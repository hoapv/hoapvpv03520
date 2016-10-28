<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="WebApplication1.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Liên Lạc Với Chúng tôi Để có được hỗ trợ mọi lúc mọi nơi</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">hotline:</span>
            <span>0936493147</span>
        </p>
        <p>
            <span class="label">hotline2:</span>
            <span>0165673454</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:hoapvph03520@fpt.edu.vn">hoapvph04030@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:hoapvph03520@fpt.edu.vn">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:hoapvph03520@fpt.edu.vn">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa Chỉ:</h3>
        </header>
        <p>
           Ngõ 63 đường 32 hồ tùng mậu hà nội-việt nam
        </p>
        <h2>check địa chỉ trên google</h2>
        <p>

            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.680509761918!2d105.7472713153231!3d21.045465892582797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454edd1024f9b%3A0x4f29156c5c5c47be!2zTmfDtSAxNzcsIFBow7pjIERp4buFbiwgVOG7qyBMacOqbSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1477038441338" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>
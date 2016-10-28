<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Hoapvph03520-inf2054 Điện Toán Đám Mây

                </h2>
            </hgroup>
            <p>
                Bảo Vệ Cuối Môn Điện Toán Đám Mây</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Hệ Thống Quản Lý Dữ Liệu</h3>
    <ol class="round">
        <li class="one">
            <h5>Bảng Khách Hàng</h5>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                </Columns>
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [CHITIETHOADON] ([MaCTHD], [MaHD], [MaSP], [SoLuong]) VALUES (@MaCTHD, @MaHD, @MaSP, @SoLuong)" SelectCommand="SELECT * FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [MaCTHD] = @MaCTHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaCTHD" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaCTHD" Type="Int32" />
                    <asp:Parameter Name="MaHD" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaHD" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MaCTHD" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>
        <li class="two">
            <h5>Bảng Hóa Đơn</h5>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:BoundField DataField="NgayDatHang" HeaderText="NgayDatHang" SortExpression="NgayDatHang" />
                    <asp:BoundField DataField="NgayGiaoHang" HeaderText="NgayGiaoHang" SortExpression="NgayGiaoHang" />
                    <asp:BoundField DataField="NoiGiaoHang" HeaderText="NoiGiaoHang" SortExpression="NoiGiaoHang" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [HOADON] WHERE [MaHD] = @original_MaHD AND [MaKH] = @original_MaKH AND [NgayDatHang] = @original_NgayDatHang AND [NgayGiaoHang] = @original_NgayGiaoHang AND [NoiGiaoHang] = @original_NoiGiaoHang" InsertCommand="INSERT INTO [HOADON] ([MaHD], [MaKH], [NgayDatHang], [NgayGiaoHang], [NoiGiaoHang]) VALUES (@MaHD, @MaKH, @NgayDatHang, @NgayGiaoHang, @NoiGiaoHang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaHD], [MaKH], [NgayDatHang], [NgayGiaoHang], [NoiGiaoHang] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [MaKH] = @MaKH, [NgayDatHang] = @NgayDatHang, [NgayGiaoHang] = @NgayGiaoHang, [NoiGiaoHang] = @NoiGiaoHang WHERE [MaHD] = @original_MaHD AND [MaKH] = @original_MaKH AND [NgayDatHang] = @original_NgayDatHang AND [NgayGiaoHang] = @original_NgayGiaoHang AND [NoiGiaoHang] = @original_NoiGiaoHang">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaHD" Type="Int32" />
                    <asp:Parameter Name="original_MaKH" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_NgayDatHang" />
                    <asp:Parameter DbType="Date" Name="original_NgayGiaoHang" />
                    <asp:Parameter Name="original_NoiGiaoHang" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="Int32" />
                    <asp:Parameter Name="MaKH" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="NgayDatHang" />
                    <asp:Parameter DbType="Date" Name="NgayGiaoHang" />
                    <asp:Parameter Name="NoiGiaoHang" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaKH" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="NgayDatHang" />
                    <asp:Parameter DbType="Date" Name="NgayGiaoHang" />
                    <asp:Parameter Name="NoiGiaoHang" Type="String" />
                    <asp:Parameter Name="original_MaHD" Type="Int32" />
                    <asp:Parameter Name="original_MaKH" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_NgayDatHang" />
                    <asp:Parameter DbType="Date" Name="original_NgayGiaoHang" />
                    <asp:Parameter Name="original_NoiGiaoHang" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Loại Sản Phẩm</h5>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                    <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [MaLSP] = @original_MaLSP AND [TenLSP] = @original_TenLSP" InsertCommand="INSERT INTO [LOAISANPHAM] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaLSP], [TenLSP] FROM [LOAISANPHAM]" UpdateCommand="UPDATE [LOAISANPHAM] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @original_MaLSP AND [TenLSP] = @original_TenLSP">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaLSP" Type="Int32" />
                    <asp:Parameter Name="original_TenLSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLSP" Type="Int32" />
                    <asp:Parameter Name="TenLSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLSP" Type="String" />
                    <asp:Parameter Name="original_MaLSP" Type="Int32" />
                    <asp:Parameter Name="original_TenLSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>

        <li class="four">
            <h5>Bảng Sản Phẩm</h5>
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowinsertButton="True" />
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:BoundField DataField="IMG" HeaderText="IMG" SortExpression="IMG" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MaSP] = @original_MaSP AND [MaLSP] = @original_MaLSP AND [TenSP] = @original_TenSP AND [SoLuong] = @original_SoLuong AND [GiaSP] = @original_GiaSP AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([IMG] = @original_IMG) OR ([IMG] IS NULL AND @original_IMG IS NULL))" InsertCommand="INSERT INTO [SANPHAM] ([MaSP], [MaLSP], [TenSP], [SoLuong], [GiaSP], [MoTa], [IMG]) VALUES (@MaSP, @MaLSP, @TenSP, @SoLuong, @GiaSP, @MoTa, @IMG)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaSP], [MaLSP], [TenSP], [SoLuong], [GiaSP], [MoTa], [IMG] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [MaLSP] = @MaLSP, [TenSP] = @TenSP, [SoLuong] = @SoLuong, [GiaSP] = @GiaSP, [MoTa] = @MoTa, [IMG] = @IMG WHERE [MaSP] = @original_MaSP AND [MaLSP] = @original_MaLSP AND [TenSP] = @original_TenSP AND [SoLuong] = @original_SoLuong AND [GiaSP] = @original_GiaSP AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([IMG] = @original_IMG) OR ([IMG] IS NULL AND @original_IMG IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaSP" Type="Int32" />
                    <asp:Parameter Name="original_MaLSP" Type="Int32" />
                    <asp:Parameter Name="original_TenSP" Type="String" />
                    <asp:Parameter Name="original_SoLuong" Type="Int32" />
                    <asp:Parameter Name="original_GiaSP" Type="Decimal" />
                    <asp:Parameter Name="original_MoTa" Type="String" />
                    <asp:Parameter Name="original_IMG" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="Int32" />
                    <asp:Parameter Name="MaLSP" Type="Int32" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="GiaSP" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="IMG" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLSP" Type="Int32" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="GiaSP" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="IMG" Type="String" />
                    <asp:Parameter Name="original_MaSP" Type="Int32" />
                    <asp:Parameter Name="original_MaLSP" Type="Int32" />
                    <asp:Parameter Name="original_TenSP" Type="String" />
                    <asp:Parameter Name="original_SoLuong" Type="Int32" />
                    <asp:Parameter Name="original_GiaSP" Type="Decimal" />
                    <asp:Parameter Name="original_MoTa" Type="String" />
                    <asp:Parameter Name="original_IMG" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>

        <li class="five">
            <h5>Bảng Chi Tiết Hóa đơn</h5>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowinsertButton="True" />
                        
                    <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [MaCTHD] = @original_MaCTHD AND [MaHD] = @original_MaHD AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong" InsertCommand="INSERT INTO [CHITIETHOADON] ([MaCTHD], [MaHD], [MaSP], [SoLuong]) VALUES (@MaCTHD, @MaHD, @MaSP, @SoLuong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaCTHD], [MaHD], [MaSP], [SoLuong] FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [MaCTHD] = @original_MaCTHD AND [MaHD] = @original_MaHD AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaCTHD" Type="Int32" />
                    <asp:Parameter Name="original_MaHD" Type="Int32" />
                    <asp:Parameter Name="original_MaSP" Type="Int32" />
                    <asp:Parameter Name="original_SoLuong" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaCTHD" Type="Int32" />
                    <asp:Parameter Name="MaHD" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaHD" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="original_MaCTHD" Type="Int32" />
                    <asp:Parameter Name="original_MaHD" Type="Int32" />
                    <asp:Parameter Name="original_MaSP" Type="Int32" />
                    <asp:Parameter Name="original_SoLuong" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>

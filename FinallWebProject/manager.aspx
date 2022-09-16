<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="WebApplication2.manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
              background-color:aquamarine;

       
            color:black;
           
   
     
            font-family:'Times New Roman';
          
            font-weight:bold;
        }
        
         .hiba{
             margin:50px;
               
         }
        
        .auto-style1 {
            width: 80%;
        }
        .auto-style3 {
            width: 108px;
        }
        .auto-style4 {
            width: 108px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
            width: 416px;
        }
        .auto-style6 {
            width: 97px;
        }
        .auto-style7 {
            height: 25px;
            width: 97px;
        }
        .auto-style8 {
            width: 416px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 325px;
        }
        
        img{
            width:200px;
            height:200px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server" class="hiba">
    <div>
    
        <table class="auto-style9">
            <tr>
                <td class="auto-style10">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="200px" Width="200px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="RoomID" />
                            <asp:BoundField DataField="size" HeaderText="Room size" />
                            <asp:BoundField DataField="floor" HeaderText="Room location" />
                            <asp:BoundField DataField="price" HeaderText="Booking price" />
                            <asp:ImageField DataImageUrlField="imagpath" HeaderText="Room picture">
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button5" runat="server" BackColor="#FFFFCC" OnClick="Button5_Click" Text="view rooms details" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="RID" HeaderText="Booking ID" />
                            <asp:BoundField DataField="roomid" HeaderText="Room ID" />
                            <asp:BoundField DataField="cssn" HeaderText="customer ssn" />
                            <asp:BoundField DataField="startdate" HeaderText="Start Date" />
                            <asp:BoundField DataField="enddate" HeaderText="End Date" />
                            <asp:BoundField DataField="payment" HeaderText="Payment" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button6" runat="server" BackColor="#FFFFCC" OnClick="Button6_Click" Text="View reservations details" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
                    <asp:Button ID="Button7" runat="server" BackColor="#FFFFCC" OnClick="Button7_Click" Text="Total Payments" />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" AssociatedControlID="TextBox1" Text="Room ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" AssociatedControlID="TextBox2" Text="Room size"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" AssociatedControlID="TextBox3" Text="Rooom location"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="TextBox4" Text="Ptice "></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select an image " />
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style3">Room Image</td>
                <td class="auto-style8">
                    <asp:Image ID="Image1" runat="server" Height="126px" Width="190px" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="view" />
                    <br />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" OnClick="Button2_Click" Text="Add room" Width="149px" />
                    <asp:Button ID="Button3" runat="server"  BackColor="#FFFFCC" OnClick="Button3_Click" Text="edit room details" />
                    <asp:Button ID="Button4" runat="server"  BackColor="#FFFFCC" OnClick="Button4_Click" Text="Remove room" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="logout" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>

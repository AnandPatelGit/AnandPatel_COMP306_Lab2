<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="FoodOrder.aspx.cs" Inherits="AnandPatel_COMP306_Lab2.FoodOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     
     
        <div class="container">
            <strong><h5> <i><asp:Label Text="Fill the details and choose the item you want to Order" runat="server"/></i></h5></strong>
            <table class="auto-style1">  
                <tr>  
                    <td><strong>First Name :</strong></td>  
                    <td>  
                        <asp:TextBox ID="textBoxFirstName" runat="server" cssClass="input-field col s6"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td><strong>Last Name :</strong></td>  
                     <td class="auto-style1"> <asp:TextBox ID="textBoxLastName" runat="server"></asp:TextBox>
                         &nbsp;&nbsp;
                         <asp:Button ID="ButtonRememberMe" runat="server" OnClick="ButtonRememberMe_Click" Text="Remember Me" />
                    </td>  
                </tr>  
                <tr>  
                    <td><strong>City</strong></td>  
                    <td>  
                        <asp:TextBox ID="textBoxCity" runat="server" ></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td><strong>Postal Code</strong></td>  
                    <td>  
                        <asp:TextBox ID="textBoxPostalCode" runat="server" ></asp:TextBox>  
                    </td> 
                </tr>

                <tr>  
                    <td><strong>Phone Number</strong></td>  
                    <td>  
                        <asp:TextBox ID="textBoxPhoneNumber" runat="server"></asp:TextBox>  
                    </td>  
                </tr>
                <tr>
                    <td><strong>Province</strong></td>
                    <td>
                        <asp:TextBox ID="textBoxProvince" runat="server" >
                            
                            </asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td><strong>Food and Drinks</strong></td>
                    <td>
                        <em>
                        <asp:CheckBoxList ID="checkboxListFoodAndDrink" runat="server">
                            <asp:ListItem>Espresso</asp:ListItem>
                            <asp:ListItem>Pepsi</asp:ListItem>
                            <asp:ListItem>Diet Pepsi</asp:ListItem>
                            <asp:ListItem>7 Up</asp:ListItem>
                            <asp:ListItem>Sandwiches</asp:ListItem>
                            <asp:ListItem>Panini</asp:ListItem>
                            <asp:ListItem>Poutine</asp:ListItem>
                            <asp:ListItem>Buritto</asp:ListItem>
                        </asp:CheckBoxList>
                        </em>
                    </td>
                </tr>
                <tr>  
                    <td><strong>Pickup or Delivery</strong></td>  
                    <td>  
                        <em>  
                        <asp:RadioButtonList ID="radioButtonListPickup" runat="server">  
                            <asp:ListItem>Pick up</asp:ListItem>  
                            <asp:ListItem>Delivery</asp:ListItem>  
                        </asp:RadioButtonList>  
                        </em>  
                    </td>  
               </tr>
                <tr>
                    <td><strong>Comment</strong></td>
                    <td> 
                     <asp:TextBox ID="textBoxComment" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  
                <tr>  
                    <td>  
                        <asp:Button ID="ButtonOrder" runat="server" Text="Order" OnClick="ButtonOrder_Click" />  
                    </td>  
                </tr>  
            </table>  
        </div>
</asp:Content>

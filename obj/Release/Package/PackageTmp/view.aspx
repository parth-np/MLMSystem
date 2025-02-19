﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="authwebpart.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="viewAccID" runat="server">
   
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/dashboard.aspx">Home</asp:LinkButton>
        </li>
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/cust_list.aspx">List accounts</asp:LinkButton>
        </li>
        <li class="breadcrumb-item">
            View Account
        </li>
    </ol>

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Customer Information
                        </div>
                        <div class="card-body">
                            <p>
                                <strong>Customer Id: </strong> 
                                <asp:Label ID="Label25" runat="server" Text="Customer Id:"></asp:Label>
                            </p>
                            <p>
                                LastUpdated:
                                <asp:Label ID="Label26" runat="server" Text="LastUpdated:"></asp:Label>
                            </p>
                             <p>
                                Created:
                                <asp:Label ID="Label27" runat="server" Text="LastUpdated:"></asp:Label>
                            </p>
                             <p>
                                Create:
                                <asp:Label ID="Label28" runat="server" Text="LastUpdated:"></asp:Label>
                            </p>
                            <p>
                                Name:
                                <asp:Label ID="Label19" runat="server" Text="Name:"></asp:Label>
                            </p>
                            <p>
                                Address:
                                <asp:Label ID="Label20" runat="server" Text="Address:"></asp:Label>
                            </p>
                            <p>
                                Address:
                                <asp:Label ID="Label21" runat="server" Text="City:"></asp:Label>
                            </p> 
                            <p>
                                Mobile No:
                                <asp:Label ID="Label22" runat="server" Text="Mobile No:"></asp:Label>
                            </p> 
                            <p>
                                Interest Rate:
                                <asp:Label ID="Label23" runat="server" Text="InterestRate:"></asp:Label>
                            </p> 
                            <p>
                                Debit Limit:
                                <asp:Label ID="Label24" runat="server" Text="DebitLimit:"></asp:Label>
                            </p> 
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                                   
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:v0scon %>" DeleteCommand="DELETE FROM cust_mor WHERE (cust_mor_id = @cust_mor_id)" SelectCommand="SELECT item_type, item_name, gross_weight, rate, amount, cust_mor_id FROM cust_mor WHERE (c_id = @c_id)" UpdateCommand="UPDATE cust_mor SET item_type = @item_type, item_name = @item_name, gross_weight = @gross_weight, rate = @rate, amount = @amount WHERE (cust_mor_id = @cust_mor_id)" ProviderName="<%$ ConnectionStrings:v0scon.ProviderName %>">
                                <DeleteParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="cust_mor_id" PropertyName="SelectedValue" />
                                </DeleteParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="HiddenField1" Name="c_id" PropertyName="Value" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="item_type" />
                                    <asp:Parameter Name="item_name" />
                                    <asp:Parameter Name="gross_weight" />
                                    <asp:Parameter Name="rate" />
                                    <asp:Parameter Name="amount" />
                                    <asp:ControlParameter ControlID="GridView1" Name="cust_mor_id" PropertyName="SelectedValue" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Item Details
                        </div>
                        <div class="card-body">
                           
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>
                                            <asp:Label ID="Label6" runat="server" Text="Item Type"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label7" runat="server" Text="Item Name"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label8" runat="server" Text="Weight"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label9" runat="server" Text="Rate"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label10" runat="server" Text="Amount"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="actionlbl" runat="server" Text="Action"></asp:Label>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                <asp:ListItem >--Select--</asp:ListItem>
                                                                <asp:ListItem Value="silver" Text="Silver"></asp:ListItem>
                                                                <asp:ListItem Value="gold" Text="Gold"></asp:ListItem>
                                                                <asp:ListItem Value="other" Text="Other"></asp:ListItem>
                                            </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="vrequireditemtype" runat="server" ErrorMessage="Invalid-Selection" ValidationGroup="vinsert" InitialValue="--Select--" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="vrequiredt10" runat="server" ErrorMessage="item name is a required field !" ControlToValidate="TextBox10" Text="*" ForeColor="Red" ValidationGroup="vinsert">
                                                                                                                        </asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBox12" CssClass="form-control"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="vrequired12" runat="server" ErrorMessage="gross weight is a required !" ControlToValidate="TextBox12" Text="*" ForeColor="Red" ValidationGroup="vinsert">
                                                        </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="vregexgrossweight" runat="server" ErrorMessage="Invalid-Gross Weight" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox12" ForeColor="Red" ValidationGroup="vinsert"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBox14" CssClass="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="vrequiredt4" runat="server" ErrorMessage="rate is a required !" ControlToValidate="TextBox14" Text="*" ForeColor="Red" ValidationGroup="vinsert">
                                                        </asp:RequiredFieldValidator>
                                                      <asp:RegularExpressionValidator ID="vregexrate" runat="server" ErrorMessage="Invalid-Rate" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox14" ForeColor="Red" ValidationGroup="vinsert"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox runat="server" ID="TextBox16" CssClass="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="vrequiredt16" runat="server" ErrorMessage="amount is a required !" ControlToValidate="TextBox16" Text="*" ForeColor="Red" ValidationGroup="vinsert">
                                                        </asp:RequiredFieldValidator>
                                                  <asp:RegularExpressionValidator ID="vregexamt" runat="server" ErrorMessage="Invalid-Amount" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox16" ForeColor="Red" ValidationGroup="vinsert"></asp:RegularExpressionValidator>
                                            
                                        </td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" ValidationGroup="vinsert" CssClass="btn btn-primary" OnClick="Button4_Click" Text="Add" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                                   
                            <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server"  ShowFooter="True"  AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="cust_mor_id" DataSourceID="SqlDataSource2" >
                                <Columns>
                                       <asp:TemplateField HeaderText = "Sr.No"  >
                                                         <ItemTemplate >
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>



                                                </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Item Type" SortExpression="item_type">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" CssClass="form-control" SelectedValue='<%# Bind("item_type") %>' runat="server">
                                                                <asp:ListItem Value="silver" Text="Silver"></asp:ListItem>
                                                                <asp:ListItem Value="gold" Text="Gold"></asp:ListItem>
                                                                <asp:ListItem Value="other" Text="Other"></asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("item_type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Item Name" SortExpression="item_name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("item_name") %>'></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="vrequiredt4" runat="server" ErrorMessage="item name empty!" EnableClientScript="true" ControlToValidate="TextBox4"  Text="*" ForeColor="Red" ValidationGroup="vedit" >
                                                        </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("item_name") %>'></asp:Label>
                                        </ItemTemplate>
                                            <FooterTemplate>
                                                    Total Weight:
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Weight" SortExpression="gross_weight">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("gross_weight") %>'></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="vrequiredt1"  runat="server" ErrorMessage="gross weight empty !" ControlToValidate="TextBox1" Text="*" ForeColor="Red" ValidationGroup="vedit">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="vregexgrossweight" runat="server" ErrorMessage="Invalid-Weight"  ValidationExpression="^\d{0,5}([,\.]\d{1,3})?$" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="vedit"></asp:RegularExpressionValidator>
                                                 
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("gross_weight") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                                        <asp:Label ID="lblgrtotal"  runat="server" ></asp:Label>
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Rate" SortExpression="rate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("rate") %>'></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="vrequiredt3" runat="server" ErrorMessage="rate is a required !" ControlToValidate="TextBox3" Text="*" ForeColor="Red" ValidationGroup="vedit">
                                                        </asp:RequiredFieldValidator>
                                                          <asp:RegularExpressionValidator ID="vregextextbox3" runat="server" ErrorMessage="Invalid-Rate" ValidationExpression="^\d{0,5}([,\.]\d{1,3})?$" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="vedit"></asp:RegularExpressionValidator>        
                                                   
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                                        </ItemTemplate>
                                            <FooterTemplate>
                                                    Total Amt
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Amount" SortExpression="amount">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2"  CssClass="form-control" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="vrequiredt2" runat="server" ErrorMessage="amount is a required !" ControlToValidate="TextBox2" Text="*" ForeColor="Red" ValidationGroup="vedit">
                                                        </asp:RequiredFieldValidator>
                                                           <asp:RegularExpressionValidator ID="vregextext2" runat="server" ErrorMessage="Invalid-Amount" ValidationExpression="^\d{0,7}([,\.]\d{1,3})?$" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="vedit"></asp:RegularExpressionValidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                                        </ItemTemplate>
                                            <FooterTemplate>
                                                        <asp:Label ID="lblactotal"  runat="server" >actotal</asp:Label>
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Id" Visible="false" InsertVisible="False" SortExpression="cust_mor_id">
                                           <EditItemTemplate>
                                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("cust_mor_id") %>'></asp:Label>
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                               <asp:Label ID="Label6" runat="server" Text='<%# Bind("cust_mor_id") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" ValidationGroup="vedit" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Transaction Details
                        </div>
                        <div class="card-body">
                                    
                            <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped credit-debit-table"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView2_RowDataBound" EmptyDataText="Empty Transection">
                                    <Columns>
                                        <asp:BoundField DataField="t_date" HeaderText="Date" SortExpression="t_date" />
                                        <asp:TemplateField HeaderText="Credit(in Rs.)"  ></asp:TemplateField>
                                        <asp:TemplateField HeaderText="Debit(in Rs.)">
                                            
                                        </asp:TemplateField>
                            
                            
                                    <asp:BoundField DataField="t_type" HeaderText="Mortgage type" SortExpression="t_type"  />
                                     <asp:BoundField DataField="t_amount" HeaderText="Amount" SortExpression="t_amount"  >
                                         

                                         </asp:BoundField>
    
                                        
                           
                                            
                                        <asp:TemplateField HeaderText="Mortgage Amt.">
                                           
                                      </asp:TemplateField>
                          
                                </Columns>
                            </asp:GridView>
                                   <!----------------------------------------------------->
                            <div>
                               
                                  <input type="button" id="btnPrint"  class="btn btn-secondary float-right" value="Print" onclick="PrintGridData()" />
                               
                                 <i class="fa fa-print float-left" style="font-size:36px"></i>
                            </div>
                            <script type="text/javascript">
                                    function PrintGridData() {
                                        var prtGrid = document.getElementById('<%=GridView2.ClientID %>');
                                        var prtName = document.getElementById('<%=Label19.ClientID %>'); 
                                        var prtID = document.getElementById('<%=Label25.ClientID %>'); 
                                        var prtIntr = document.getElementById('<%=Label23.ClientID %>');
                                        var prtDeblimit = document.getElementById('<%=Label24.ClientID %>');
                                        var totCr = document.getElementById('<%=lbltotcr.ClientID %>');
                                        var totDeb = document.getElementById('<%=lbltotdeb.ClientID %>');
                                        var totMor = document.getElementById('<%=lblpayamt.ClientID %>');
                                        prtGrid.border = 0;
                                        var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
                                        prtwin.document.write("cust_id: " + prtID.outerHTML+"<br>");
                                        prtwin.document.write("Name: " +prtName.outerHTML + "<br>");
                                        prtwin.document.write("Debit Limit: " + "&#8377; " + prtDeblimit.outerHTML + "<br>");
                                        prtwin.document.write("Interest Rate: "  + prtIntr.outerHTML+"%" + "<br>");
                                        prtwin.document.write("<br><br>");
                                        prtwin.document.write(prtGrid.outerHTML);
                                        prtwin.document.write("<br><br>");
                                        prtwin.document.write("Total Debit Amount: " + "&#8377; " + totDeb.outerHTML + "<br>");
                                        prtwin.document.write("Total Credit Amount: " + "&#8377; " + totCr.outerHTML + "<br>");
                                        prtwin.document.write("Required Payable Amount: " + "&#8377; " + totMor.outerHTML + "<br>");
                                        prtwin.document.close();
                                        prtwin.focus();
                                        prtwin.print();
                                        prtwin.close();
                                    }
                                </script>


                <!----------------------------------------------------->
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:v0scon %>" ProviderName="<%$ ConnectionStrings:v0scon.ProviderName %>" SelectCommand="SELECT [t_type], [t_date], [t_amount] FROM [transection] WHERE ([c_id] = @c_id) ORDER BY [t_date] DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="c_id" QueryStringField="c_id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Interest Calculation
                        </div>
                        <div class="card-body">
                          <table class="table table-bordered table-striped table-sm" border="1" >
                                <tr>
                                    <th >
                                         <strong>Total  Debit  Amount: </strong>
                                        
                                    </th>
                                    <th>
                                        <strong>Total  Credit  Amount: </strong>
                                    </th>
                                 </tr>
                              <tr>
                                    
                                        <td>
                                           <b>&#8377;</b><asp:Label ID="lbltotdeb" runat="server" Text="0"> </asp:Label>
                                            
                                         </td>
                                          <td>
                                            <b>&#8377;</b><asp:Label ID="lbltotcr" runat="server" Text="0"></asp:Label>
                                         </td>
                               
                                    
                                </tr>
                            </table>

                            </div>
                        <div class="card-body">
                            <p>
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#infoModal">
                                     Open Calculator
                                </button>
                            </p>
                          
                              
                            <p>
                                 <strong>Total Debit Due Amount: </strong>    <b>&#8377;</b><asp:Label ID="lbltotmor" runat="server" Text="0"></asp:Label>
                            </p>
                            <p>
                                 <strong>Total Debit Interest: </strong>    <b>&#8377;</b><asp:Label ID="lbltotint" runat="server" Text="Label"></asp:Label>
                            </p>
                             <p>
                                 <strong>Payable Amount: </strong>     <b>&#8377;</b><asp:Label ID="lblpayamt" runat="server" Text="Label"></asp:Label>
                            </p>
                           
                            
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Credit / Debit
                        </div>
                        <div class="card-body">

                            <div class="form-group row">
                                <div class="col-md-12 col-lg-12">
                                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal" Width="90px">
                                        <asp:ListItem Value="c" Selected="True">credit</asp:ListItem>
                                        <asp:ListItem Value="d">debit</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-lg-3 col-md-3">Amount</label>
                                <div class="col-md-9 col-lg-9">
                                    <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="vrequiredt17" runat="server"  ControlToValidate="TextBox17" Text="*" ForeColor="Red" ValidationGroup="vtrans" >
                                                        </asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="vregext17" runat="server" Text="Invalid-Transection Amount::Try Again"  ValidationExpression="^\d{0,7}([,\.]\d{1,3})?$" ControlToValidate="TextBox17" ForeColor="Red" ValidationGroup="vtrans" ></asp:RegularExpressionValidator>
                                 </div>
                            </div>

                            <div class="form-group row datepicker">
                                <label class="col-lg-3 col-md-3">Date</label>
                                <div class="col-md-9 col-lg-9">
                                    <asp:TextBox ID="creditdebitDate" runat="server" CssClass="input-sm form-control" TextMode="DateTime"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="vrequiredcdtext" runat="server"  ControlToValidate="creditdebitDate" Text="*" ForeColor="Red" ValidationGroup="vtrans" >
                                                        </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>  
                        <div class="card-footer">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" ValidationGroup="vtrans" CssClass="btn btn-primary" />
                                   
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit and close" CssClass="btn btn-secondary"/>
                       
                            <asp:Button ID="Button5" runat="server" Enabled="False" OnClick="Button5_Click"  CssClass="btn btn-danger pull-right" OnClientClick="var a = confirm('Are you Sure Want to Delete?'); return a;" Text="Delete" Visible="False" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-info" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Calculator</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                 <div class="calculator demo">
                    <div class="u4 display">
                        <div class="display-inner"><div class="display-text" data-bind="text: display"></div></div>
                    </div>
                    <button id="calculator-button-c" class="u1 button button-red" data-bind="click: clear">c</button>
                    <button id="calculator-button-backspace" class="u1 button button-backspace button-gray" data-bind="click: backspace">&#x21e4;</button>
                    <button id="calculator-button-negate" class="u1 button button-gray" data-bind="click: negate">&#xb1;</button>
                    <button id="calculator-button-÷" class="u1 button button-gray" data-bind="click: operator">÷</button>
                    <button id="calculator-button-7" class="u1 button button-gray" data-bind="click: number">7</button>
                    <button id="calculator-button-8" class="u1 button button-gray" data-bind="click: number">8</button>
                    <button id="calculator-button-9" class="u1 button button-gray" data-bind="click: number">9</button>
                    <button id="calculator-button-x" class="u1 button button-gray" data-bind="click: operator">x</button>
                    <button id="calculator-button-4" class="u1 button button-gray" data-bind="click: number">4</button>
                    <button id="calculator-button-5" class="u1 button button-gray" data-bind="click: number">5</button>
                    <button id="calculator-button-6" class="u1 button button-gray" data-bind="click: number">6</button>
                    <button id="calculator-button--" class="u1 button button-gray" data-bind="click: operator">-</button>
                    <button id="calculator-button-1" class="u1 button button-gray" data-bind="click: number">1</button>
                    <button id="calculator-button-2" class="u1 button button-gray" data-bind="click: number">2</button>
                    <button id="calculator-button-3" class="u1 button button-gray" data-bind="click: number">3</button>
                    <button id="calculator-button-+" class="u1 button button-gray" data-bind="click: operator">+</button>
                    <button id="calculator-button-0" class="u2 button button-gray" data-bind="click: number">0</button>
                    <button id="calculator-button-." class="u1 button button-gray" data-bind="click: number">.</button>
                    <button id="calculator-button-=" class="u1 button button-blue" data-bind="click: operator">=</button>            
                </div>



            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

 </asp:Content>
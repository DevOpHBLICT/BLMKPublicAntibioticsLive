<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Sites.master" AutoEventWireup="true" CodeFile="MoreInfo.aspx.cs" Inherits="Account_Manage" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script runat="server">

  
</script>



    <br />

       
       
      <div >
             <asp:Panel ID="pID" runat="server">
                 <div class="row"> 
     <div class="col-sm-12" style="left: 0px; top: 0px">

          <asp:GridView    ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound"  CellPadding="4" ForeColor="#333333" 
                    GridLines="None"  AllowSorting="False"  DataKeyNames="Id" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                           <asp:TemplateField Visible="false" HeaderText="">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
                             <asp:BoundField  Visible="false" DataField="Id" HeaderText="Id"  ReadOnly="True" />
                        <asp:TemplateField HeaderText="Introduction">
                        <ItemTemplate>
                               <asp:Label ID="Description" Width="100%" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                       
                       </ItemTemplate>
                            </asp:TemplateField>
                         <asp:BoundField Visible="false" DataField="Area" HeaderText="Area"  />
                         <asp:CheckBoxField Visible="false" DataField="Complete" HeaderText="Complete" />
                         <asp:BoundField Visible="false" DataField="CreatedAt" HeaderText="CreatedAt"  />
                         <asp:BoundField Visible="false" DataField="UpdatedAt" HeaderText="UpdatedAt" />
                         <asp:CheckBoxField Visible="false" DataField="Deleted" HeaderText="Deleted"/>
                         <asp:BoundField Visible="false" DataField="user_id" HeaderText="user_id" />
                         <asp:BoundField Visible="false" DataField="sort_order" HeaderText="sort_order"  />
                
                     
                        </Columns>
                    <EditRowStyle BackColor="#2461BF" ForeColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
         </div>
</div>
                    <div class="col-sm-6">
                        </div>
                 </asp:Panel>
           </div>     
 

  <br />


  

</asp:Content>
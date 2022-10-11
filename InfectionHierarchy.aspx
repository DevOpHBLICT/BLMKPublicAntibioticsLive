<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Sites.master" AutoEventWireup="true" CodeFile="InfectionHierarchy.aspx.cs" Inherits="Account_Manage" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



      
                <br />
   
       
 
      
                <br />
   <asp:GridView  Gridlines="None" HorizontalAlign="Center" ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" 
                    AllowPaging="True" PageSize="25" DataKeyNames="Id">
                    <Columns>
                           <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
                             <asp:BoundField  Visible="false" DataField="Id" HeaderText="Id"  ReadOnly="True" />
                      
                         <asp:BoundField DataField="Area" HeaderText=""  />
                         <asp:BoundField Visible="false" DataField="Description" HeaderText="Description"  />
                         <asp:CheckBoxField Visible="false" DataField="Complete" HeaderText="Complete" />
                         <asp:BoundField Visible="false" DataField="CreatedAt" HeaderText="CreatedAt"  />
                         <asp:BoundField Visible="false" DataField="UpdatedAt" HeaderText="UpdatedAt" />
                         <asp:CheckBoxField Visible="false" DataField="Deleted" HeaderText="Deleted"/>
                         <asp:BoundField Visible="false" DataField="user_id" HeaderText="user_id" />
                         <asp:BoundField Visible="false" DataField="sort_order" HeaderText="sort_order"  />
                
                     
                        </Columns>
                </asp:GridView>
    <br />
   
       
 
      
                <asp:GridView GridLines="Both" HorizontalAlign="Center" ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" PageSize="25" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:BoundField  Visible="false" DataField="Area" HeaderText="Area"  />
                          <asp:BoundField DataField="Text" HeaderText="Infection" />
                     </Columns>
                    <EditRowStyle BackColor="#2461BF" />
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
                
    <div>
      

    </div>


 
    <br />
    <div style="text-align:center;">
    <asp:Button style="color:white;Background-Color: indianred" ID="Cancel" runat="server"  OnClick="Cancel_Click" CssClass="btn btn-default" Text="Back"   />
     </div>

    <div class="row">
        <div class="col-md-12">
          
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ToDoItems] t,Areas a where a.ID=t.Area_ID and t.Deleted=0 " 
                    OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ToDoItems] WHERE [Id] = @original_Id AND [Area_Id] = @original_Area_Id AND (([Text] = @original_Text) OR ([Text] IS NULL AND @original_Text IS NULL)) AND [First_Line] = @original_First_Line AND (([Second_Line] = @original_Second_Line) OR ([Second_Line] IS NULL AND @original_Second_Line IS NULL)) AND (([Third_Line] = @original_Third_Line) OR ([Third_Line] IS NULL AND @original_Third_Line IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Complete] = @original_Complete AND [Version] = @original_Version AND [CreatedAt] = @original_CreatedAt AND (([UpdatedAt] = @original_UpdatedAt) OR ([UpdatedAt] IS NULL AND @original_UpdatedAt IS NULL)) AND [Deleted] = @original_Deleted" InsertCommand="INSERT INTO [todoitems] ([Id], [Area_Id], [Text], [First_Line], [Second_Line], [Third_Line], [Description], [Complete], [Version], [CreatedAt], [UpdatedAt], [Deleted]) VALUES (@Id, @Area_Id, @Text, @First_Line, @Second_Line, @Third_Line, @Description, @Complete, @Version, @CreatedAt, @UpdatedAt, @Deleted)" UpdateCommand="UPDATE [todoitems] SET [Area_Id] = @Area_Id, [Text] = @Text, [First_Line] = @First_Line, [Second_Line] = @Second_Line, [Third_Line] = @Third_Line, [Description] = @Description, [Complete] = @Complete, [Version] = @Version, [CreatedAt] = @CreatedAt, [UpdatedAt] = @UpdatedAt, [Deleted] = @Deleted WHERE [Id] = @original_Id AND [Area_Id] = @original_Area_Id AND (([Text] = @original_Text) OR ([Text] IS NULL AND @original_Text IS NULL)) AND [First_Line] = @original_First_Line AND (([Second_Line] = @original_Second_Line) OR ([Second_Line] IS NULL AND @original_Second_Line IS NULL)) AND (([Third_Line] = @original_Third_Line) OR ([Third_Line] IS NULL AND @original_Third_Line IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Complete] = @original_Complete AND [Version] = @original_Version AND [CreatedAt] = @original_CreatedAt AND (([UpdatedAt] = @original_UpdatedAt) OR ([UpdatedAt] IS NULL AND @original_UpdatedAt IS NULL)) AND [Deleted] = @original_Deleted">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="String" />
                        <asp:Parameter Name="original_Area_Id" Type="String" />
                        <asp:Parameter Name="original_Text" Type="String" />
                        <asp:Parameter Name="original_First_Line" Type="String" />
                        <asp:Parameter Name="original_Second_Line" Type="String" />
                        <asp:Parameter Name="original_Third_Line" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Complete" Type="Boolean" />
                        <asp:Parameter Name="original_Version" Type="Object" />
                        <asp:Parameter DbType="DateTimeOffset" Name="original_CreatedAt" />
                        <asp:Parameter DbType="DateTimeOffset" Name="original_UpdatedAt" />
                        <asp:Parameter Name="original_Deleted" Type="Boolean" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="Area_Id" Type="String" />
                        <asp:Parameter Name="Text" Type="String" />
                        <asp:Parameter Name="First_Line" Type="String" />
                        <asp:Parameter Name="Second_Line" Type="String" />
                        <asp:Parameter Name="Third_Line" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Complete" Type="Boolean" />
                        <asp:Parameter Name="Version" Type="Object" />
                        <asp:Parameter DbType="DateTimeOffset" Name="CreatedAt" />
                        <asp:Parameter DbType="DateTimeOffset" Name="UpdatedAt" />
                        <asp:Parameter Name="Deleted" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Area_Id" Type="String" />
                        <asp:Parameter Name="Text" Type="String" />
                        <asp:Parameter Name="First_Line" Type="String" />
                        <asp:Parameter Name="Second_Line" Type="String" />
                        <asp:Parameter Name="Third_Line" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Complete" Type="Boolean" />
                        <asp:Parameter Name="Version" Type="Object" />
                        <asp:Parameter Name="CreatedAt" DbType="DateTimeOffset" />
                        <asp:Parameter Name="UpdatedAt" DbType="DateTimeOffset" />
                        <asp:Parameter Name="Deleted" Type="Boolean" />
                        <asp:Parameter Name="original_Id" Type="String" />
                        <asp:Parameter Name="original_Area_Id" Type="String" />
                        <asp:Parameter Name="original_Text" Type="String" />
                        <asp:Parameter Name="original_First_Line" Type="String" />
                        <asp:Parameter Name="original_Second_Line" Type="String" />
                        <asp:Parameter Name="original_Third_Line" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Complete" Type="Boolean" />
                        <asp:Parameter Name="original_Version" Type="Object" />
                        <asp:Parameter DbType="DateTimeOffset" Name="original_CreatedAt" />
                        <asp:Parameter DbType="DateTimeOffset" Name="original_UpdatedAt" />
                        <asp:Parameter Name="original_Deleted" Type="Boolean" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            

            

        </div>
    </div>


  

</asp:Content>
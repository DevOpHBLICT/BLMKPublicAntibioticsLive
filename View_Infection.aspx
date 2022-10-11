<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeFile="View_Infection.aspx.cs" validateRequest="false" Inherits="_Default" %>

 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <asp:Label ID="Error_Label" runat="server" ForeColor="Red" Visible="False"></asp:Label>

 
       
    <asp:GridView   ID="GridView2" GridLines="None" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" AllowPaging="True" PageSize="25" DataKeyNames="Id">
                    <Columns>
                           <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:Image ID="Image1" Height="50px" runat="server" />
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



     
                      
             
<div style="background-color:#7992bd;margin-left: auto; margin-right: auto; text-align: center;"> 
    <asp:Label style="font-size:x-large" runat="server"  type = "text" id = "Infection_name"   Font-Bold="False" BorderStyle="None" ForeColor="White"></asp:Label>
</div>
<br />
 <br />
 <div style="background-color:#bdd1f6;"> 
    <asp:Label ForeColor="#1760ae" ReadOnly="true" ID="first_label" runat="server" Text="" Font-Bold="True" ></asp:Label> 
</div>
    <br />
<div class="row">    
   <div class="col-sm-12">

<asp:Label ID="First" runat="server" ></asp:Label>

 </div>
</div>



<div style="background-color:#bdd1f6;"> 
    <asp:Label  ForeColor="#1760ae"  ReadOnly="true" ID="second_label" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label> 

</div>
   


<div class="row"> 
     <div class="col-sm-12">
<asp:Label ID="Second" runat="server"  ></asp:Label>

     </div>
</div>
    <br />
<div style="background-color:#bdd1f6;"> 
    <asp:Label ForeColor="#1760ae" ReadOnly="true" ID="third_label" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label> 
    </div>
      
    <div class="row">   
           <div class="col-sm-12"  >
<asp:Label ID="Third" runat="server" ></asp:Label>
                </div>
</div>
    <br />
<div style="background-color:#bdd1f6;"> 
    <asp:Label ForeColor="#1760ae" ReadOnly="true" ID="forth_label" runat="server" Text="" Font-Bold="True" ></asp:Label> 
  </div>
           <br />
     <div class="row"> 
            <div class="col-sm-12" style="font-size:medium !important">
<asp:Label ID="Forth" runat="server" Font-Size="Medium" ></asp:Label>
        </div>
</div>

           <br />        
<div class="form-group" > 
    
    
    <asp:Button style="color:white;Background-Color: indianred" ID="Cancel" runat="server"  OnClick="Cancel_Click" CssClass="btn btn-default" Text="Back"   />

</div>
 
 
   
                

               
 

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 

SelectCommand="SELECT * FROM [Area_List]"></asp:SqlDataSource>

                  


 
<asp:SqlDataSource ID="Infections" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
SelectCommand="SELECT * FROM [Infections]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Infections] WHERE [ID] = @original_ID AND (([Area_ID] = @original_Area_ID) OR ([Area_ID] IS NULL AND @original_Area_ID IS NULL)) AND (([Infection_name] = @original_Infection_name) OR ([Infection_name] IS NULL AND @original_Infection_name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([First_Line] = @original_First_Line) OR ([First_Line] IS NULL AND @original_First_Line IS NULL)) AND (([Second_Line] = @original_Second_Line) OR ([Second_Line] IS NULL AND @original_Second_Line IS NULL)) AND (([Third_Line] = @original_Third_Line) OR ([Third_Line] IS NULL AND @original_Third_Line IS NULL)) AND (([Further_information] = @original_Further_information) OR ([Further_information] IS NULL AND @original_Further_information IS NULL))" InsertCommand="INSERT INTO [Infections] ([Area_ID], [Infection_name], [Description], [First_Line], [Second_Line], [Third_Line], [Further_information]) VALUES (@Area_ID, @Infection_name, @Description, @First_Line, @Second_Line, @Third_Line, @Further_information)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Infections] SET [Area_ID] = @Area_ID, [Infection_name] = @Infection_name, [Description] = @Description, [First_Line] = @First_Line, [Second_Line] = @Second_Line, [Third_Line] = @Third_Line, [Further_information] = @Further_information WHERE [ID] = @original_ID AND (([Area_ID] = @original_Area_ID) OR ([Area_ID] IS NULL AND @original_Area_ID IS NULL)) AND (([Infection_name] = @original_Infection_name) OR ([Infection_name] IS NULL AND @original_Infection_name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([First_Line] = @original_First_Line) OR ([First_Line] IS NULL AND @original_First_Line IS NULL)) AND (([Second_Line] = @original_Second_Line) OR ([Second_Line] IS NULL AND @original_Second_Line IS NULL)) AND (([Third_Line] = @original_Third_Line) OR ([Third_Line] IS NULL AND @original_Third_Line IS NULL)) AND (([Further_information] = @original_Further_information) OR ([Further_information] IS NULL AND @original_Further_information IS NULL))" >
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Area_ID" Type="Int32" />
        <asp:Parameter Name="original_Infection_name" Type="String" />
        <asp:Parameter Name="original_Description" Type="String" />
        <asp:Parameter Name="original_First_Line" Type="String" />
        <asp:Parameter Name="original_Second_Line" Type="String" />
        <asp:Parameter Name="original_Third_Line" Type="String" />
        <asp:Parameter Name="original_Further_information" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Area_ID" Type="Int32" />
        <asp:Parameter Name="Infection_name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="First_Line" Type="String" />
        <asp:Parameter Name="Second_Line" Type="String" />
        <asp:Parameter Name="Third_Line" Type="String" />
        <asp:Parameter Name="Further_information" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Area_ID" Type="Int32" />
        <asp:Parameter Name="Infection_name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="First_Line" Type="String" />
        <asp:Parameter Name="Second_Line" Type="String" />
        <asp:Parameter Name="Third_Line" Type="String" />
        <asp:Parameter Name="Further_information" Type="String" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Area_ID" Type="Int32" />
        <asp:Parameter Name="original_Infection_name" Type="String" />
        <asp:Parameter Name="original_Description" Type="String" />
        <asp:Parameter Name="original_First_Line" Type="String" />
        <asp:Parameter Name="original_Second_Line" Type="String" />
        <asp:Parameter Name="original_Third_Line" Type="String" />
        <asp:Parameter Name="original_Further_information" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

 <asp:SqlDataSource ID="Area_List" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
SelectCommand="SELECT * FROM [Areas]" OldValuesParameterFormatString="original_{0}" >
</asp:SqlDataSource>



   
 

</asp:Content>

     
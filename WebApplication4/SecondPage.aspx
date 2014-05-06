<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondPage.aspx.cs" Inherits="WebApplication4.SecondPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <asp:Button ID="Button1" runat="server" Text="SeondButton" />
    <div>
        <asp:Label runat="server">Formulaire d'inscription</asp:Label>
        <br />
        <asp:Label runat="server">Prénom : </asp:Label>
        <br />
        <asp:Label runat="server">Nom : </asp:Label>
        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>

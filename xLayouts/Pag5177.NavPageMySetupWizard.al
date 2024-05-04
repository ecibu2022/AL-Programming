namespace ALProgramming.ALProgramming;

using System.Security.AccessControl;

page 5177 "NavPage My Setup Wizard"
{
    ApplicationArea = All;
    Caption = 'NavPage My Setup Wizard';
    // Multi-step dialog wizard examples are found in Advanced Setup Wirzard
    PageType = NavigatePage;
    SourceTable = User;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("User Name"; Rec."User Name")
                {
                    ToolTip = 'Specifies the name of the user. If the user must enter credentials when they sign in, this is the name they must enter.';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the full name of the user.';
                }
                field("Expiry Date"; Rec."Expiry Date")
                {
                    ToolTip = 'Specifies a date past which the user will no longer be authorized to log on to the Windows client.';
                }
                field("Contact Email"; Rec."Contact Email")
                {
                    ToolTip = 'Specifies the user''s email address.';
                }
                field(State; Rec.State)
                {
                    ToolTip = 'Specifies whether the user can access companies in the current environment. This field does not reflect any changes in Microsoft 365 Accounts.';
                }
                field("License Type"; Rec."License Type")
                {
                    ToolTip = 'Specifies the type of license that applies to the user.';
                }
            }
        }
    }
}

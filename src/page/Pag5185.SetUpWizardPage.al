namespace ALProgramming.ALProgramming;
using Microsoft.Foundation.Company;

page 5185 "Set Up Wizard Page"
{
    Caption = 'Set Up Wizard Page';
    PageType = NavigatePage;
    UsageCategory=None;
    SourceTable="Company Information";
    
    layout
    {
        area(Content)
        {
            group(Step1)
            {
                Caption = 'General';
                Visible=CurrentStep=1;
                group(CompanyName)
                {
                    Caption='Company Name';
                    InstructionalText='Provide the Name of the Company';
                    field(Name;Rec.Name)
                    {
                        
                    }
                   group(Overview)
                   {
                     field(Comment; Comment)
                    {
                        MultiLine=true;
                        ShowCaption=false;
                    }
                   }
                }
            }
            group(Step2)
            {
                Caption = 'General';
                Visible=CurrentStep=2;
                  group("Details")
                   {
                     field(Comments; Comment)
                    {
                        MultiLine=true;
                        ShowCaption=false;
                    }
                   }
            }
            group(Step3)
            {
                Caption = 'General';
                Visible=CurrentStep=3;
                group("Finish Setup Wizard")
                {
                    
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Back)
            {
                ApplicationArea = All;
                Caption='Back';
                Image=PreviousRecord;
                InFooterBar=true;
                trigger OnAction()
                begin
                    TakeStep(-1);
                end;
            }
            action(Next)
            {
                ApplicationArea = All;
                Caption='Next';
                Image=NextRecord;
                InFooterBar=true;
                Enabled=ActionNextAllowed;
                 trigger OnAction()
                begin
                    TakeStep(1);
                end;
            }
            action(Finish)
            {
                ApplicationArea = All;
                Caption='Finish';
                Image=Approve;
                InFooterBar=true;
                Enabled=ActionFinishAllowed;
                 trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }
        }
    }

    var 
    Name, Comment: Text[200];
    CurrentStep: Integer;
    ActionBackAllowed, ActionNextAllowed, ActionFinishAllowed: Boolean;

    trigger OnOpenPage()
    begin
        CurrentStep:=1;
        SetControls();
    end;

    local procedure SetControls()
    begin
        ActionBackAllowed:=CurrentStep>1;
        ActionNextAllowed:=CurrentStep<3;
        ActionFinishAllowed:=CurrentStep=3;
    end;

    local procedure TakeStep(Step: Integer)
    begin
        CurrentStep+=Step;
        SetControls();
    end;
}

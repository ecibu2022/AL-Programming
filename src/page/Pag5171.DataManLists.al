namespace ALProgramming.ALProgramming;
using Microsoft.Sales.Document;

page 5171 "Data Man Lists"
{
    ApplicationArea = All;
    Caption = 'Data Man Lists';
    PageType = List;
    SourceTable = "Data Manipulation";
    UsageCategory = Documents;
    CardPageId="Data Man Card";
    ModifyAllowed=false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field(Telephone; Rec.Telephone)
                {
                    ToolTip = 'Specifies the value of the Telephone field.';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Status;Rec.Status)
                {
                    
                }
            }
        }
    }

     actions{
        area(Processing){
            action("Update Status")
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    DataMan.Reset();
                    DataMan.SetRange(Status);
                    case Rec.Status of
                        DataMan.Status::Open:
                        DataMan.Status:=DataMan.Status::"Pending Approval"; 
                    end;
                    DataMan.Modify();
                end;
            }
        action("Post G/L")
        {
            ApplicationArea = All;
            Image=Post;
            
            trigger OnAction()
            var
            PostCU: Codeunit "Post Into GL";
            begin
                PostCU.PostToGL();
            end;
        }
   }
    }

     var
        DataMan: Record "Data Manipulation";
}

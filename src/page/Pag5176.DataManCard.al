namespace ALProgramming.ALProgramming;
using Microsoft.Sales.Document;

page 5176 "Data Man Card"
{
    ApplicationArea = All;
    Caption = 'Data Man Card';
    PageType = Card;
    SourceTable = "Data Manipulation";
    
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
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field(Telephone; Rec.Telephone)
                {
                    ToolTip = 'Specifies the value of the Telephone field.';
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
                    if DataMan.Get(Rec.ID) then begin
                        case Rec.Status of
                            Rec.Status::Open:
                                DataMan.Status:=DataMan.Status::"Pending Approval";
                            Rec.Status::"Pending Approval":
                                DataMan.Status:=DataMan.Status::Open;    
                        end;
                        
                        DataMan.Modify();
                    end;
                    
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

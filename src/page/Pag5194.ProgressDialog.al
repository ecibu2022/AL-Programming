namespace ALProgramming.ALProgramming;

page 50186 "Progress Dialog"
{
    ApplicationArea = All;
    Caption = 'Progress Dialog';
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
field(Gender;Gender)
{
    
}
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Show Dialog")
            {
                ApplicationArea = All;
                Promoted=true;
                PromotedCategory=Process;
                Image=Add;
                trigger OnAction()
                begin
                    Clear(ProgressCount);
                    if not GuiAllowed then exit;
                    ProgressDialog.Open(Message);

                    for ProgressCount := 1 to 20 do begin
                        ProgressDialog.Update(1, ProgressCount);
                        Sleep(20);
                    end;
                    ProgressDialog.Close();
                    Message('Posted successfully')
                end;
            }
        }
    }

    var
        ProgressDialog: Dialog;
        ProgressCount: Integer;
        Message: Label 'Processing........#1';
        Gender: Option Male,Female,Other;
}

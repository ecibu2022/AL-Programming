namespace ALProgramming.ALProgramming;

page 5158 APIs
{
    ApplicationArea = All;
    Caption = 'APIs';
    PageType = Card;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
            }
        }
    }

    actions{
        area(Processing){
            action("Get API Data")
            {
                ApplicationArea = All;
                
                trigger OnAction()
                var
                APICU: Codeunit "API Codeunit";
                begin
                    APICU.GetAPIData();
                end;
            }
        }
    }
}

namespace ALProgramming.ALProgramming;

page 5176 "Data Man Card"
{
    ApplicationArea = All;
    Caption = 'Data Man Card';
    PageType = StandardDialog;
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

   
   
}

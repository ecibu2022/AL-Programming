namespace ALProgramming.ALProgramming;

page 5184 "Import Names Page"
{
    ApplicationArea = All;
    Caption = 'Import Names Page';
    PageType = Worksheet;
    SourceTable = "Import Names Table";
    
    layout
    {
        area(content)
        {
            field(BatchName; Rec.ID)
            {
                ApplicationArea=All;
            }

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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Import Names from Excel")
            {
                ApplicationArea=All;
                Image=ImportExcel;
                Promoted=true;
                PromotedCategory=Process;

                trigger OnAction()
                var
                    CallNames: Codeunit "Import Excel Data";
                begin
                    CallNames.ReadExcelSheet();
                    CallNames.ImportExcelData();
                end;
            }
        }
    }
}

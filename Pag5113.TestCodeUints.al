page 5113 "Test Code Uints"
{
    ApplicationArea = All;
    Caption = 'Test Code Uints';
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

    trigger OnOpenPage()
    begin
        // WriteFile.FilterUsingSetFilter();
    end;

    var
    WriteFile: Codeunit "Filtering And Sorting";
}

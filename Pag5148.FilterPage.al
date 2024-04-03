page 5505 "Filter Page"
{
    ApplicationArea = All;
    Caption = 'Filter Page';
    PageType = List;
    SourceTable = Item;
    // List Page comes with a filter and search icon automatically
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No.";Rec."No.")
                {
                    ToolTip = 'Specifies if the item should be included in the calculation of an invoice discount on documents where the item is traded.';
                }
                field("Base Unit of Measure"; Rec."Base Unit of Measure")
                {
                    ToolTip = 'Specifies the unit in which the item is held in inventory. The base unit of measure also serves as the conversion basis for alternate units of measure.';
                }
                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ToolTip = 'Specifies the value of the Budgeted Amount field.';
                }
                field("COGS (LCY)"; Rec."COGS (LCY)")
                {
                    ToolTip = 'Specifies the value of the COGS (LCY) field.';
                }
            }

        }
    }

// When this page is opened It will set a filter to make visible items from 1000 to 1100
    trigger OnOpenPage()
    begin
        SetFilterToItems();
    end;

    local procedure FilterItems()
    begin
        Rec.FilterGroup(0);
        Rec.SetRange("No.", '1000', '1100');
    end;

    // Filter items that start with 1 and contain 0
    procedure SetFilterToItems()
    begin
        Rec.FilterGroup(17);
        Rec.SetFilter("No.", '1*');
        Rec.FilterGroup(18);
        Rec.SetFilter("No.", '*3*');
    end;
}

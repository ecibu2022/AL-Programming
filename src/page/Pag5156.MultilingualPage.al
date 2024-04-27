page 5156 "Multilingual Page"
{
    ApplicationArea = All;
    Caption = 'Multilingual Page';
    PageType = Card;
    SourceTable = Customer;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the customer''s email address.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the customer''s city.';
                }
            }
        }
    }
}

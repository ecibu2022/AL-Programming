namespace ALProgramming.ALProgramming;

using Microsoft.Purchases.Vendor;

page 5178 "Teaching Tips in AL"
{
    ApplicationArea = All;
    Caption = 'Teaching Tips in AL';
    PageType = Card;
    SourceTable = Vendor;
    AboutTitle='Teaching Tips Title';
    AboutText='This is an example of teachong tips in al. Helps users to know what the page is all about and what it does';
    
    layout
    {
        area(content)
        {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the vendor. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                    AboutTitle= 'Specifies the number of the vendor.';
                    AboutText=' The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the vendor''s name. You can enter a maximum of 30 characters, both numbers and letters.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the vendor''s address.';
                    MultiLine=true;
                    AboutTitle='Vendor Address';
                    AboutText='';
                }
            }
        }
}

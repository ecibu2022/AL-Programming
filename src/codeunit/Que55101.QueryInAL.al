namespace ALProgramming.ALProgramming;

using Microsoft.Purchases.Vendor;

query 55101 "Query In AL"
{
    Caption = 'Query In AL';
    QueryType = Normal;
    QueryCategory='Vendor List';
    // Sort by either ascending or descending order
    OrderBy=ascending(Name);
    // Gets the top 10 vendors
    TopNumberOfRows=10;

    elements
    {
        dataitem(Vendor; Vendor)
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}

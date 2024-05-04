namespace ALProgramming.ALProgramming;
using Microsoft.Purchases.Payables;

query 55102 "Query Report"
{
    Caption = 'Query Report';
    QueryType = Normal;
    TopNumberOfRows=5;
    
    elements
    {
        dataitem(Vendor; "Vendor Ledger Entry")
        {
            column(No_; "Entry No.")
            {
                
            }
            column(Name;"Vendor Name")
            {
                
            }
            column(Balance;"Purchase (LCY)")
            {
                Method=Sum;
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}

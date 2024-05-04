namespace ALProgramming.ALProgramming;

using Microsoft.Purchases.Vendor;
using Microsoft.Purchases.Payables;
using Microsoft.Sales.Receivables;

query 55101 "Query In AL"
{
    Caption = 'Top 5 Customers Query In AL';
    QueryType = Normal;
    QueryCategory='Customer List';
    // Sort by either ascending or descending order
    OrderBy=ascending(Sale_Amount);
    // Gets the top 5 customers
    TopNumberOfRows=5;

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            column(Entry_No_; "Entry No.")
            {
            }
            column(Customer_Name; "Customer Name")
            {
            }
            column(Customer_Posting_Group; "Customer Posting Group")
            {
            }
            column(Sale_Amount; Amount)
            {
                // Total of purchase entries per customer
                Method=Sum;
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}

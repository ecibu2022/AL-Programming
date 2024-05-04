namespace ALProgramming.ALProgramming;

using Microsoft.Sales.Customer;
using Microsoft.Sales.Receivables;

query 55103 "Joins In Queries"
{
    Caption = 'Joins In Queries';
    QueryType = Normal;
    // TopNumberOfRows=5;

    elements
    {
        dataitem(Customer; Customer)
        {
            DataItemTableFilter=Blocked=const("Customer Blocked"::" ");

            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(EMail; "E-Mail")
            {
                ColumnFilter=Email=filter(<>'');
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(BalanceLCY; "Balance (LCY)")
            {
            }

            dataitem(CustomerLedgerEntries; "Cust. Ledger Entry")
            {
                // Linking the two data items basing related fields which are common or found in both tables for this
                // case No. in customer table is the same as Customer No. in Cust. Ledger Entries
                DataItemLink = "Customer No." = Customer."No.";
                DataItemTableFilter = "Customer No." = filter(10000 .. 20000), "Sales (LCY)" = filter(<> ''), "Sales (LCY)" = filter(<> 0);
                SqlJoinType = InnerJoin;

                column(Entry_No_; "Entry No.")
                {

                }
                column(Customer_Name; "Customer Name")
                {

                }
                column(Sales__LCY_; "Sales (LCY)")
                {
                    Method = Sum;
                }
            }

        }
    }

    trigger OnBeforeOpen()
    begin
        CurrQuery.SetFilter(BalanceLCY, '<>0');
    end;
}

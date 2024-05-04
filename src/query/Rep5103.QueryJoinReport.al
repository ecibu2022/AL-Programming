namespace ALProgramming.ALProgramming;

using Microsoft.Sales.Customer;

report 5103 "Query Join Report"
{
    ApplicationArea = All;
    Caption = 'Query Join Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout=RDLC;
    RDLCLayout='./xLayouts/Query_Joins_Report.rdl';
    ProcessingOnly=true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No; QueryList.No)
            {
            }
            column(Name; QueryList.Name)
            {

            }
            column(E_Mail; QueryList.EMail)
            {

            }
            column(Phone; QueryList.PhoneNo)
            {

            }
            column(Balance; QueryList.BalanceLCY)
            {

            }
            column(EntryNo; QueryList.Entry_No_)
            {

            }
            column(CustName; QueryList.Customer_Name)
            {

            }
            column(SalesLCY; QueryList.Sales__LCY_)
            {

            }

            trigger OnPreDataItem()
            begin
                QueryList.Open();
            end;

            trigger OnAfterGetRecord()
            begin
                if not QueryList.Read() then
                    CurrReport.Break();
                    // Return the state of the dataset 
                QueryList.Close();    
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    var
        QueryList: Query "Joins In Queries";
}

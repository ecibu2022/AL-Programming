namespace ALProgramming.ALProgramming;

using Microsoft.Finance.FinancialReports;
using Microsoft.Purchases.Vendor;

report 55103 "Query Report"
{
    ApplicationArea = All;
    Caption = 'Query Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout=RDLC;
    RDLCLayout='./xLayouts/VendorList.rdl';

    dataset
    {
        dataitem(Integer; Vendor)
        {
            column(No_; VList.No_)
            {
                
            }
            column(Name; VList.Name)
            {
                
            }
            column(Balance; VList.Balance)
            {
                
            }

            trigger OnPreDataItem()
            begin
                VList.Open();
            end;

            trigger OnAfterGetRecord()
            begin
                if not VList.Read() then 
                    CurrReport.Break();
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
    VList: Query "Query Report";
}

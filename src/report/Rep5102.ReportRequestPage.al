namespace ALProgramming.ALProgramming;

using Microsoft.Purchases.Vendor;

report 5102 "Report Request Page"
{
    ApplicationArea = All;
    Caption = 'Report Request Page';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout=RDLC;
    RDLCLayout='./xLayouts/Vendors.rdl';
    UseRequestPage=true;

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields="No.";

            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(Balance; Balance)
            {
            }
            column(Blocked; Blocked)
            {
                
            }

            trigger OnPreDataItem()
            begin
                if HideBlockedVendors then begin
                    Vendor.SetRange(Blocked, Blocked::Payment);
                end;
            end;
        }
        
    }

    requestpage
    {
        // used for sorting data
        SaveValues=true;

        layout
        {
            area(content)
            {
                group("Request Page Options")
                {
                    field(Name; HideBlockedVendors)
                    {
                        
                    }
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
    HideBlockedVendors: Boolean;
}

page 5148 "Calculate Net Pay"
{
    ApplicationArea = All;
    Caption = 'Net Pay Calculations';
    PageType = Card;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(MonthlyAmount;MonthlyAmount)
                {
                   Caption='Monthly Amount';
                }
                field(TaxDeductions; TaxDeductions)
                {
                    Caption = 'Tax Deductions';
                    Editable=false;
                }
                field(NetPayAmount; NetPay)
                {
                    Caption = 'NetPay Amount';
                    Editable=false;
                }
            }
        }
    }

    actions{
        area(Processing){
            action(Calculate)
            {
                ApplicationArea = All;
                Caption = 'Calculate Net Pay';
                ToolTip = 'Calculate your net pay based on the tax brackets.';
                Image = Calculate;

                trigger OnAction();
                begin
                    NetPay := CalNetPayCU.CalculateNetPay(MonthlyAmount);
                    TaxDeductions := MonthlyAmount - NetPay;
                end;
            }
        }
    }

    var
    MonthlyAmount, NetPay, TaxDeductions: Decimal;
    CalNetPayCU: Codeunit "Code Units Al";
}

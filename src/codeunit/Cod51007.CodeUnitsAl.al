codeunit 51007 "Code Units Al"
{
    var
        NSSF, TaxRate, ThresholdAmount, PayrollDeductions : Decimal;

    procedure CalculateNetPay(GrossPay: Decimal): Decimal;
    begin
        ThresholdAmount := 235000;
        NSSF:=0.05;

        if (GrossPay >= 235001) and (GrossPay <= 335000) then begin
            TaxRate := 0.1;
            PayrollDeductions := (GrossPay - ThresholdAmount) * (TaxRate + NSSF);
        end
        else if (GrossPay >= 335001) and (GrossPay <= 410000) then begin
            TaxRate := 0.2;
            PayrollDeductions := (GrossPay - ThresholdAmount) * (TaxRate + NSSF);
        end
        else if (GrossPay >= 410001) and (GrossPay <= 10000000) then begin
            TaxRate := 0.3;
            PayrollDeductions := (GrossPay - ThresholdAmount) * (TaxRate + NSSF);
        end
        else if GrossPay >= 120000000 then begin
            TaxRate := 0.4;
            PayrollDeductions := (GrossPay - ThresholdAmount) * (TaxRate + NSSF);
        end
        else
            Error('Amount can''t be taxed');

        exit(GrossPay - PayrollDeductions);
    end;

}

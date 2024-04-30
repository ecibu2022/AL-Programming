namespace ALProgramming.ALProgramming;
using Microsoft.Finance.GeneralLedger.Posting;
using Microsoft.Finance.GeneralLedger.Journal;

codeunit 55102 "Post Into GL"
{
    procedure PostToGL()
    begin
        GenLines.Init();
        GenLines."Posting Date":=WorkDate();
        GenLines."VAT Reporting Date":=WorkDate();
        GenLines."Document Type":=GenLines."Document Type"::" ";
        GenLines.Validate("Document Type");
        GenLines."Document No.":='D002';
        GenLines.Description:='Test posting into G/L Account using AL Code';
        GenLines."Account Type":=GenLines."Account Type"::"G/L Account";
        GenLines.Validate("Account Type");
        GenLines."Account No.":='1110';
        GenLines."Bal. Account Type":=GenLines."Bal. Account Type"::"G/L Account";
        GenLines.Validate("Bal. Account Type");
        GenLines."Bal. Account No.":='2920';
        GenLines.Amount:=0.20;

        GenGL.RunWithCheck(GenLines);

        // Declaring progress window or dialog
        Clear(ProgressCount);
        if not GuiAllowed then exit;
        ProgressDialog.Open(Message);

        for ProgressCount:=1 to 20 do begin
            ProgressDialog.Update(1, ProgressCount);
            Sleep(20);
        end;
        ProgressDialog.Close();
        Message('Journal lines were posted successfully')
    end;

    var
    GenGL: Codeunit "Gen. Jnl.-Post Line";
    // GenLines: Record "Gen. Journal Line";
    GenLines: Record 81;
    ProgressDialog: Dialog;
    ProgressCount: Integer;
    Message: Label 'Posting......#1';
}

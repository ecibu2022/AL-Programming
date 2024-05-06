namespace ALProgramming.ALProgramming;
using System.IO;

codeunit 51009 "Import Excel Data"
{
   var
        BatchName: Code[10];
        FileName: Text[100];
        SheetName: Text[100];
        TempExcelBuffer: Record "Excel Buffer" temporary;
        UploadExcelMsg: Label 'Please Choose the Excel file.';
        NoFileFoundMsg: Label 'No Excel file found!';
        BatchISBlankMsg: Label 'Batch name is blank';
        ExcelImportSucess: Label 'Excel is successfully imported.';

    procedure ReadExcelSheet()
    var
        FileMgt: Codeunit "File Management";
        IStream: InStream;
        FromFile: Text[100];
    begin
        UploadIntoStream(UploadExcelMsg, '', '', FromFile, IStream);
        if FromFile <> '' then begin
            FileName := FileMgt.GetFileName(FromFile);
            SheetName := TempExcelBuffer.SelectSheetsNameStream(IStream);
        end else
            Error(NoFileFoundMsg);
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.OpenBookStream(IStream, SheetName);
        TempExcelBuffer.ReadSheet();
    end;

    procedure ImportExcelData()
    var
        SOImportBuffer: Record "Import Names Table";
        RowNo: Integer;
        ColNo: Integer;
        LineNo: Integer;
        MaxRowNo: Integer;
    begin
        RowNo := 0;
        ColNo := 0;
        MaxRowNo := 0;
        LineNo := 0;
        SOImportBuffer.Reset();
        if SOImportBuffer.FindLast() then
            LineNo := SOImportBuffer.ID;
        TempExcelBuffer.Reset();
        if TempExcelBuffer.FindLast() then begin
            MaxRowNo := TempExcelBuffer."Row No.";
        end;

        for RowNo := 2 to MaxRowNo do begin
            LineNo := LineNo + 10000;
            SOImportBuffer.Init();
            Evaluate(SOImportBuffer."Batch Name", BatchName);
            SOImportBuffer.ID := LineNo;
            Evaluate(SOImportBuffer.ID, GetValueAtCell(RowNo, 1));
            Evaluate(SOImportBuffer.Name, GetValueAtCell(RowNo, 2));
            Evaluate(SOImportBuffer.Email, GetValueAtCell(RowNo, 3));
            SOImportBuffer."Sheet Name" := SheetName;
            SOImportBuffer."File Name" := FileName;
            SOImportBuffer.Insert();
        end;
        Message(ExcelImportSucess);
    end;

    procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        TempExcelBuffer.Reset();
        If TempExcelBuffer.Get(RowNo, ColNo) then
            exit(TempExcelBuffer."Cell Value as Text")
        else
            exit('');
    end;
}

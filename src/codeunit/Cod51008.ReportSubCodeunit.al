codeunit 51008 "Report Sub Codeunit"
{
    // Report Substitution event using Report Management codeunit
    // Replaces original report with this without modifying the existing one 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnAfterSubstituteReport(ReportId: Integer; RunMode: Option; RequestPageXml: Text; RecordRef: RecordRef; var NewReportId: Integer)
    begin
        // check if report was already substituted or not
        if ReportId = Report::"Customer - Top 10 List" then
        // This is the new report ID that is going to substitute original report
            NewReportId:=Report::"Report Substitution"
    end;
}

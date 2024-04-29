namespace ALProgramming.ALProgramming;

using System.Security.AccessControl;

permissionset 5101 "Test Permission Set"
{
    Assignable = true;
    Caption = 'Test Permission Set', MaxLength = 30;
    ExcludedPermissionSets =
        "Customer - View",
        "Customer - Edit";
    Permissions =
        codeunit "Code Units Al" = X,
        codeunit "Report Sub Codeunit" = X,
        codeunit "Filtering And Sorting" = X,
        codeunit "Write To A File" = X,
        page "Test Code Uints" = X,
        page "Calculate Net Pay" = X,
        page "Multilingual Page" = X,
        page "Action Bar Page" = X,
        page "Filter Page" = X,
        page "Page Actions" = X,
        page "XML Ports Page" = X,
        report "Report Substitution" = X,
        xmlport "XML Port Object" = X;
}

namespace ALProgramming.ALProgramming;
using System.Azure.Storage;

codeunit 5158 "API Codeunit"
{
    // Assign permissions to a table from a codeunit
    Permissions=tabledata "ABS Container" = rimd;

    var
    Client: HttpClient;
    Response: HttpResponseMessage;
    Content: HttpContent;
    Result: Text;

    procedure GetAPIData()
    begin
        Client.Get('https://jsonplaceholder.typicode.com/users', Response);
        if Response.IsSuccessStatusCode then
            Content:=Response.Content
        else
        Message('Response %1 for %2', Response.HttpStatusCode, Response.ReasonPhrase);
        Content.ReadAs(Result);
        Message(Result);
    end;
}

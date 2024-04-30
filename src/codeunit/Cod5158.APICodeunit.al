namespace ALProgramming.ALProgramming;

codeunit 5158 "API Codeunit"
{
    
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

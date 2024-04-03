codeunit 55101 "Write To A File"
{
    trigger OnRun()
    begin
        WriteToAFile();
    end;

    procedure WriteToAFile()
    var
        TemBlob: Codeunit "Temp Blob";
        FileName: Text;
        // Allows to write in to a file
        OutStr: OutStream;
        // Allows to read from a file
        InStr: InStream;
    begin
        TemBlob.CreateOutStream(OutStr);
        // Write to a file using html
        OutStr.WriteText('<html>');
        OutStr.WriteText();

        OutStr.WriteText('<head>');
        OutStr.WriteText();

        OutStr.WriteText('<title>Testing wrting to a file');
        OutStr.WriteText();
        OutStr.WriteText('</title>');
        OutStr.WriteText();

        OutStr.WriteText('</head>');
        OutStr.WriteText();

        OutStr.WriteText('<body>');
        OutStr.WriteText();
        OutStr.WriteText('<p>This is my first file please!</p>');
        OutStr.WriteText();
        OutStr.WriteText('</body>');
        OutStr.WriteText();

        OutStr.WriteText('</html>');
        
        FileName:='My File.html';
        TemBlob.CreateInStream(InStr);
        DownloadFromStream(InStr, 'Dialog Title', '', '', FileName);
    end;

    procedure FileOn()
    var
        myInt: Integer;
    begin
        
    end;
}

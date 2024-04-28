page 5157 "XML Ports Page"
{
    ApplicationArea = All;
    Caption = 'XML Ports Page';
    PageType = Card;
    SourceTable = Customer;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the customer''s city.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                }
            }
        }
    }

    actions
    {
       area(Processing)
       {
        action("XML Port")
        {
            ApplicationArea = All;
            Promoted=true;
            PromotedCategory=Process;
            Image=ImportExcel;
            
            trigger OnAction()
            begin
                Xmlport.Run(5101, false);
            end;
        }
         action("Export To Excel")
        {
            ApplicationArea = All;
            Promoted=true;
            PromotedCategory=Process;
            Image=ExportToExcel;
            
            trigger OnAction()
            var
            ExportXMLPort: XmlPort "XML Port Object";
            FileName: Text;
            TempBlob: Codeunit "Temp Blob";
            InStr: InStream;
            OutStr: OutStream;
            begin
                 FileName := 'Customers.xlsx';
                        TempBlob.CreateOutStream(OutStr);
                        ExportXMLPort.SetDestination(OutStr);
                        ExportXMLPort.Export();

                        TempBlob.CreateInStream(InStr);
                        DownloadFromStream(InStr, 'Download XML Export', '', '', FileName);
            end;
        }
    }

    }

}

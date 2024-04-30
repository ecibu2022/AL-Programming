table 5112 "Data Manipulation"
{
    Caption = 'Data Manipulation';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
            trigger OnValidate()
            var
                Cust: Record Customer;
            begin
                if Cust.Get(ID) then begin
                    Name:=Cust.Name;
                    Address:=Cust.Address;
                    Telephone:=Cust."Phone No.";
                    Email:=Cust."E-Mail";
                    Status:=Status::Open;
                end
                else
                    Error('No user found with such ID');
            end;
        }
        field(2; Name; Text[200])
        {
            Caption = 'Name';
        }
        field(3; Address; Text[200])
        {
            Caption = 'Address';
        }
        field(4; Telephone; Text[200])
        {
            Caption = 'Telephone';
        }
        field(5; Email; Text[200])
        {
            Caption = 'Email';
        }
        field(6; Status; Enum "Sales Document Status")
        {
            Caption='Data Status';
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }


}

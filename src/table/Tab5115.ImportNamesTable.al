table 5115 "Import Names Table"
{
    Caption = 'Import Names Table';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Batch Name"; Code[20])
        {
            Caption = 'Batch Name';
        }
        field(2; ID; Integer)
        {
            Caption = 'ID';
        }
        field(3; Name; Text[200])
        {
            Caption = 'Name';
        }
        field(4; Email; Text[200])
        {
            Caption = 'Email';
        }
        field(100; "Sheet Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(102; "File Name"; Text[200])
        {
            DataClassification = ToBeClassified;
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

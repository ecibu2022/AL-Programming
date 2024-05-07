namespace ALProgramming.ALProgramming;

codeunit 55103 Piano implements "I Musical Instruments"
{

    procedure MakeSound(): Text
    begin
        exit('Press C')
    end;

    procedure PracticeTips(): Text
    begin
        exit('Do it 25 minutes a day')
    end;

    procedure Play(): Text
    begin
        exit('Just continue playing')
    end;

}

codeunit 55104 Guitar implements "I Musical Instruments"
{

    procedure MakeSound(): Text
    begin
        exit('Press Guitar')
    end;

    procedure PracticeTips(): Text
    begin
        exit('Do it 35 minutes a day')
    end;

    procedure Play(): Text
    begin
        exit('Just continue playing Guitar')
    end;

}

enum 55101 "Call Interface Enum" implements "I Musical Instruments"
{
    Extensible = true;

    value(0; Piano)
    {
        Implementation = "I Musical Instruments" = Piano;
    }
    value(1; Guitar)
    {
        Implementation = "I Musical Instruments" = Guitar;
    }
}


table 55101 "Implement Interface"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Instrument Type"; Enum "Call Interface Enum")
        {
           trigger OnValidate()
           var
            MInt: Interface "I Musical Instruments";
           begin
            // Initialize the interface to what the user has chosen
            MInt:="Instrument Type";
            Message(MInt.MakeSound());
            Message(MInt.PracticeTips());
            Message(MInt.Play());
           end;
            
        }
    }
    
    keys
    {
        key(Key1; "Instrument Type")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}

page 55102 "Music Instrument Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Implement Interface";
    
    layout
    {
        area(Content)
        {
            group("Interface Music List")
            {
                field("Instrument Type"; Rec."Instrument Type")
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}
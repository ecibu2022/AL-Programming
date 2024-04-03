codeunit 5502 "Filtering And Sorting"
{
    // Setfilter
    // Record.SETFILTER(Field, String, [Vale1], [Value2],....)
    // Consists of alphanumeric expressions like <,>,*,&,|,=,<=,>=,..(range)

    var
    Cust: Record Customer;

// Using range .. to filter customers from no 20000 to 40000
    procedure FilterUsingSetFilter()
    begin
        Cust.Reset();
        Cust.SetFilter("No.", '20000..40000');
        if Cust.FindSet() then 
            repeat
                Message(Format(Cust.Name))
            until Cust.Next()=0
        else
            Error('Filter has issues %1', GetLastErrorText());    
    end;

// Print customers with no 20000, 30000, 40000 if found
    procedure FilterCustomers()
    begin
        Cust.Reset();
        Cust.SetFilter("No.", '20000|30000|40000');
        if Cust.FindSet() then
            repeat
                Message(Format(Cust.Name))
            until Cust.Next() = 0
        else
            Error('Filter has issues %1', GetLastErrorText());
    end;

    // SetRange you have to specify start and end values
    // Print customers from no 10000 to 20000 if found
    procedure FilterUsingSetRange()
    begin
        Cust.Reset();
        Cust.SetRange("No.", '10000', '20000');
        if Cust.FindSet() then
            repeat
                Message(Format(Cust.Name))
            until Cust.Next() = 0
        else
            Error('Filter has issues %1', GetLastErrorText());
    end;


    
}

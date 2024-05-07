namespace ALProgramming.ALProgramming;

using Microsoft.Sales.Customer;
using Microsoft.Purchases.Vendor;

pageextension 55101 "Views In AL" extends "Vendor List"
{

views
{
addfirst
{
    view(VendorView)
    {
    Caption = 'Vendor View';
    OrderBy=descending(Name);
    SharedLayout = false;
    
    layout
    {
        movefirst(Control1; "Balance (LCY)")
        modify(Control1)
        {
            FreezeColumn="Balance (LCY)";
        }
    }
    }
}

}

}

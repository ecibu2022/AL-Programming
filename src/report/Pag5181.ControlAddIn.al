namespace ALProgramming.ALProgramming;

page 5181 "Control Add In"
{
    ApplicationArea = All;
    Caption = 'Control Add In';
    PageType = Card;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'Control Add Ins';
                
               usercontrol(MyControlAddInExample; MyControlAddIn)
               {

               }

            }
        }
    }
}



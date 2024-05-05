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


controladdin MyControlAddIn
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    // Scripts = 
    //     'script1.js',
    //     'script2.js';
    // StyleSheets =
    //     'style.css';
    StartupScript = 'src/js/startupScript.js';
    // RecreateScript = 'recreateScript.js';
    // RefreshScript = 'refreshScript.js';
    Images = 'src/images/logo.png';
    
    event MyEvent()
    
    procedure MyProcedure()
}

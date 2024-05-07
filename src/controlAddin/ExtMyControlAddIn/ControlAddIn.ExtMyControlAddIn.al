controladdin "Ext MyControl AddIn"
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
    // StartupScript = 'src/js/startupScript.js';
    // RecreateScript = 'recreateScript.js';
    // RefreshScript = 'refreshScript.js';
    // Images =
    //     'image1.png',
    //     'image2.png';

    procedure Navigate(url: Text);
    procedure Navigate(url: Text; method: Text; data: Text);
    procedure InitializeIFrame(ratio: Text);
    procedure SetContent(html: Text);
    procedure SetContent(html: Text;
    javaScript: Text);
    procedure PostMessage(message: Text;
    targetOrigin: Text;
    convertToJson: Boolean);
    procedure LinksOpenInNewWindow();
    procedure InvokeEvent(data: Text);
    procedure SubscribeToEvent(eventName: Text;
    origin: Text);
    event ControlAddInReady(callbackUrl: Text);
    event Refresh(callbackUrl: Text);
    event DocumentReady();
    event Callback(data: Text);
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
    //     'script2.js';//Helps you to include javascript libraries needed
    StyleSheets = 'src/StyleSheets/style.css';
    StartupScript = 'src/JavaScript/startupScript.js';//This script runs when you open the page
    // RecreateScript = 'recreateScript.js';
    // RefreshScript = 'refreshScript.js';
    Images = 'src/images/logo.png';
    
    event MyEvent()
    
    procedure MyProcedure()
}

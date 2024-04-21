page 5506 "Page Actions"
{
    ApplicationArea = All;
    Caption = 'Page Actions';
    PageType = Card;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
            }
        }
    }


actions
    {
        // Related Part of the Action Bar
        area(Navigation)
        {
            group(GroupName)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    begin

                    end;
                }
                action(Name)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    begin

                    end;
                }
            }
            // End of Related part of Action Bar
        }

        // Appears on the Actions menu in the Action Bar
        area(Processing)
        {
            action(Posts)
            {
                Caption = 'Post';
                Image = Redo;
                ToolTip = 'Reverses the journal batch.';

                trigger OnAction()
                begin
                    
                end;
            }
            action(Redo)
            {
                ApplicationArea = All;
                Image = RedoFluent;

                trigger OnAction()
                begin

                end;
            }


            group("P&osting")
            {
                Caption = 'P&osting';
                Image = Post;
                
                action("Test Report")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                    ToolTip = 'View a test report so that you can find and correct any errors before you perform the actual posting of the journal or document.';

                    trigger OnAction()
                    begin

                    end;
                }
                action(Post)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'P&ost';
                    Image = PostOrder;
                    ShortCutKey = 'F9';
                    ToolTip = 'Finalize the document or journal by posting the amounts and quantities to the related accounts in your company books.';

                    trigger OnAction()
                    begin

                    end;
                }
                action(Preview)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Preview Posting';
                    Image = ViewPostedOrder;
                    ShortCutKey = 'Ctrl+Alt+F9';
                    ToolTip = 'Review the different types of entries that will be created when you post the document or journal.';

                    trigger OnAction()
                    begin

                    end;
                }
                action("Post and &Print")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Post and &Print';
                    Image = PostPrint;
                    ShortCutKey = 'Shift+F9';
                    ToolTip = 'Finalize and prepare to print the document or journal. The values and quantities are posted to the related accounts. A report request window where you can specify what to include on the print-out.';

                    trigger OnAction()
                    begin

                    end;
                }

            }

            // Approval Request Group
            group("Approval Request")
            {
                action(SendforApproval)
                {
                    Caption = 'Send Approval Request';
                    Image = SendApprovalRequest;
                    ShortCutKey = 'F1';
                    ToolTip = 'Approves and posts the payment voucher.';

                    trigger OnAction()
                    begin

                    end;
                }
                action(CancelApproval)
                {
                    Caption = 'Cancel Approval Request';
                    Image = CancelApprovalRequest;
                    ShortCutKey = "F9";
                    ToolTip = 'Approves and posts the payment voucher.';

                    trigger OnAction()
                    begin

                    end;
                }

            }

        }

        // Displays actions in the Reports menu found in More Options of Action Bar
        area(Reporting)
        {
            group(Print)
            {
                Caption = 'Voucher';
                Image = PrintReport;
                action("Voucher Report")
                {
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        myInt: Integer;
                    begin
                        Report.Run(Report::"Account Schedule");
                    end;
                }
            }

        }

        // Shows frequntly used actions on the left side of the action bar
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process';

                group(Category_Category6)
                {
                    Caption = 'Print/Send';
                    ShowAs = SplitButton;

                    actionref(Post_Promoted; Post)
                    {
                    }
                    actionref(Preview_Promoted; Preview)
                    {
                    }
                    actionref("Post and &Print_Promoted"; "Post and &Print")
                    {
                    }
                    actionref("Test Report_Promoted"; "Test Report")
                    {
                    }

                }

                group(Category_Category8)
                {
                    Caption = 'Approval Request';

                    actionref(Send; SendforApproval)
                    {

                    }

                    actionref(Cancel; CancelApproval)
                    {

                    }

                }

            }

        }

    }


}

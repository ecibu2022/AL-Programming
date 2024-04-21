page 5504 "Action Bar Page"
{
    ApplicationArea = All;
    Caption = 'Action Bar Page';
    PageType = Card;
    // PromotedActionCategories = 'New_caption,Process_caption,report_caption,category4_caption,category5_caption,category6_caption,category7_caption,category8_caption,category9_caption,category10_caption';
    PromotedActionCategories = 'New, Process, report, Home, Request Approval, Customer, category7, category8, category9, category10';
    SourceTable=Item;

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

        // Displays actions  in the Action bar, it uses promoted property
        area(Creation)
        {
            action(SendforApproval)
            {
                Caption = 'Send Approval Request';
                Image = SendApprovalRequest;
                Promoted = true;
                PromotedCategory = Category4;
                ShortCutKey = "F8";
                ToolTip = 'Approves and posts the payment voucher.';

                trigger OnAction()
                begin

                end;
            }
            action(CancelApproval)
            {
                Caption = 'Cancel Approval Request';
                Image = CancelApprovalRequest;
                Promoted = true;
                PromotedCategory = Category4;
                ShortCutKey = "F9";
                ToolTip = 'Approves and posts the payment voucher.';

                trigger OnAction()
                begin

                end;
            }

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
                    RunObject = report "Account Schedule";
                }
            }

        }

    }


    }
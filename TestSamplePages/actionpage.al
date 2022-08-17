page 50110 Actionpage
{
    PageType = Card;
    ApplicationArea = all;
    UsageCategory = Administration;

    actions
    {
        // Adds the action called "My Actions" to the Action menu 
        // area(Processing)
        // {
        //     action("My Actions")
        //     {
        //         Promoted = true;
        //         PromotedCategory = Process;
        //         ApplicationArea = All;
        //         trigger OnAction()
        //         begin
        //             Message('Hello World');
        //         end;
        //     }
        // }

        area(Creation)
        {
            // Adds the action "My New document" to the New Document group in the Actions menu. 
            action("My New document")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                //ApplicationArea = All;
                RunObject = page "Customer Card";
                Image = "1099Form";
            }
        }

        area(Navigation)
        {
            // Adds the action called "My Navigate" to the Navigate menu. 
            action("My Navigate")
            {
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }
        }

        area(Reporting)
        {
            // Adds a submenu called "My Label" to the Report menu. 
            group(NewSubGroup)
            {
                Caption = 'My label';

                group(MyGroup)
                {
                    // Adds the action "My Report" to the My Label submenu. 
                    action("My Report")
                    {
                        ApplicationArea = All;
                        RunObject = page "Customer Card";
                    }
                }
            }
        }
        area(processing)
        {
            action(Post)
            {
                ApplicationArea = Basic;
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    //check HR Super User
                    // UserSetup.Reset;
                    // UserSetup.SetRange(UserSetup."HR Super User", true);
                    // UserSetup.SetRange("User ID", UserId);
                    // if not UserSetup.FindFirst then
                    //     Error(Text006);

                    // TestField("Leave Start Date");
                    // TestField("Leave End Date");

                    // CheckDuplicateEntry("Leave Start Date");
                    // CheckDuplicateEntry("Leave End Date");


                    // if Status <> Status::Approved then
                    //     Error(Text004, "Leave Application ID");

                    // UpdateLeaveHistory;
                    // UpdateEmployeeAbsenceCalendar;

                    // //Update Stop Salary for Emergency Unpaid Leave //21-06-2016
                    // if Employee.Get("Employee No.") then begin
                    //     if Employee."Employee Category" = Employee."employee category"::Expat then begin
                    //         LeaveMaster.Reset;
                    //         LeaveMaster.SetRange(LeaveMaster."Leave Code", "Leave Code");
                    //         LeaveMaster.SetRange(LeaveMaster."Leave Mapping Code", LeaveMaster."leave mapping code"::"EMERGENCY UNPAID");
                    //         if LeaveMaster.FindFirst then begin   //20-11
                    //             UpdateStopSalary; //21-06-2016
                    //                               //CalculatePartialSalaryComponentWise("Employee No."); //20-11
                    //         end; //20-11
                    //     end;
                end;

                //Post Absent Deduction
                // if "Absent Deduction Amount" <> 0 then begin
                //     LeaveMaster.Reset;
                //     LeaveMaster.SetRange(LeaveMaster."Leave Code", "Leave Code");
                //     LeaveMaster.SetRange(LeaveMaster."Leave Mapping Code", LeaveMaster."leave mapping code"::ABSENT);
                //     if LeaveMaster.FindFirst then
                //         InsertAbsentDedIntoEmployeeDynamic;
                // end;


                //Post Sick Leave Deduction
                // if "SL Deduction Amount" <> 0 then begin
                //     LeaveMaster.Reset;
                //     LeaveMaster.SetRange(LeaveMaster."Leave Code", "Leave Code");
                //     LeaveMaster.SetRange(LeaveMaster."Leave Mapping Code", LeaveMaster."leave mapping code"::"SICK LEAVE");
                //     if LeaveMaster.FindFirst then
                //         InsertSLDedIntoEmployeeDynamic;
                // end;

                // Message(Text003);
                // end;
            }
            action(Approve)
            {
                ApplicationArea = Basic;
                Image = ReleaseDoc;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                // Visible = AbsentVisible;

                trigger OnAction()
                begin
                   
                    // TestField("Leave Start Date");
                    // TestField("Leave End Date");
                    // TestField("Leave Code");

                    // if Status = Status::Open then
                    //     Status := Status::Approved
                    // else
                    //     if Status = Status::"Pending For Approval" then //22-11-2016 added to over ride the approval cycle to approve the leave application by HR department
                    //         ApproveIfPending; //22-11-2016 added to over ride the approval cycle to approve the leave application by HR department
                end;
            }
            action(Reopen)
            {
                ApplicationArea = Basic;
                Image = ReOpen;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                // Visible = AbsentVisible;

                trigger OnAction()
                begin
                    // if Status = Status::Approved then
                    //     Status := Status::Open;
                end;
            }
            action("Leave Application Document")
            {
                ApplicationArea = Basic;
                Image = print;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    // leaveApplication.SetRange(leaveApplication."Leave Application ID", "Leave Application ID");
                    // Report.RunModal(50556, true, false, leaveApplication);
                end;
            }
            action("Print Sick Leave Application")
            {
                ApplicationArea = Basic;
                Image = print;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                // RunObject = Report 50542;
            }
            action("Send For Approval")
            {
                ApplicationArea = Basic;
                Image = SendApprovalRequest;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                // trigger OnAction()
                // begin
                //     TestField("Leave Start Date");
                //     TestField("Leave End Date");
                //     TestField("Leave Code");
                //     TestField("Employee No.");
                //     //--Workflow 22/10/2017-LG
                //     if ApprovalsMgmt.CheckShortLeaveDocApprovalsWorkflowEnabled(Rec) then
                //         ApprovalsMgmt.OnSendShortLeaveDocForApproval(Rec);
                //     //--Workflow 22/10/2017-LG
                // end;
            }
            action("Cancel Approval Request")
            {
                ApplicationArea = Basic;
                Image = Cancel;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    // if Confirm(Text009, false) then
                    //     //--Workflow 22/10/2017-LG
                    //     ApprovalsMgmt.OnCancelShortLeaveDocApprovalRequest(Rec);
                    //--Workflow 22/10/2017-LG
                end;
            }
        }
    }
}
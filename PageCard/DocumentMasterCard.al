page 50103 "Document Management Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Document Master";

    layout
    {

        area(Content)
        {
            group("Document Number")
            {
                field("Doc_No."; rec."Doc_No.")
                {
                    ApplicationArea = all;

                }
                group(Status)
                {
                    field("Approval Status"; rec."Approval Status")
                    {
                        ApplicationArea = all;
                    }
                    field("Create Date"; rec."Create Date")
                    {
                        ApplicationArea = all;
                    }

                }

            }

            group(General)
            {
                field("EMP NO."; rec."EMP NO.")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; rec."Employee Name")
                {
                    ApplicationArea = all;
                }
                field("Last Name"; rec."Last Name")
                {
                    ApplicationArea = all;
                }
                field("Job Title"; rec."Job Title")
                {
                    ApplicationArea = all;
                }
            }
            group(Document)
            {
                field("Document Type"; rec."Document Type")
                {
                    ApplicationArea = all;
                }
                field("Entity Name"; rec."Entity Name")
                {
                    ApplicationArea = all;
                }
                field(Address; rec.Address)
                {
                    ApplicationArea = all;
                }
                field("Address To"; rec."Address To")
                {
                    ApplicationArea = all;
                }
                field(Country; rec.Country)
                {
                    ApplicationArea = all;
                }
                field(City; rec.City)
                {
                    ApplicationArea = all;
                }
                field("Travel From Date"; rec."Travel From Date")
                {
                    ApplicationArea = all;

                }
                field("Travel To Date"; rec."Travel To Date")
                {
                    ApplicationArea = all;

                }
                field("Purpose of request"; rec."Purpose of request")
                {
                    ApplicationArea = all;
                    Importance = Additional;
                }
            }
        }

        area(FactBoxes)
        {
            part(Attachment; "Document Attachment Factbox")
            {
                ApplicationArea = all;
            }
            systempart(Links; Links)
            {
                ApplicationArea = all;
            }

        }
    }


    actions
    {
        area(Reporting)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Report;
                RunObject = report "Document Management Report";

                trigger OnAction()
                begin

                end;
            }
        }
        area(Processing)
        {

            group(Request)
            {

                action("Send Request")
                {
                    Image = SendApprovalRequest;
                    ApplicationArea = all;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin

                    end;


                }
            }
        }

    }

    var
        myInt: Integer;


}
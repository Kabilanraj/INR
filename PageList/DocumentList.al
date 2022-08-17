page 50101 "Document Management List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Document Master";

    layout
    {
        area(Content)
        {
            repeater(NameSource)
            {
                field("Doc_No."; rec."Doc_No.")
                {
                    ApplicationArea = all;

                }
                field("NO."; rec."EMP NO.")
                {
                    ApplicationArea = All;
                }

                field("Employee Name"; rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Job Title"; rec."Job Title")
                {
                    ApplicationArea = all;
                }
                field("Approval Status"; rec."Approval Status")
                {
                    ApplicationArea = all;
                }
                field("Create Date"; rec."Create Date")
                {
                    ApplicationArea = all;
                }
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
                }

            }
        }
        area(Factboxes)
        {
            part(Attachment; "Document Attachment Factbox")
            {
                ApplicationArea = all;
            }
            systempart(link; Links)
            {
                ApplicationArea = all;
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
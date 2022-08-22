page 50108 City
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "City Master";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("City Code"; rec."City Code")
                {
                    ApplicationArea = All;

                }
                field(Country; rec.Country)
                {
                    ApplicationArea = All;

                }
                field(City; rec.City)
                {
                    ApplicationArea = All;

                }
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
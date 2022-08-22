page 50107 Country
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Country Master";

    layout
    {
        area(Content)
        {
            group("Country Index")
            {
                field("Country Code"; rec."Country Code")
                {
                    ApplicationArea = All;

                }
                field(Country; rec.Country)
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
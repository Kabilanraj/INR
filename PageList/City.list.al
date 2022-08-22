page 50106 "City Index"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "City Master";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("City Code"; rec."City Code")
                {
                    ApplicationArea = All;
                }
                field(Country; rec.Country)
                {
                    ApplicationArea = all;
                }
                field(City; rec.City)
                {
                    ApplicationArea = all;
                }
            }
        }
        area(Factboxes)
        {

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
page 50105 "Country Index"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Country Master";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
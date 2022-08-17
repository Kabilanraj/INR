// page 50149 "Bank list"
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = "Bank Securities";
//     RefreshOnActivate = true;

//     layout
//     {
//         area(Content)
//         {
//             group("Bank Security")
//             {
//                 field("Job No."; rec."Job No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Bill-to Customer No."; rec."Bill-to Customer No.")
//                 {
//                     ApplicationArea = All;
//                     Editable = true;
//                 }
//                 field("NO."; rec."NO.")
//                 {
//                     ApplicationArea = all;

//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             /*   action(ActionName)
//               {
//                   ApplicationArea = All;

//                   trigger OnAction()
//                   begin

//                   end;
//               } */
//         }
//     }
// }
page 50148 "Bank list"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Bank Securities";
    // PopulateAllFields = true;
    // RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group("Bank Security")
            {
                // field("Entry No"; rec."Entry No")
                // {
                //     ApplicationArea = all;
                // }
                field("Job No."; rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field("Bill-to Customer No."; rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                    // Editable = true;
                }
                field("NO."; rec.Name)
                {
                    ApplicationArea = all;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            /*   action(ActionName)
              {
                  ApplicationArea = All;

                  trigger OnAction()
                  begin

                  end;
              } */
        }
    }
}
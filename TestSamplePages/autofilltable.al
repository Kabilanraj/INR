// table 50148 "Bank Securities"
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(50000; "Entry No"; Integer)
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(50011; "Job No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Job."No.";
//         }
//         field(50012; "Bill-to Customer No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Job."Bill-to Customer No.";
//         }

//     }

//     keys
//     {
//         key(PK; "Entry No", "Job No.")
//         {
//             Clustered = true;
//         }
//     }

//     var
//         myInt: Integer;

//     trigger OnInsert()
//     var
//         recBankSec: Record "Bank Securities";
//         EntryNo: Integer;
//         recJob: Record Job;
//     begin
//         Clear(recBankSec);
//         Clear(EntryNo);
//         IF recBankSec.FindLast() then
//             EntryNo := recBankSec."Entry No" + 1
//         else
//             EntryNo := 1;
//         Rec."Entry No" := EntryNo;

//         recJob.SetFilter("No.", rec."Job No.");
//         IF recJob.FindFirst() then begin
//             Rec."Bill-to Customer No." := recJob."Bill-to Customer No.";
//         end;
//     end;

// }
table 50148 "Bank Securities"
{
    DataClassification = ToBeClassified;
    fields
    {

        field(50000; "Entry No"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(50011; "Job No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Job;
            trigger OnValidate()
            begin
                CalcFields("Bill-to Customer No.", Name);


            end;
        }
        field(50012; "Bill-to Customer No."; Text[100])
        {
            FieldClass = FlowField;
            //Editable = false;
            CalcFormula = lookup(Job."Bill-to Contact" where("No." = field("Job No.")));
            TableRelation = Job;
        }
        field(50113; "Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Job."Bill-to Name" where("No." = field("Job No.")));
            TableRelation = Job;
        }


    }

    keys
    {

        key(PK; "Entry No")
        {
            Clustered = true;
        }

    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        recBankSec: Record "Bank Securities";
    begin
        Clear(recBankSec);
        IF recBankSec.FindLast() then
            "Entry No" := recBankSec."Entry No" + 1
        else
            "Entry No" := 1;
    end;

}


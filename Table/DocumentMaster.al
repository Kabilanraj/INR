table 50103 "Document Master"
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Document No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

            // trigger OnValidate()
            // begin
            //     if "Document No." <> xRec."Document No." then begin
            //         SalesSetup.Get();
            //         NoSeriesMgt.TestManual(SalesSetup."Book Nos.");
            //         "No. Series" := '';
            //     end;
            // end;

        }
        field(2; "Doc_No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            // AutoIncrement = true;
            trigger OnValidate()
            begin
                if "Doc_No." <> xRec."Doc_No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Book Nos.");
                    "No. Series" := '';
                end;
            end;

        }
        field(3; "Employee Name"; Text[30])
        {
            Caption = 'First Name';
            // Tablerelation = Employee."First Name";
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup(Employee."First Name" where("No." = field("EMP NO.")));
            TableRelation = Employee;

        }
        field(4; "Last Name"; Text[30])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Employee."Last Name" where("No." = field("EMP NO.")));
            TableRelation = Employee;
        }
        field(5; "Job Title"; Text[30])
        {
            // TableRelation = Employee."Job Title";

            FieldClass = FlowField;
            CalcFormula = lookup(Employee."Job Title" where("No." = field("EMP NO.")));
            TableRelation = Employee;


        }
        field(6; "Create Date"; Date)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(7; Address; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Address To"; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Entity Name"; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(10; Country; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(11; City; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Travel From Date"; Date)
        {

            DataClassification = ToBeClassified;
        }
        field(13; "Travel To Date"; Date)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if ("Travel To Date" <= "Travel From Date") and ("Travel From Date" > "Travel To Date") then
                    Error('Travel To date is more than Travel from Date');
            end;
        }
        field(14; "Purpose of request"; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Document Type"; Option)
        {

            OptionMembers = "Salary Certificate","Salary Transfer Letter","No Obejection Certificate","Confirmation of Employement Certificate";
            DataClassification = ToBeClassified;
        }
        field(16; "EMP NO."; Code[20])
        {
            DataClassification = ToBeClassified;
            //  TableRelation = Employee."No.";

            // trigger OnValidate()
            // var
            //     empno: Record Employee;

            // begin
            //     if xRec."NO." <> Rec."NO." then begin
            //         empno.Reset();
            //         if empno.Get("NO.") then begin
            //             "Employee Name" := empno."No.";
            //             "Last Name" := empno."Last Name";
            //             "Job Title" := empno."Job Title";

            //         end;
            //     end;
            // end;
            TableRelation = Employee;


            trigger OnValidate()
            begin
                CalcFields("Employee Name", "Last Name", "Job Title");
                begin
                    if emp.Count > 0 then
                        if not Confirm(emp01) then begin
                            Clear(emp);
                            Modify(true);
                        end;
                    exit;
                end;
            end;
        }
        field(17; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(18; "Approval Status"; Option)
        {
            OptionMembers = "Open","Waiting For Approval","Approved";
            DataClassification = ToBeClassified;
        }



    }

    keys
    {
        key(PK; "Doc_No.")
        {
            Clustered = true;
        }
        // key(key2; "NO.")
        // {
        //     Clustered = true;

        // }
    }

    var
        myInt: Integer;

    // trigger OnInsert()
    // begin

    // end;
    // var
    //     recBankSec: Record DocumentMaster;
    //     EntryNo: Integer;
    //     recJob: Record Employee;
    // begin
    //     Clear(recBankSec);
    //     Clear(EntryNo);
    //     IF recBankSec.FindLast() then
    //         EntryNo := recBankSec."Document No." + 1
    //     else
    //         EntryNo := 1;
    //     Rec."Document No." := EntryNo;

    //     recJob.SetFilter("No.", rec."NO.");
    //     IF recJob.FindFirst() then begin
    //         // Rec."Employee Name" := recJob."First Name";
    // Rec."Last Name" := recJob."Last Name";
    // Rec."Job Title" := recJob."Job Title";
    // Rec."NO.":= recJob.
    //         recJob."First Name" := Rec."Employee Name";
    //         recJob."Last Name" := Rec."Last Name";
    //         recJob."Job Title" := Rec."Job Title";
    //     end;
    // end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;


    trigger OnInsert()


    var
        recBankSec: Record "Document Master";

    begin
        Clear(recBankSec);
        IF recBankSec.FindLast() then
            "Document No." := recBankSec."Document No." + 1
        else
            "Document No." := 1;

        begin
            // if "Document No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Book Nos.");
            NoSeriesMgt.InitSeries(SalesSetup."Book Nos.", xRec."No. Series", 0D, "Doc_No.", "No. Series");

        end;
        //  end;
        begin
            test01 := System.Today();
            Validate("Create Date", test01);


        end;





    end;

    var
        emp: Record Employee;
        emp01: Label 'Are you need to Change the employee';


    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    var
        test01: Date;

}
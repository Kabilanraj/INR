table 50104 "City Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "City Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "City Code" <> xRec."City Code" then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Book Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Country"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country Master";
        }
        field(3; "City"; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "City")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        begin
            // if "Document No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("City Code"); // city code get from salessetup
            NoSeriesMgt.InitSeries(SalesSetup."City Code", xRec."No. Series", 0D, "City Code", "No. Series");//here city code get from city master  table

        end;

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
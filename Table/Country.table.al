table 50102 "Country Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Country Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Country Code" <> xRec."Country Code" then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Book Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Country"; Text[254])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }

    }

    keys
    {
        key(PK; Country)
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;
        country: Record "Country Master";
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        // Clear(country);
        // IF country.FindLast() then
        //     "Country Code" := country."Country Code" + 1
        // else
        //     "Country Code" := 1;
        begin
            // if "Document No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Country Code");
            NoSeriesMgt.InitSeries(SalesSetup."Country Code", xRec."No. Series", 0D, "Country Code", "No. Series");

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
tableextension 50100 SalesReceivablesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50200; "Book Nos."; Code[20])
        {
            Caption = 'Book Nos.';
            TableRelation = "No. Series";
        }
        field(50201; "Country Code"; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(50202; "City Code"; Code[20])
        {
            TableRelation = "No. Series";
        }
    }
}
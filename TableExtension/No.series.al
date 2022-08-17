tableextension 50100 SalesReceivablesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50200; "Book Nos."; Code[20])
        {
            Caption = 'Book Nos.';
            TableRelation = "No. Series";
        }
    }
}
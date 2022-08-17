pageextension 50102 SalesReceivablesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Book Nos."; rec."Book Nos.")
            {
                Caption = 'Book Nos.';
                ApplicationArea = All;
            }
        }
    }
}
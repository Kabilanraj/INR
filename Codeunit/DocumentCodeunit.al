
// Write an code unit for Document Management
// Salary certificate


codeunit 50104 MyCodeunit
{
    trigger OnRun()
    begin

    end;


    procedure employeechangedata()
    var
        Emp: Record Employee;
        Emp01: Label 'Are you want to change a record?';
    begin
        with Emp do begin
            if Emp.Count > 0 then begin

                if not Confirm(Emp01) then begin
                    Clear(Emp);
                    Modify(true);
                    exit;
                end;
            end;
        end;


    end;

    procedure Countryexit()
    var
        city01: Label 'Are you want to change the record';
        city: Record "City Master";
        country01: Record "Country Master";

    begin
        with city do begin
            if country01.Count > 0 then begin
                Validate(City, '');
                Clear(city);
                Modify(true);
                // if not Confirm(city01) then begin


                //     Modify(true);
                // end;
            end;
        end;

    end;

    var
        myInt: Integer;
}


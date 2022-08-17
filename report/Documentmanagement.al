report 50104 "Document Management Report"
{
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Documentmanagement.rdl';

    dataset
    {
        dataitem("Document Master"; "Document Master")
        {
            column(Employee_Name; "Employee Name")
            {

            }
            column(Last_Name; "Last Name")
            {

            }
            column(Job_Title; "Job Title")
            {

            }
            column(Address; Address)
            {

            }
            column(Address_To; "Address To")
            {

            }
            column(City; City)
            {

            }
            column(Country; Country)
            {

            }
            column(Purpose_of_request; "Purpose of request")
            {

            }
            column(Travel_From_Date; "Travel From Date")
            {

            }
            column(Travel_To_Date; "Travel To Date")
            {

            }

        }
    }
}

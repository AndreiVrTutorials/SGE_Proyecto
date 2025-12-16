table 50108 "TablaClaustro"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Profesor"; Code[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
        }
        field(2; "Nombre"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Direccion"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha contr."; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Fecha contratacion';
        }
        field(5; "Num. ayud."; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'Nº de ayudantes';
        }
    }

    keys
    {
        key("Codigo Profesor"; "Codigo Profesor")
        {
            Clustered = true;
        }
    }

}
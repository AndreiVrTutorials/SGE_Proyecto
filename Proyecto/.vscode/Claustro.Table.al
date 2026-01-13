table 50108 "TablaClaustro"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Profesor"; Code[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            Numeric = true;
        }
        field(2; "Nombre"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
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
            InitValue = 0;
            MinValue = 0;
        }
        field(6; "Sueldo"; Decimal)
        {
            DataClassification = ToBeClassified;
            MinValue = 0;
            DecimalPlaces = 2;
        }
        field(7; "Codigo dept"; Code[4])
        {
            DataClassification = ToBeClassified;
            TableRelation = "TablaDepartamentos"."Codigo dept";
        }
    }

    keys
    {
        key("Codigo Profesor"; "Codigo Profesor")
        {
            Clustered = true;
        }
        key(key2; "Nombre", "Direccion", "Fecha contr.", "Sueldo")
        {

        }
    }

}
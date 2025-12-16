table 50102 "TablaDepartamentos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo dept"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';

        }
        field(2; "Edificio"; Text[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Ubicación del departamento';
        }
        field(3; "Despacho"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key("Codigo dept"; "Codigo dept")
        {
            Clustered = true;
        }
    }

}
table 50107 "TablaPersonal"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Personal"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            NotBlank = true;
            Numeric = true;
        }
        field(2; "Nombre"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Cargo"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Sueldo"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 2;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Cod. Personal")
        {
            Clustered = true;
        }
        key(key2; "Nombre", "Cargo")
        {

        }
    }
}
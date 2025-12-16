table 50100 Vehiculo
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; Modelo; Code[20])
        {

        }
        field(2; "Nº Serie"; Integer) { }
        field(3; Descripcion; Text[100])
        {
            NotBlank = true;

        }
        field(4; Transmision; Option)
        {
            OptionMembers = ,Manual,Automatico,Levas;
        }
        field(5; Precios; Decimal)
        {
            InitValue = 0.0;
        }
        field(6; "Fecha de fabricacion"; Date)
        {

        }
        field(7; "IVA incluido"; Boolean) { }
    }
    keys
    {
        //PK
        key(key1; Modelo, "Nº Serie")
        {
            Clustered = true;
        }

        key(key2; "Fecha de fabricacion", Transmision) { }
    }

    trigger OnInsert()
    begin
        "Fecha de fabricacion" := Today();
    end;
}
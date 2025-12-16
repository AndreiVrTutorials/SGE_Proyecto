table 50102 "TablaCursos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Curso"; Code[3])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Nombre Curso"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Desc. Curso"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Creditos"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Tarifa"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "Cod. Curso")
        {
            Clustered = true;
        }
    }
}
table 50102 "TablaDepartamentos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo dept"; Code[4])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            NotBlank = true;
            trigger OnValidate()
            begin
                "Codigo dept" := UpperCase("Codigo dept");
            end;

        }
        field(2; "Edificio"; Text[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Ubicación del departamento';
            trigger OnValidate()
            begin
                "Edificio" := UpperCase("Edificio");
            end;
        }
        field(3; "Despacho"; Integer)
        {
            DataClassification = ToBeClassified;
            InitValue = 0;
            MinValue = 0;
        }
        field(4; "DIRECTOR"; Code[2])
        {
            DataClassification = ToBeClassified;
            TableRelation = "TablaClaustro"."Codigo Profesor";
        }
        field(5; "Promedio Tarifa"; Decimal)
        {
            Caption = 'Promedio Tarifa Laboratorio';
            FieldClass = FlowField;
            CalcFormula = Average("TablaCursos".Tarifa where("Cod. Departamento" = field("Codigo dept")));
        }
    }

    keys
    {
        key("Codigo dept"; "Codigo dept")
        {
            Clustered = true;
        }
        key(key2; "Despacho") { }
    }

}
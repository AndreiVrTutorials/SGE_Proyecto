table 50103 "TablaCursos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Curso"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            TableRelation = "TablaDepartamentos"."Codigo dept";
            NotBlank = true;
            trigger OnValidate()
            begin
                "Cod. Curso" := UpperCase("Cod. Curso");
            end;

        }
        field(2; "Nombre Curso"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Desc. Curso"; Text[30])
        {
            DataClassification = ToBeClassified;
            Description = 'Descripcion del curso';

        }
        field(4; "Creditos"; Integer)
        {
            DataClassification = ToBeClassified;
            InitValue = 0;
        }
        field(5; "Tarifa"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Tarifa laboratorio';
            DecimalPlaces = 2;
        }
        field(6; "Cod. Departamento"; Code[4])
        {
            DataClassification = ToBeClassified;
            Description = 'Codigo del departamento';
            TableRelation = "TablaDepartamentos"."Codigo dept";
        }
    }
    keys
    {
        key(Key1; "Cod. Curso")
        {
            Clustered = true;
        }
        key(Key2; "Nombre Curso", "Desc. Curso") { }
    }
}
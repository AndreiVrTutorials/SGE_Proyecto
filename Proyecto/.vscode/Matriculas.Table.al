table 50106 "TablaMatriculas"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Curso"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            TableRelation = "TablaClases"."Cod. Curso";
            Notblank = true;
            trigger OnValidate()
            begin
                "Cod. Curso" := UpperCase("Cod. Curso");
            end;

        }
        field(2; "Seccion"; Text[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Numero de seccion - clave ppal';
            TableRelation = "TablaClases"."Seccion" WHERE("Cod. Curso" = FIELD("Cod. Curso"));
            Numeric = true;
            NotBlank = true;
        }
        field(3; "Cod. Estudiante"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'clave principal';
            TableRelation = "TablaEstudiantes"."Codigo Estudiante";
            Numeric = true;
            NotBlank = true;
        }
        field(4; "Fecha Matricula"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Fecha de matriculacion';
        }
        field(5; "Hora Matricula"; Time)
        {
            DataClassification = ToBeClassified;
            Description = 'Hora de matriculacion';
        }

    }

    keys
    {
        key(Key1; "Cod. Curso", "Seccion", "Cod. Estudiante")
        {
            Clustered = true;
        }
        key(key2; "Fecha Matricula", "Hora Matricula")
        {

        }
    }
}
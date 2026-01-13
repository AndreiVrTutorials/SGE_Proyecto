table 50104 "TablaClases"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Curso"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            TableRelation = "TablaCursos"."Cod. Curso";
            NotBlank = true;
            trigger OnValidate()
            begin
                "Cod. Curso" := UpperCase("Cod. Curso");
            end;
        }
        field(2; "Seccion"; Text[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Numero de la seccion - Clave ppal';
            Numeric = true;
            NotBlank = true;
        }
        field(3; "Dia"; Text[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Dia de la semana';
        }
        field(4; "Hora"; Time)
        {
            DataClassification = ToBeClassified;
            Description = 'Hora de la clase';
        }
        field(5; "Edificio"; Text[2])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                "Edificio" := UpperCase("Edificio");
            end;

        }
        field(6; "Despacho"; Integer)
        {
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(7; "Cod. Profesor"; Code[2])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Cod. Curso", "Seccion")
        {
            Clustered = true;
        }
        key(Key2; "Dia") { }
    }
}
table 50104 "TablaClases"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Curso"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Codigo del curso al que pertenece la clase';
        }
        field(2; "Seccion"; Text[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Numero de la seccion - Clave ppal';
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
        }
        field(6; "Despacho"; Integer)
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
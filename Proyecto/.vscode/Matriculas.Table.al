table 50106 "TablaMatriculas"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod. Curso"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
        }
        field(2; "Seccion"; Text[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Numero de seccion - clave ppal';
        }
        field(3; "Cod. Estudiante"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'clave principal';
        }
        field(4; "Fecha Matricula"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Fecha de matriculacion';
        }
        field(5; "Hola Matricula"; Time)
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
    }
}
table 50105 "TablaEstudiantes"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo estudiante"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';

        }
        field(2; "Nombre"; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Sexo"; Enum "Tipo Sexo")
        {
            DataClassification = ToBeClassified;

        }

        field(4; "Direccion"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Telefono"; Text[9])
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Fecha nac."; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Fecha nacimiento';
        }
    }

    keys
    {
        key("Codigo estudiante"; "Codigo estudiante")
        {
            Clustered = true;
        }
    }

}
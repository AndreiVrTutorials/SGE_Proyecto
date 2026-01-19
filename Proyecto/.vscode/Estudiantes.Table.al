table 50105 "TablaEstudiantes"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo estudiante"; Code[3])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            Numeric = true;
            NotBlank = true;

        }
        field(2; "Nombre"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

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
            Numeric = true;

        }
        field(6; "Fecha nac."; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Fecha nacimiento';
        }
        field(7; "Cod. Tutor"; Code[2])
        {
            DataClassification = ToBeClassified;
            TableRelation = "TablaClaustro"."Codigo Profesor";
        }
    }

    keys
    {
        key(Key1; "Codigo estudiante")
        {

        }
        key(Key2; "Nombre", "Direccion", "Telefono") { }
    }

}
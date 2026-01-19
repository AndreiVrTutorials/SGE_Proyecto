table 50108 "TablaClaustro"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Profesor"; Code[2])
        {
            DataClassification = ToBeClassified;
            Description = 'Clave principal';
            Numeric = true;
        }
        field(2; "Nombre"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Direccion"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha contr."; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Fecha contratacion';
        }

        field(5; "Sueldo"; Decimal)
        {
            DataClassification = ToBeClassified;
            MinValue = 0;
            DecimalPlaces = 2;
        }
        field(6; "Codigo dept"; Code[4])
        {
            DataClassification = ToBeClassified;
            TableRelation = "TablaDepartamentos"."Codigo dept";
        }
        field(7; "Num Ayudante"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("TablaPersonal" where("Cargo" = const('Ayudante'),
                                             "Codigo Profesor" = field("Codigo Profesor")));
            Editable = false;
        }
        field(8; "Filtro Día"; Text[10])
        {
            FieldClass = FlowFilter;
        }

        field(9; "Num. Clases"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("TablaClases" where("Cod. Profesor" = field("Codigo Profesor"),
                                            Dia = field("Filtro Día")));
            Editable = false;
        }
    }

    keys
    {
        key(key1; "Codigo Profesor")
        {

        }
        key(key2; "Nombre", "Direccion", "Fecha contr.", "Sueldo")
        {

        }
    }

}
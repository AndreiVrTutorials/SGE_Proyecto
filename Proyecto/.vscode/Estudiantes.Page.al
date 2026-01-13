page 50104 "Lista Estudiantes"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaEstudiantes";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo estudiante"; Rec."Codigo estudiante") { }
                field("Nombre"; Rec."Nombre") { }
                field("Sexo"; Rec."Sexo") { }

                field("Direccion"; Rec."Direccion") { }
                field("Telefono"; Rec."Telefono") { }
                field("Fecha nac."; Rec."Fecha nac.")
                { }
                field("Cod. Tutor"; Rec."Cod. Tutor")
                {
                    TableRelation = "TablaClaustro"."Codigo Profesor";
                }
            }
        }
    }

}
page 50105 "List Matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaMatriculas";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Cod. Curso"; Rec."Cod. Curso")
                {
                    TableRelation = "TablaClases"."Cod. Curso";
                }
                field("Seccion"; Rec."Seccion")
                {
                    TableRelation = "TablaClases"."Cod. Curso";
                }
                field("Cod. Estudiante"; Rec."Cod. Estudiante")
                {
                    TableRelation = "TablaEstudiantes"."Codigo Estudiante";
                }
                field("Fecha Matricula"; Rec."Fecha Matricula") { }
                field("Hora Matricula"; Rec."Hora Matricula") { }
            }
        }
    }

}
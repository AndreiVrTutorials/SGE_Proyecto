page 50102 "List Cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaCursos";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("Cod. Curso"; Rec."Cod. Curso")
                {
                    TableRelation = "TablaDepartamentos"."Codigo dept";
                }
                field("Nombre Curso"; Rec."Nombre Curso") { }
                field("Desc. Curso"; Rec."Desc. Curso") { }
                field("Creditos"; Rec."Creditos") { }
                field("Tarifa"; Rec."Tarifa") { }
            }
        }

    }

}
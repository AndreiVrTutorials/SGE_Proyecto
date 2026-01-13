page 50101 "Lista Clases Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaClases";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Cod. Curso"; Rec."Cod. Curso")
                {
                    TableRelation = "TablaCursos"."Cod. Curso";
                }
                field("Seccion"; Rec."Seccion") { }
                field("Dia"; Rec."Dia") { }
                field("Hora"; Rec."Hora") { }
                field("Edificio"; Rec."Edificio") { }
                field("Despacho"; Rec."Despacho") { }
            }
        }

    }

}
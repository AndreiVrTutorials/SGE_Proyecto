page 50100 "Lista Claustro"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaClaustro";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo Profesor"; Rec."Codigo Profesor") { }
                field("Nombre"; Rec."Nombre") { }
                field("Direccion"; Rec."Direccion") { }
                field("Fecha contr."; Rec."Fecha contr.") { }
                field("Num. ayud."; Rec."Num. ayud.") { }
                field("Sueldo"; Rec."Sueldo") { }
                field("Codigo dept"; Rec."Codigo dept")
                {
                    TableRelation = "TablaDepartamentos"."Codigo dept";
                }
                field("Numero Clases"; Rec."Num. Clases")
                {

                }
            }
        }
    }
}
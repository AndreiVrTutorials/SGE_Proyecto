page 50103 "List Departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaDepartamentos";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo dept"; Rec."Codigo dept") { }
                field("Edificio"; Rec."Edificio") { }
                field("Despacho"; Rec."Despacho") { }
                field("DIRECTOR"; Rec."DIRECTOR")
                {
                    TableRelation = "TablaClaustro"."Codigo Profesor";
                }
                field("Promedio tarifa"; Rec."Promedio Tarifa") { }
            }
        }

    }


}
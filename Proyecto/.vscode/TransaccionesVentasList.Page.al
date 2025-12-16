page 50101 "Lista Transacciones Ventas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Transacciones de Ventas";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Num. Linea"; Rec."Num. Linea")
                {
                }
                field("Codigo Vendedor"; Rec."Codigo Vendedor")
                {
                }
                field("Tipo"; Rec.Tipo)
                {
                }
                field("Num. Item"; Rec."Num. Item")
                {
                }
                field("Importe"; Rec.Importe)
                {
                }
            }
        }
    }
}
tableextension 50100 "Mis Compradores/Vendedores" extends "Salesperson/Purchaser"
{
    fields
    {
        field(50100; "Total Ventas"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Transacciones de Ventas".Importe where("Codigo Vendedor" = field(Code)));
        }
    }
}
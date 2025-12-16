table 50101 "Transacciones de Ventas"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Lista Transacciones Ventas";

    fields
    {
        field(1; "Num. Linea"; Integer)
        {

        }
        field(2; "Codigo Vendedor"; Code[10])
        {
            TableRelation = "Salesperson/Purchaser" where("Commission %" = filter('<>0'));
        }
        field(3; "Num. Item"; Code[20])
        {
            TableRelation = if (Tipo = const("Tipo Item"::Cuenta)) "G/L Account"
            else if (Tipo = const("Tipo Item"::Producto)) Item
            else if (Tipo = const("Tipo Item"::Recurso)) Resource
            else if (Tipo = const("Tipo Item"::Vehiculo)) Vehiculo;

        }
        field(4; "Importe"; Decimal)
        {

        }
        field(5; "Tipo"; Enum "Tipo Item")
        {

        }
    }

    keys
    {
        key(PK; "Num. Linea")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
}
pageextension 50100 "Mis Compradores/Vendedores" extends "Salespersons/Purchasers"
{
    layout
    {
        addafter("Phone No.")
        {
            field("Total Ventas"; Rec."Total Ventas")
            {
                ApplicationArea = All;
            }
        }
    }
}
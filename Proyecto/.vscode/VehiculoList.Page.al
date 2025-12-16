page 50100 "Lista vehiculos"
{
    Caption = 'Vehiculos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehiculo;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Modelo; Rec.Modelo) { }
                field("Nº Serie"; Rec."Nº Serie") { }
                field(Descripcion; Rec.Descripcion)
                {
                    ShowMandatory = true;

                }
                field(Transmision; Rec.Transmision) { }
                field(Precios; Rec.Precios) { }
                field("IVA incluido"; Rec."IVA incluido") { }
                field("Fecha de fabricacion"; Rec."Fecha de fabricacion") { }
            }
        }
    }
}
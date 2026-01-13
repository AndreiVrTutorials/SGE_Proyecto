page 50106 "List Personal"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TablaPersonal";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Cod. Personal"; Rec."Cod. Personal")
                { }
                field("Nombre"; Rec."Nombre") { }
                field("Cargo"; Rec."Cargo") { }
                field("Sueldo"; Rec."Sueldo") { }
            }
        }
    }
}
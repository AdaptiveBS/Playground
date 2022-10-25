page 37077600 "AJE PLG TEST PAGE"
{
    ApplicationArea = All;
    Caption = 'Caption';
    PageType = Card;
    SourceTable = Currency;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
        }
    }

    actions
    {
        area(Processing)
        {
            action(Confirm)
            {
                ApplicationArea = All;
                Image = "1099Form";
                ToolTip = 'Confirm';

                trigger OnAction()
                begin
                    if not Confirm('Hi') then
                        Error('cancelled');
                end;
            }
        }
    }
}
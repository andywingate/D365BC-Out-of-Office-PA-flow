page 50100 "w365-approvalEntries"
{
    APIGroup = 'w365apiActions';
    APIPublisher = 'wingate365';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'w365ApprovalEntries';
    DelayedInsert = true;
    EntityName = 'approvalEntry';
    EntitySetName = 'approvalEntryDelegation';
    PageType = API;
    SourceTable = "Approval Entry";
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            field("EntryNo"; Rec."Entry No.")
            { }
            field(SystemId; Rec.SystemId)
            { }
        }
    }


    [ServiceEnabled]
    [Scope('Cloud')]
    procedure delegate(var ActionContext: WebServiceActionContext)
    var
        ApprovalEntry: Record "Approval Entry";
    begin
        delegate(Rec);
    end;

    local procedure delegate(var ApprovalEntry: Record "Approval Entry")
    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    begin
        //CurrPage.SetSelectionFilter(ApprovalEntry);
        ApprovalsMgmt.DelegateApprovalRequests(ApprovalEntry);
    end;


}

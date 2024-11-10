query 50100 "w365-ApprovalEntryUser"
{
    APIGroup = 'w365queries';
    APIPublisher = 'winagte365';
    APIVersion = 'v1.0';
    EntityName = 'approvalEntryUser';
    EntitySetName = 'approvalEntryUserLines';
    QueryType = API;

    elements
    {
        dataitem(approvalEntry; "Approval Entry")
        {
            column(SystemId; SystemId)
            { }
            column(approverID; "Approver ID")
            { }
            column(senderID; "Sender ID")
            { }
            column(status; Status)
            { }
            dataitem(User_Setup; "User Setup")
            {
                DataItemLink = "User ID" = approvalEntry."Approver ID";
                SqlJoinType = InnerJoin;
                column(User_ID; "User ID")
                { }
                column(E_Mail; "E-Mail")
                { }
            }
        }
    }
}

codeunit 77177 "APF Suggest Vendor Payments"
{
    [EventSubscriber(ObjectType::Report, Report::"Suggest Vendor Payments", 'OnGetVendLedgEntriesOnAfterVendLedgEntrySetFilters', '', false, false)]
    local procedure SVPOnGetVendLedgEntriesOnAfterVendLedgEntrySetFilters(var VendorLedgerEntry: Record "Vendor Ledger Entry")
    begin
        VendorLedgerEntry.SetFilter("Remit-to Code", '<>%1', 'EXCLUDE');
    end;
}
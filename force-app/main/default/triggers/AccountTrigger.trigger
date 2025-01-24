trigger AccountTrigger on Account (before insert, before update) {
    AccountHandler.assignCategory(Trigger.new);
    AccountHandler.calculateRevenuePerEmployee(Trigger.new);
}
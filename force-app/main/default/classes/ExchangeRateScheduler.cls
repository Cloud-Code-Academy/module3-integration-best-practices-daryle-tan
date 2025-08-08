/**
 * @description Scheduler class to run the exchange rate update on a schedule
 * Scheduling should be done in Salesforce Setup Apex Classes -> Schedule Apex
 */
global class ExchangeRateScheduler implements Schedulable {
    
    /**
     * @description Executes the scheduled job to update exchange rates
     * @param context The SchedulableContext
     */
    global void execute(SchedulableContext context) {
        // TODO: Implement the method to update exchange rates
        // 1. Call ExchangeRateService.updateExchangeRates()
        try {
            ExchangeRateService.updateExchangeRates();
        // 2. Add error handling
        // 3. Consider adding logging if available
        } catch (Exception e) {
            System.debug('There was an error updating the exchange rates: ' + e.getMessage());
        }    
    }
}
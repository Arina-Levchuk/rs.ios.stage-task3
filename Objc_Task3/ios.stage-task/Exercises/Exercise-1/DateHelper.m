#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if (monthNumber <= 0 || monthNumber >= 11) { return nil; }
    
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    NSArray *monthNames = [dateFormatter standaloneMonthSymbols];
    return [monthNames objectAtIndex:(monthNumber - 1)];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    return 0;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end

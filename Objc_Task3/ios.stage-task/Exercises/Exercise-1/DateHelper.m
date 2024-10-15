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
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
    NSDate *dateFromString = [dateFormatter dateFromString:date];

    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:dateFromString];

    return dateComponents.day;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitWeekday fromDate:date];
    
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    
    return dateFormatter.shortWeekdaySymbols[dateComponents.weekday - 1];;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end

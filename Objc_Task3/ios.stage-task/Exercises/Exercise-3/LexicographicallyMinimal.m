#import "LexicographicallyMinimal.h"
#import "NSMutableArray+QueueLinear.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *resultString = [NSMutableString string];
    
    NSUInteger index1 = 0;
    NSUInteger index2 = 0;
    
    while (index1 < string1.length && index2 < string2.length) {
        unichar char1 = [string1 characterAtIndex:index1];
        unichar char2 = [string2 characterAtIndex:index2];
        
        if (char1 <= char2) {
            [resultString appendFormat:@"%C", char1];
            index1++;
        } else {
            [resultString appendFormat:@"%C", char2];
            index2++;
        }
    }
    
    while (index1 < string1.length) {
        [resultString appendFormat:@"%C", [string1 characterAtIndex:index1]];
        index1++;
    }
    
    while (index2 < string2.length) {
        [resultString appendFormat:@"%C", [string2 characterAtIndex:index2]];
        index2++;
    }
    
    return resultString;
}

@end

#import "LexicographicallyMinimal.h"
#import "NSMutableArray+QueueLinear.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableArray *charsFromString1Array = [NSMutableArray arrayWithCapacity:string1.length];
    NSMutableArray *charsFromString2Array = [NSMutableArray arrayWithCapacity:string2.length];
    NSMutableString *resultString = [NSMutableString string];
    
    for (int i = 0; i < string1.length; i++) {
        [charsFromString1Array addObject:[NSString stringWithFormat:@"%C", [string1 characterAtIndex:i]]];
    }
    
    for (int i = 0; i < string2.length; i++) {
        [charsFromString2Array addObject:[NSString stringWithFormat:@"%C", [string2 characterAtIndex:i]]];
    }
    
    while (charsFromString1Array.count > 0 && charsFromString2Array.count > 0) {
        NSComparisonResult comparisonResult = [charsFromString1Array[0] compare:charsFromString2Array[0]];
        
        NSString *letter = (comparisonResult == NSOrderedAscending || comparisonResult == NSOrderedSame) ?
        [charsFromString1Array removeAndReturnFirstObject] :
        [charsFromString2Array removeAndReturnFirstObject];
        
        [resultString appendFormat:@"%@", letter];
        
        NSLog(@"%@", resultString);
    }
    
    if (charsFromString1Array.count > 0) {
        [resultString appendFormat:@"%@", [charsFromString1Array componentsJoinedByString:@""]];
    } else if (charsFromString2Array.count > 0) {
        [resultString appendFormat:@"%@", [charsFromString2Array componentsJoinedByString:@""]];
    }
    
    return resultString;
}

@end

#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    if (ratingArray == nil ||
        ratingArray.count == 0 ||
        ratingArray.count < 3)
    { return 0; }
    
    NSInteger teamCount = 0;
    
    for (int i = 0; i < ratingArray.count - 2; i++) {
        NSInteger scoreI = [[ratingArray objectAtIndex:i] intValue];
        for (int j = i + 1; j < ratingArray.count - 1; j++) {
            NSInteger scoreJ = [[ratingArray objectAtIndex:j] intValue];
            for (int k = j + 1; k < ratingArray.count; k++) {
                NSInteger scoreK = [[ratingArray objectAtIndex:k] intValue];
                if ((scoreI < scoreJ && scoreJ < scoreK) || (scoreI > scoreJ && scoreJ > scoreK)) {
                    teamCount++;
                }
            }
        }
    }
    
    return teamCount;
}

@end

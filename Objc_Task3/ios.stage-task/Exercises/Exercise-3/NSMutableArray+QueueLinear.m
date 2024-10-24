//
//  NSMutableArray+QueueLinear.m
//  ios.stage-task
//
//  Created by Arina Levchuk on 16/10/2024.
//

#import "NSMutableArray+QueueLinear.h"

@implementation NSMutableArray (QueueLinear)

- (id)removeAndReturnFirstObject {
    id object = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
    return object;
}

@end

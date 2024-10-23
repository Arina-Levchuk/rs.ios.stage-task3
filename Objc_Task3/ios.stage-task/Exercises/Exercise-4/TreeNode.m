//
//  TreeNode.m
//  ios.stage-task
//
//  Created by Arina Levchuk on 22/10/2024.
//

#import "TreeNode.h"

@implementation TreeNode

- (instancetype)initWithValue:(NSNumber *)value {
    self = [super init];
    if (self) {
        _value = value;
        _left = NULL;
        _right = NULL;
    }
    
    return self;
}

@end

//
//  TreeNode.h
//  ios.stage-task
//
//  Created by Arina Levchuk on 22/10/2024.
//

#import <Foundation/Foundation.h>

@interface TreeNode : NSObject

@property (nonatomic, assign) NSNumber *value;
@property (nonatomic, strong) TreeNode *left;
@property (nonatomic, strong) TreeNode *right;

- (instancetype)initWithValue:(NSNumber *)value;

@end

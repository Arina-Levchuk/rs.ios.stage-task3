//
//  BinaryTree.m
//  ios.stage-task
//
//  Created by Arina Levchuk on 23/10/2024.
//

#import "BinaryTree.h"

@implementation BinaryTree

TreeNode* buildTree(NSArray<NSNumber *> *preorder, NSInteger *index, NSInteger min, NSInteger max) {
    if (*index >= preorder.count) {
        return nil;
    }
    
    
    
    while (preorder[*index] == [NSNull null]) {
        (*index)++;
//        return nil;
    }
    id valueObj = preorder[*index];
    
    NSNumber *value = (NSNumber *)valueObj;
    
    if (value.integerValue < min || value.integerValue > max) {
        return nil;
    }
    
    (*index)++;
    
    TreeNode *node = [[TreeNode alloc] initWithValue:value];
    
    node.left = buildTree(preorder, index, min, value.integerValue);
    node.right = buildTree(preorder, index, value.integerValue, max);
    
    return node;
}

- (TreeNode *)buildBinaryTree:(NSArray *)tree {
    NSInteger index = 0;
    return buildTree(tree, &index, NSIntegerMin, NSIntegerMax);
}

@end

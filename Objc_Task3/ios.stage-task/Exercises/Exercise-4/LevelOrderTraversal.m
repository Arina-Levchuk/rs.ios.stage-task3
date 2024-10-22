#import "LevelOrderTraversal.h"
#import "NSMutableArray+QueueLinear.h"
#import "TreeNode.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *levelOrderTraversalResult = [NSMutableArray array];
    
    if (!tree || tree.count == 0 || tree[0] == [NSNull null]) {
        return levelOrderTraversalResult;
    }
    
    // create Tree
    NSMutableArray *nodesTree = [NSMutableArray array];
    
    TreeNode *root = [[TreeNode alloc] initWithValue:tree[0]];
    [nodesTree addObject:root];
    
    TreeNode *currentNode = [nodesTree removeAndReturnFirstObject];
    int index = 1;
    while (index < tree.count) {
        if (index < tree.count && tree[index] != [NSNull null]) {
            currentNode.left = [[TreeNode alloc] initWithValue:tree[index]];
            [nodesTree addObject:currentNode.left];
        }
        index++;

        if (index < tree.count && tree[index] != [NSNull null]) {
                currentNode.right = [[TreeNode alloc] initWithValue:tree[index]];
                [nodesTree addObject:currentNode.right];
        }
        index++;
        
        if ([nodesTree removeAndReturnFirstObject]) {
            currentNode = [nodesTree removeAndReturnFirstObject];
        }
    }
    [nodesTree addObject:root];
    
    
    
    for (id node in tree) {
        //        TreeNode *node =
    }
    
    return levelOrderTraversalResult;
}

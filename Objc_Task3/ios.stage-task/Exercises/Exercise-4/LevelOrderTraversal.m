#import "LevelOrderTraversal.h"
#import "NSMutableArray+QueueLinear.h"
#import "TreeNode.h"
#import "BinaryTree.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *levelOrderTraversalResult = [NSMutableArray array];
    
    if (!tree || tree.count == 0 || tree[0] == [NSNull null]) {
        return @[];
    }
    
    BinaryTree *binaryTree = [[BinaryTree alloc] init];
    TreeNode *root = [binaryTree buildBinaryTree:tree];
    
    NSMutableArray *queue = [NSMutableArray array];
    [queue addObject:root];
    
    while (queue.count != 0) {
        int size = queue.count;
        NSMutableArray *levelArray = [NSMutableArray array];
        
        for (int i = 0; i < size; i++) {
            TreeNode *currentNode = [queue removeAndReturnFirstObject];
            
            if (currentNode.value) {
                [levelArray addObject:currentNode.value];
            }
            
            if (currentNode.left) {
                [queue addObject:currentNode.left];
            }
            if (currentNode.right) {
                [queue addObject:currentNode.right];
            }
        }
        
        if (levelArray.count > 0) {
            [levelOrderTraversalResult addObject:levelArray];
        }
    }
    
    return [levelOrderTraversalResult copy];
}

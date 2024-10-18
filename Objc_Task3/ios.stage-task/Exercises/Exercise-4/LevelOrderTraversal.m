#import "LevelOrderTraversal.h"
#import "NSMutableArray+QueueLinear.h"

typedef struct {
    int value;
    struct TreeNode *left;
    struct TreeNode *right;
} TreeNode;

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *levelOrderArray = [NSMutableArray array];
    
    if (tree == nil || tree.count == 0 || tree[0] == [NSNull null]) {
        return levelOrderArray;
    }

    int nodeCount = tree.count;
    NSUInteger location = 0;
    int rangeLength = 1;
    
    while (nodeCount != 0) {
        NSMutableArray *levelNodes = [NSMutableArray array];

        NSRange range = NSMakeRange(location, rangeLength);
        NSArray *treeSubarray = [tree subarrayWithRange:range];
        for (int nodeIndex = 0; nodeIndex < treeSubarray.count; nodeIndex++) {
            if ([treeSubarray objectAtIndex:nodeIndex]) {
                id node = [treeSubarray objectAtIndex:nodeIndex];
                if (node != [NSNull null]) {
                    [levelNodes addObject:node];
                }
            }
            nodeCount--;
            location++;
        }
        rangeLength = MIN(nodeCount, rangeLength * 2);
        
        [levelOrderArray addObject:levelNodes];
    }

    return levelOrderArray;
}

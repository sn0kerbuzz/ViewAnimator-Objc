//
//  UICollectionView+Animator.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "UICollectionView+Animator.h"

@implementation UICollectionView (Animator)
- (NSArray <UICollectionViewCell *>*)visibleCellsInsection:(NSInteger)section{
    NSArray *array = self.visibleCells;
    NSMutableArray*sArray = [NSMutableArray array];
    [array enumerateObjectsUsingBlock:^(UICollectionViewCell *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self indexPathForCell:obj].section != section?:[sArray addObject:obj];
    }];
    return sArray;
}
- (NSArray <UICollectionViewCell *>*)orderedVisibleCells{
    NSArray *array = [self indexPathsForVisibleItems];
    NSArray *sortedIndexPaths = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSIndexPath *path1 = (NSIndexPath *)[self indexPathForCell:obj1];
        NSIndexPath *path2 = (NSIndexPath *)[self indexPathForCell:obj2];
        return [path1 compare:path2];
    }];
    return sortedIndexPaths;
}
@end

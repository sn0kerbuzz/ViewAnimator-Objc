//
//  UICollectionView+Animator.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "UICollectionView+Animator.h"

@implementation UICollectionView (Animator)

- (NSArray<UICollectionViewCell *> *)visibleCellsInSection:(NSInteger)section{

    NSArray *visibleCells = self.visibleCells;

    NSMutableArray *visibleCellsInSection = [NSMutableArray array];

    [visibleCells enumerateObjectsUsingBlock:^(UICollectionViewCell *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSIndexPath *indexPath = [self indexPathForCell:obj];

        if (indexPath.section == section) {
            [visibleCellsInSection addObject:obj];
        }
    }];

    return visibleCellsInSection;
}

- (NSArray<UICollectionViewCell *> *)orderedVisibleCellsInSection:(NSInteger)section {
	NSArray *visibleCellsInSection = [self visibleCellsInSection:section];

	NSArray *orderedVisibleCellsInSection = [visibleCellsInSection sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSIndexPath *path1 = [self indexPathForCell:obj1];
        NSIndexPath *path2 = [self indexPathForCell:obj2];

        return [path1 compare:path2];
    }];

    return orderedVisibleCellsInSection;
}

-(NSArray<UICollectionViewCell *> *)orderedVisibleCells{

    NSArray *visibleCells = self.visibleCells;

    NSArray *sortedVisibleCells = [visibleCells sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSIndexPath *path1 = [self indexPathForCell:obj1];
        NSIndexPath *path2 = [self indexPathForCell:obj2];

        return [path1 compare:path2];
    }];

    return sortedVisibleCells;
}
@end

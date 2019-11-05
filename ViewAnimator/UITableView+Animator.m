//
//  UITableView+Animator.m
//  Animator
//
//  Created by noah on 2019/5/16.
//  Copyright © 2019 noah. All rights reserved.
//

#import "UITableView+Animator.h"

@implementation UITableView (Animator)

- (NSArray<UITableViewCell *> *)visibleCellsInsection:(NSInteger)section{
    NSArray *visibleCells = self.visibleCells;

    NSMutableArray *visibleCellsInsection = [NSMutableArray array];

    [visibleCells enumerateObjectsUsingBlock:^(UITableViewCell *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSIndexPath *indexPath = [self indexPathForCell:obj];

        if (indexPath.section == section) {
            [visibleCellsInsection addObject:obj];
        }
    }];

    return visibleCellsInsection;
}

@end

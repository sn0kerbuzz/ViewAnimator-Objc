//
//  UITableView+Animator.m
//  Animator
//
//  Created by noah on 2019/5/16.
//  Copyright © 2019 noah. All rights reserved.
//

#import "UITableView+Animator.h"

@implementation UITableView (Animator)

- (NSArray<UITableViewCell *> *)visibleCellsInSection:(NSInteger)section{
    NSArray *visibleCells = self.visibleCells;

    NSMutableArray *visibleCellsInSection = [NSMutableArray array];

    [visibleCells enumerateObjectsUsingBlock:^(UITableViewCell *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSIndexPath *indexPath = [self indexPathForCell:obj];

        if (indexPath.section == section) {
            [visibleCellsInSection addObject:obj];
        }
    }];

    return visibleCellsInSection;
}

@end

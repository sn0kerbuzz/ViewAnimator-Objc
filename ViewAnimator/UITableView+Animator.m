//
//  UITableView+Animator.m
//  Animator
//
//  Created by noah on 2019/5/16.
//  Copyright © 2019 noah. All rights reserved.
//

#import "UITableView+Animator.h"

@implementation UITableView (Animator)
- (NSArray <UITableViewCell *>*)visibleCellsInsection:(NSInteger)section{
    NSArray *array = self.visibleCells;
    NSMutableArray*sArray = [NSMutableArray array];
    [array enumerateObjectsUsingBlock:^(UITableViewCell *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self indexPathForCell:obj].section != section?:[sArray addObject:obj];
    }];
    return sArray;
}
@end

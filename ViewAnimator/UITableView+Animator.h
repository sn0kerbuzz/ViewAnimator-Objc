//
//  UITableView+Animator.h
//  Animator
//
//  Created by noah on 2019/5/16.
//  Copyright © 2019 noah. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Animator)
- (NSArray <UITableViewCell *>*)visibleCellsInsection:(NSInteger)section;
@end

NS_ASSUME_NONNULL_END

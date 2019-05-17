//
//  FromAnimation.h
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "Animation.h"

NS_ASSUME_NONNULL_BEGIN

enum Direction {
    left,
    right,
    bottom,
    top,
};
typedef enum Direction Direction;

@interface FromAnimation : Animation

- (instancetype)initWithDirection:(Direction)direction offset:(CGFloat)offset;
@end

NS_ASSUME_NONNULL_END

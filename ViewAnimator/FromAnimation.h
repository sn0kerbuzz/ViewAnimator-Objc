//
//  FromAnimation.h
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "Animation.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FromAnimationDirection) {
    FromAnimationDirectionLeft,
    FromAnimationDirectionRight,
    FromAnimationDirectionBottom,
    FromAnimationDirectionTop
};

@interface FromAnimation : Animation

- (instancetype)initWithDirection:(FromAnimationDirection)direction offset:(CGFloat)offset;

@end

NS_ASSUME_NONNULL_END

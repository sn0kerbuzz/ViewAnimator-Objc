//
//  FromAnimation.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "FromAnimation.h"

@implementation FromAnimation

- (instancetype)initWithDirection:(FromAnimationDirection)direction offset:(CGFloat)offset{
    NSInteger sign;

    CGAffineTransform  transform;

    if (direction == FromAnimationDirectionLeft || direction == FromAnimationDirectionTop) {
        sign = -1;
    } else {
        sign = 1;
    }

    if (direction == FromAnimationDirectionLeft || direction == FromAnimationDirectionRight) {
        transform = CGAffineTransformMakeTranslation(offset * sign, 0);
    } else {
        transform = CGAffineTransformMakeTranslation(0, offset * sign);
    }
    
    return [self initWithTransform:transform];
}
@end

//
//  RotateAnimation.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "RotateAnimation.h"

@implementation RotateAnimation
- (instancetype)initWithAngle:(CGFloat)angle{
    CGAffineTransform  transform = CGAffineTransformMakeRotation(angle);
    return [[RotateAnimation alloc] initWithTransform:transform];
}
@end

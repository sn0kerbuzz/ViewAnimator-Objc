//
//  ZoomAnimation.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "ZoomAnimation.h"

@implementation ZoomAnimation

- (Animation *)initWithScale:(CGFloat)scale {

    CGAffineTransform  transform = CGAffineTransformMakeScale(scale,scale);
    
    return [self initWithTransform:transform];
}

@end

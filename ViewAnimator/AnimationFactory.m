//
//  ViewAnimation.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "AnimationFactory.h"

@implementation AnimationFactory

+ (Animation *)fromAnimationWith:(FromAnimationDirection)direction offset:(CGFloat)offset {

    return [[FromAnimation alloc] initWithDirection:direction offset:offset];
}

+ (Animation *)zoomAnimationWithScale:(CGFloat)scale {
    
    return [[ZoomAnimation alloc] initWithScale:scale];
}

+ (Animation *)rotateAnimationWithAngle:(CGFloat)angle {
    
    return [[RotateAnimation alloc] initWithAngle:angle];
}
@end

//
//  ViewAnimation.h
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FromAnimation.h"
#import "ZoomAnimation.h"
#import "RotateAnimation.h"
#import "Animation.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimationFactory : NSObject

+ (Animation *)fromAnimationWith:(Direction)direction offset:(CGFloat)offset;

+ (Animation *)zoomAnimationWithScale:(CGFloat)scale;

+ (Animation *)rotateAnimationWithAngle:(CGFloat)angle;


@end

NS_ASSUME_NONNULL_END

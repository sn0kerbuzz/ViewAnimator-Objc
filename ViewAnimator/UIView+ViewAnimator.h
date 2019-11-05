//
//  UIView+ViewAnimator.h
//  Animator
//
//  Created by noah on 2019/5/16.
//  Copyright © 2019 noah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Animation.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ViewAnimator)
- (void)animateAnimations:(NSArray<Animation *> *)animations
                 reversed:(BOOL)reversed
                 initialAlpha:(CGFloat)initialAlpha
               finalAlpha:(CGFloat)finalAlpha
                    delay:(double)delay
                duration:(NSTimeInterval)duration
             dampingRatio:(CGFloat)dampingRatio
                 velocity:(CGFloat)velocity
                  options:(UIViewAnimationOptions)options
               completion:(void(^)(void))completion;

+ (void)animateViews:(NSArray<UIView *> *)views
                animations:(NSArray<Animation *> *)animations
                 reversed:(BOOL)reversed
             initialAlpha:(CGFloat)initialAlpha
               finalAlpha:(CGFloat)finalAlpha
                    delay:(double)delay
                 duration:(NSTimeInterval)duration
             dampingRatio:(CGFloat)dampingRatio
                 velocity:(CGFloat)velocity
                  options:(UIViewAnimationOptions)options
               completion:(void(^)(void))completion;
                
@end

NS_ASSUME_NONNULL_END

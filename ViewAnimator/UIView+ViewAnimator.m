//
//  UIView+ViewAnimator.m
//  Animator
//
//  Created by noah on 2019/5/16.
//  Copyright © 2019 noah. All rights reserved.
//

#import "UIView+ViewAnimator.h"

@implementation UIView (ViewAnimator)
- (void)animateAnimations:(nullable NSArray<Animation *> *)animations
                 reversed:(BOOL)reversed
             initialAlpha:(CGFloat)initialAlpha
               finalAlpha:(CGFloat)finalAlpha
                    delay:(double)delay
                 duration:(NSTimeInterval)duration
             dampingRatio:(CGFloat)dampingRatio
                 velocity:(CGFloat)velocity
                  options:(UIViewAnimationOptions)options
               completion:(nullable void(^)(void))completion{
    
    CGAffineTransform transformFrom = self.transform;
    CGAffineTransform transformTo = self.transform;
    for (Animation *animate in animations) {
        transformTo = CGAffineTransformConcat(transformTo,animate.transform);
    }
    if (!reversed) {
        self.transform = transformTo;
    }
    self.alpha = initialAlpha;
    
    [UIView animateWithDuration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity options:options animations:^{
        self.transform = reversed ? transformTo : transformFrom;
        self.alpha = finalAlpha;
    } completion:^(BOOL finished) {
        completion();
    }];
}

+ (void)animateViews:(NSArray<UIView *> *)views
          animations:(nullable NSArray<Animation *> *)animations
            reversed:(BOOL)reversed
        initialAlpha:(CGFloat)initialAlpha
          finalAlpha:(CGFloat)finalAlpha
               delay:(double)delay
            duration:(NSTimeInterval)duration
        dampingRatio:(CGFloat)dampingRatio
            velocity:(CGFloat)velocity
             options:(UIViewAnimationOptions)options
          completion:(nullable void(^)(void))completion{
    if(views.count<=0){
        completion();
        return;
    }
    dispatch_group_t group = dispatch_group_create();
    for (UIView *view in views) {
        view.alpha = initialAlpha;
        dispatch_group_enter(group);
    }
    int index = -1;
    for (UIView *view in views) {
        index++;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [view animateAnimations:animations reversed:reversed initialAlpha:initialAlpha finalAlpha:finalAlpha delay:0.1*index duration:duration dampingRatio:dampingRatio velocity:velocity options:options completion:^{
                dispatch_group_leave(group);
            }];
            
        });
        
    }
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        NSLog(@"%@---全部结束。。。",[NSThread currentThread]);
        completion();
    });
}
    

@end

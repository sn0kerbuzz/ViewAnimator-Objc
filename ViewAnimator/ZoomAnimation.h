//
//  ZoomAnimation.h
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "Animation.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZoomAnimation : Animation
- (Animation *)initWithScale:(CGFloat)scale;
@end

NS_ASSUME_NONNULL_END

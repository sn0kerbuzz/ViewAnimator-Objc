//
//  Animation.h
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Animation : NSObject

- (instancetype)initWithTransform:(CGAffineTransform)transform;

- (CGAffineTransform)transform;

@end

NS_ASSUME_NONNULL_END

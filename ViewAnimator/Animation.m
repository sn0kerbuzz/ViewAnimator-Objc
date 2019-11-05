//
//  Animation.m
//  Animator
//
//  Created by noah on 2019/5/17.
//  Copyright © 2019 noah. All rights reserved.
//

#import "Animation.h"

@interface Animation()

@property (nonatomic, assign) CGAffineTransform transform;

@end

@implementation Animation

- (instancetype)initWithTransform:(CGAffineTransform)transform {

    self = [super init];

    if (self) {
        self.transform = transform;
    }

    return self;
}

@end

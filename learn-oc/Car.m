//
//  Car.m
//  learn-oc
//
//  Created by mlibai on 2017/2/4.
//  Copyright © 2017年 yang. All rights reserved.
//

#import "Car+Proctected.h"

@implementation Car

- (void)lock
{
    NSLog(@"protected lock");
}

- (void)public_method
{
    NSLog(@"public");
}
@end

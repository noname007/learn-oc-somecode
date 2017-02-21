//
//  Box.m
//  learn-oc
//
//  Created by mlibai on 2017/1/12.
//  Copyright © 2017年 yang. All rights reserved.
//

#import "Box.h"

@implementation Box
{
    double _lenth;
    double _width;
    double _height;
}


- (instancetype)init
{
    self = [super init];
    
    if(self)
    {
        _lenth = 0;
        _width = 0;
        _height = 0;
        _volumn = 0;
    }
    return self;
}


- (instancetype)initWithLength:(double )length andWidth:(double)width andHeight:(double)height

{
    self = [super init];
    if(self){
        _lenth = length;
        _width = width;
        self->_height = height;
        self->_volumn = length * width * height;
    }

    return self;
}

-(double)calcVolumn

{
    _volumn = _lenth * _width * _height;
    return _volumn;
}


@end

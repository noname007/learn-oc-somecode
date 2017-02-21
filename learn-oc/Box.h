//
//  Box.h
//  learn-oc
//
//  Created by mlibai on 2017/1/12.
//  Copyright © 2017年 yang. All rights reserved.
//

#ifndef Box_h
#define Box_h

#import <Foundation/Foundation.h>


@interface Box : NSObject


//@property(nonatomic,readwrite) double height;

//@property double height;

@property (readonly)double volumn;

//@property double length;
//@property (getter=volume1,setter=setv:) double v;

//@property (copy) id  copyid;



- (instancetype)initWithLength:(double )length andWidth:(double)width andHeight:(double)height;

- (double)calcVolumn;
@end


#endif /* Box_h */

//
//  main.m
//  learn-oc
//
//  Created by mlibai on 2017/1/11.
//  Copyright © 2017年 yang. All rights reserved.
//

#pragma mark 主函数

//#import <Foundation/Foundation.h>
#import <objc/runtime.h>

//#import "Box+Protected.h"

#import "Box.h"

//@import Box
//@import AddressBook;
@import Foundation;

#import "Car.h"
#import "SubCar.h"






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString * World = @"world";
        NSLog(@"%@",World);
        
        NSString * hello = [World stringByAppendingString:@"hello"];
        NSLog(@"%@",hello);
        
        
        NSMutableString * mute =[NSMutableString stringWithString: @"hello"];
        [mute appendString:@" world"];
        [mute appendFormat:@"ddd %d",11111 ];
        NSLog(@"%@",mute);
        
        
        NSNumber * c = @'Z';
        
        char cc = [c charValue];
        NSLog(@"%c",cc);
        
        NSDecimalNumber * n = [NSDecimalNumber decimalNumberWithString:@"2.0559" ];
        NSLog(@"%@",n);
        
        
        NSDecimalNumber * n1 = [NSDecimalNumber decimalNumberWithString:@"1.23"];
        
        NSLog(@"%@",[n decimalNumberByAdding:n1]);
        NSLog(@"%@",[n decimalNumberBySubtracting:n1]);
        
        
        NSArray * array = @[@1,@2,@3,@"hello"];
        
        NSLog(@"%@",array);
        
        NSArray<NSString * > * astringarray = @[@"hello",@"world",@"by ",@"yangzz",@"dd"];
        
        NSLog(@"%@",astringarray);
        
        
        NSDictionary * adic = @{@"key":@"value",@"key1":@"value2",@"key3":@"v3"};
        
        NSLog(@"%@",adic);
        
        NSMutableArray <NSDictionary * > *aArrOfDic = [NSMutableArray arrayWithCapacity:5];
        
        [aArrOfDic addObject:@{@"k":@"V",@"k2":@"V2",@"k4":@"v",@"k5":@"v5"}];
        [aArrOfDic addObject:adic];
        
        
        
        NSLog(@"%@",aArrOfDic);
        
        @try {
            @throw [NSException exceptionWithName:@"1" reason:@"hello" userInfo:@{@"k":@"V"}];
        } @catch (NSException *exception) {
            NSLog(@"%@",[exception debugDescription]);
        } @finally {
            NSLog(@"finally  ");
        }
        
        
        
        Box * box = [[Box alloc] init];
        
        Box * box1 = [[Box alloc] init];
        
        Box * box2 = [[Box alloc] init];
        
        Box * box3 = [Box new];
        
        NSLog(@"object - %p",box);
        
        NSLog(@"object - %p",box1);
        NSLog(@"object - %p",box2);
        NSLog(@"object - %p",box3);
        
        
        Box *box4 = [[Box alloc] initWithLength:1 andWidth:1 andHeight:1];
        //[box4 setVolumn:(double)];
        [box4 volumn];
      //  box4.volumn;
        
        
        NSLog(@"box volume - %.2f",[box4 volumn]);
        
        NSLog(@"box4:%@",[box4 debugDescription]);
        
        
        SEL selectorVar =  @selector(calcVolumn);
        //sel_getUid()
        if([box4 respondsToSelector:selectorVar])
        {
            id v = [box4 performSelector:(selectorVar)];
            NSLog(@"selector calc--- %@",[v debugDescription]);
        }else{
            NSLog(@"not have method %@",NSStringFromSelector(selectorVar));
        }
        
        // 实现一个保护方法
        Car * aCar = [[Car alloc] init];
        
        [aCar public_method];
        
        SubCar * aSubCar = [[SubCar alloc] init];
        
        [aSubCar public_method];

    }
    return 0;
}

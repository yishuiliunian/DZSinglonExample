//
//  DZSinglonARC.m
//  DZSinglonExample
//
//  Created by Stone Dong on 14-1-17.
//  Copyright (c) 2014年 Stone Dong. All rights reserved.
//

#import "DZSinglonARC.h"

@implementation DZSinglonARC
+  (DZSinglonARC*) shareInstance
{
    static DZSinglonARC* share = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        share = [[super allocWithZone:NULL] init];
    });
    return share;
}
+ (instancetype) allocWithZone:(struct _NSZone *)zone
{
    return [self shareInstance];
}
@end

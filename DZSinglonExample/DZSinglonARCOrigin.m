//
//  DZSinglonARCOrigin.m
//  DZSinglonExample
//
//  Created by Stone Dong on 14-1-17.
//  Copyright (c) 2014年 Stone Dong. All rights reserved.
//

#import "DZSinglonARCOrigin.h"

@implementation DZSinglonARCOrigin
+  (DZSinglonARCOrigin*) shareInstance
{
    static DZSinglonARCOrigin* share = nil;
    @synchronized(self)
    {
        if (!share) {
            share = [[super allocWithZone:NULL] init];
        }
    }
    return share;
}
+ (instancetype) allocWithZone:(struct _NSZone *)zone
{
    return [self shareInstance];
}
@end

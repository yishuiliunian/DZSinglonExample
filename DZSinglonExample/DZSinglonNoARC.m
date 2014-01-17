//
//  DZSinglonNoARC.m
//  DZSinglonExample
//
//  Created by Stone Dong on 14-1-17.
//  Copyright (c) 2014年 Stone Dong. All rights reserved.
//

#import "DZSinglonNoARC.h"

@implementation DZSinglonNoARC
+ (DZSinglonNoARC*) shareInstance
{
    static DZSinglonNoARC* share = nil;
    @synchronized(self)
    {
        if (!share) {
            share = [[super allocWithZone:NULL] init];
        }
    }
    return share;
}

+ (DZSinglonNoARC*) share2
{
    static DZSinglonNoARC* share = nil;
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
- (instancetype) copyWithZone:(NSZone*)zone
{
    return self;
}
- (id) retain
{
    return [DZSinglonNoARC shareInstance];
}
- (oneway void) release
{
    
}
- (instancetype) autorelease
{
    return self;
}
- (unsigned) retainCount
{
    return UINT_MAX;
}
@end

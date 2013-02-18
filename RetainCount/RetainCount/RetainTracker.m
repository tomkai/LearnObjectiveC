//
//  RetainTracker.m
//  RetainCount
//
//  Created by gfyoyo on 12-9-13.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker

- (id) init
{
    if （self = [super init])
    {
        NSLog(@"init: Retain count of %d." , [self retainCount]);
    }
    
    return (self);
} //init

- (void) dealloc
{
    NSLog(@"dealloc called.byebye.");
    [super dealloc];
} //dealloc
@end

//
//  main.m
//  RetainCount
//
//  Created by gfyoyo on 12-9-13.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RetainTracker : NSObject

@end //RetainTracker

@implementation RetainTracker

- (id) init
{
    if (self = [super init])
    {
        NSLog(@"init: Retain count of %d",[self retainCount]);
    }
} //init

- (void) dealloc
{
    NSLog(@"dealloc called, bye bye.");
    [super dealloc];
} //dealloc
@end //ReatinTracker


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}


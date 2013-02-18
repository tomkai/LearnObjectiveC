//
//  main.m
//  AutoRelease
//
//  Created by gfyoyo on 12-9-12.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello World!");
    
    [pool drain];
    

    return 0;
}


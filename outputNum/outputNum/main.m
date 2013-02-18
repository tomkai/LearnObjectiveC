//
//  main.m
//  outputNum
//
//  Created by gfyoyo on 12-8-11.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

//    @autoreleasepool {
//        
//        // insert code here...
//        NSLog(@"Hello, World!");
//        
//    }

    int count = 100;
    
    NSLog(@"The Number from 1 to 100");
    
    int i;
    for (i=1; i<=count; i++) {
        NSLog(@"%d\n",i);
    }
    
    return 0;
}


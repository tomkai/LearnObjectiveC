//
//  main.m
//  BoolParty
//
//  Created by gfyoyo on 12-8-11.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL areIntsDifferent(int thing1, int thing2)
{
    if (thing1 == thing2) {
        return NO;
    } else {
        return YES;
    }
    
}

NSString *boolString (BOOL yesNo)
{
    if (yesNo == NO) {
        return (@"NO");
    } else {
        return (@"YES");
    }
}


int main(int argc, const char * argv[])
{
//
//    @autoreleasepool {
//        
//        // insert code here...
//        NSLog(@"Hello, World!");
//        
//    }
//    return 0;
    BOOL areTheyDifferent;
    
    areTheyDifferent = areIntsDifferent(5, 5);
    
    NSLog(@"are %d and %d different? %@",5,5,boolString(areTheyDifferent));

    areTheyDifferent = areIntsDifferent(25, 15);
    
    NSLog(@"are %d and %d different? %@",25,15,boolString(areTheyDifferent));
    


    return 0;
}


//
//  NString+GetMD5.m
//  GetMD5
//
//  Created by gfyoyo on 12-10-14.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "NString+GetMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (GetMD5)

- (NSString *)  GetMD5{
    if (self == nil || [self length] == 0 )
        return nil;
    
    const char *value = [self UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc]initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for (nsinteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++) {
        
    }
}
@end

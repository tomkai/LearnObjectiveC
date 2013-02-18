//
//  main.m
//  worldLength
//
//  Created by gfyoyo on 12-8-11.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

//    const char  *word[4] = {
//        "sdffflakdf",
//        "dffgo",
//        "dfff3334",
//        "dflnl"
//    };
    if (argc == 1) {
        NSLog(@"you need to provide a file name ");
        return 1;
    }
    
    FILE *wordFile = fopen(argv[1], "r");
    char word[100];
    
    while (fgets(word, 100, wordFile)) {
        word[strlen(word) - 1] = '\0';
        
        NSLog(@"%s is %zd characters long",word,strlen(word));
    }
    
    fclose(wordFile);
    
    return 0;
}


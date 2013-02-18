//
//  main.m
//  Car
//
//  Created by gfyoyo on 12-9-9.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"


int main(int argc, const char * argv[])
{
    Car *car;
    car = [Car new];
    
//    Engine *engine = [Engine new];
    Slant6 *engine = [Slant6 new];
//    Engine *engine = [Slant6 new];
    [car setEngine:engine];
    
    NSLog(@"the car's engine is %@", [car engine]);
    
    int i;
    for (i = 0; i < 4; i++) {
//        Tire *tire = [Tire new];
        Tire *tire = [AllWeatherRadial new];
        
        [car setTire:tire atIndex:i];
    }
    

    [car print];
    return 0;
} //main


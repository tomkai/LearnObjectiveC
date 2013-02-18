//
//  Car.h
//  Car
//
//  Created by gfyoyo on 12-9-10.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;
@class Tire;

@interface Car : NSObject
{
    Engine  *engine;
    Tire *tires[4];
}

- (Engine *) engine;
- (void) setEngine : (Engine *) newEngine;

- (Tire *) tireAtIndex : (int) index;
- (void) setTire : (Tire *) tire
         atIndex : (int) index;

- (void) print;


@end

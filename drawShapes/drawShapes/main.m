//
//  main.m
//  drawShapes
//
//  Created by gfyoyo on 12-8-19.
//  Copyright (c) 2012年 gfyoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
} ShapeColor;


typedef struct {
    int x, y, width, height;
} ShapeRect;

NSString *colorName(ShapeColor color)
{
    switch (color) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
    }
    
    return @"no color";
}


@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor:(ShapeColor) fillColor;
- (void) setBounds:(ShapeRect) bounds;
- (void) draw;

@end//interfase Shape

@implementation Shape

- (void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"父类的Draw");
}

@end//implementation Shape

@interface Circle : Shape
@end//interface circle

@implementation Circle

- (void) setFillColor:(ShapeColor) c
{
    if ( c == kYellowColor ) {
        c = kRedColor;
    }
    [super setFillColor:c];
}

- (void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x,bounds.y,bounds.width,bounds.height,
          colorName(fillColor));
}

@end//implementation circle

int main(int argc, const char * argv[])
{
    id shape;
    
    ShapeRect rect0 = {0,0,10,30};
    shape = [Circle new];
    [shape setBounds:rect0];
    [shape setFillColor:kYellowColor];
    
    [shape draw];
   
    return 0;
}


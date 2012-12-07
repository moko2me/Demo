//
//  BottomView.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "BottomView.h"

@implementation BottomView

- (id)initWithFrame:(CGRect)frame AndCities:(NSArray *)citiesArr
{
    self = [super initWithFrame:frame];
    if (self) {
        _citiesSubscribed =[[NSMutableArray alloc] initWithCapacity:4];
        [self getWeatherForCities:citiesArr];
    }
    return self;
}

/*
- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame AndCities:];
    if (self)
        return self;
    return nil;
}

- (id)init
{
    self = [self initWithFrame:CGRectMake(0, 0, 320, 460) AndCities:@"NYC"];
    if (self)
        return self;
    return nil;
}
*/

- (void)getWeatherForCities:(NSArray *)citiesArr
{
    
}

@end

//
//  RightView.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "RightView.h"
#import "ASIHTTPRequst/ASIHTTPRequest.h"
@implementation RightView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self getWeeklyWeather];
    }
    return self;
}

#pragma mark setter & getter
-(WeeklyWeatherInfoModal *)weeklyWeatherInfo
{
    return _weeklyWeatherInfo;
}

-(void)setWeeklyWeather
{
    
}

-(void)getWeeklyWeather
{
    for (int i =1; i<=4; i++) {
        NSString * urlStr =[NSString stringWithFormat:@"http://api.wunderground.com/api/8114536921ad78c7/conditions/q/%d.json", i++];
        NSURL * url =[NSURL URLWithString:urlStr];  
    }
}

@end

//
//  RightView.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.``//

#import "RightView.h"
#import "ASIHTTPRequst/ASIHTTPRequest.h"
#import "SBJson/SBJson.h"
#import "WeeklyWeatherInfoModal.h"
@implementation RightView

- (id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity
{
    self = [super initWithFrame:frame];
    if (self) {
        [self getWeeklyWeather:aCity];
        weeklyWeatherInfo = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

#pragma mark setter & getter
-(NSMutableArray *)weeklyWeatherInfo
{
    return weeklyWeatherInfo;
}

-(void)setWeeklyWeather:(NSDictionary *)dict
{
    for (int i = 1; i < 6; i++) {
        WeeklyWeatherInfoModal * weeklyWeather = [[WeeklyWeatherInfoModal alloc] init];
        NSMutableDictionary * forecast         = [dict objectForKey:@"forecast"];
        NSMutableDictionary * simpleforecast   = [forecast objectForKey:@"simpleforecast"];
        NSArray * forecastDay                  = [simpleforecast objectForKey:@"forecastDay"];
        NSMutableDictionary * dataArray        = [forecastDay objectAtIndex:i++];
        NSMutableDictionary * data             = [dataArray objectForKey:@"data"];
        weeklyWeather.day                      = [data objectForKey:@"year"];
        weeklyWeather.month                    = [data objectForKey:@"month"];
        weeklyWeather.monthName                = [data objectForKey:@"monthname"];
        weeklyWeather.day                      = [data objectForKey:@"day"];
        weeklyWeather.weekdayName              = [data objectForKey:@"weekday"];
        weeklyWeather.weekdayNameAbbreviation  = [data objectForKey:@"weekday_short"];
        weeklyWeather.ampm                     = [data objectForKey:@"ampm"];
        NSMutableDictionary * tempHigh         = [dataArray objectForKey:@"high"];
        weeklyWeather.temp_high_c              = [[tempHigh objectForKey:@"fahrenheit"] floatValue];
        weeklyWeather.temp_high_f              = [[tempHigh objectForKey:@"celsius"] floatValue];
        NSMutableDictionary * tempLow          = [dataArray objectForKey:@"low"];
        weeklyWeather.condition                = [tempLow objectForKey:@"conditions"];
        NSMutableDictionary * aveWind          = [dataArray objectForKey:@"avewind"];
        weeklyWeather.averageHumidity          = [[aveWind objectForKey:@"avehumidity"] floatValue];
    }
}

-(void)getWeeklyWeather:(NSString *)aCity
{
    NSString * urlStr =[NSString stringWithFormat:@"http://api.wunderground.com/api/8114536921ad78c7/forecast10day/q/%@.json", aCity];
        NSURL * url =[NSURL URLWithString:urlStr];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    request.delegate = self;
    [request startAsynchronous];
    
}

-(void)requestFinished:(ASIHTTPRequest *)request
{
    NSString * str = [[NSString alloc] initWithData:request.responseData encoding:NSUTF8StringEncoding];
    NSDictionary *dict = [str JSONValue];
    [self setWeeklyWeather:dict];
    [self layoutView];
}

-(void)layoutView
{
    
}
@end

//
//  HourlyWeatherFolderView.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "HourlyWeatherFolderView.h"
                                                                                

@implementation HourlyWeatherFolderView


- (id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity
{
    self = [super initWithFrame:frame];
    if (self) {
        _hourlyWeather =[[NSMutableArray alloc] initWithCapacity:5];
        [self getHourlyWeatherFolder:aCity];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame AndCity:@"NYC"];
    if (self)
        return self;
    return nil;
}

- (id)init
{
    self = [self initWithFrame:CGRectMake(0, 0, 320, 460) AndCity:@"NYC"];
    if (self)
        return self;
    return nil;
}

#pragma mark Setter & Getter of _hourlyWeather
-(NSMutableArray *)hourlyWeather
{
    return  _hourlyWeather;
}

-(void)setHourlyWeather:(NSDictionary *)dict
{    
    for (int i = 0; i < 5; i++) {
        HourlyWeatherModal * hourlyWeather =[[HourlyWeatherModal alloc]init];
        NSArray *hourlyForecast =[dict objectForKey:@"hourly_forecast"];
        NSDictionary *hourly = [hourlyForecast objectAtIndex:i++];
        NSDictionary *time = [hourly objectForKey:@"FCTTIME"];
        hourlyWeather.hour = [time objectForKey:@"hour"];
        hourlyWeather.year = [time objectForKey:@"year"];
        hourlyWeather.monthName = [time objectForKey:@"month_name"];
        hourlyWeather.monthAbbreviation = [time objectForKey:@"mon_abbrev"];
        hourlyWeather.weekdayName = [time objectForKey:@"weekday_name"];
        hourlyWeather.weekdayNameNight = [time objectForKey:@"weekday_name_night"];
        hourlyWeather.weekdayNameAbbreviation = [time objectForKey:@"weekday_name_abbrev"];
        hourlyWeather.ampm = [time objectForKey:@"ampm"];
        
        NSDictionary *temp = [hourly objectForKey:@"temp"];
        hourlyWeather.temp_f = [[temp objectForKey:@"english"] floatValue];
        hourlyWeather.temp_c = [[temp objectForKey:@"metric"] floatValue];
        hourlyWeather.condition = [hourly objectForKey:@"condition"];
        NSDictionary * feelsLike =[hourly objectForKey:@"feelslike"];
        hourlyWeather.temp_f_feelslike = [[feelsLike objectForKey:@"english"]floatValue];
        hourlyWeather.temp_c_feelslike = [[feelsLike objectForKey:@"metric"]floatValue];
        
        [_hourlyWeather addObject:hourlyWeather];
    }
}

-(void)getHourlyWeatherFolder:(NSString *)aCity
{
    NSString *urlStr =[NSString stringWithFormat:@"http://api.wunderground.com/api/8114536921ad78c7/hourly/q/%@.json", aCity] ;
    NSURL *url =[NSURL URLWithString:urlStr];
    ASIHTTPRequest *request =[ASIHTTPRequest requestWithURL:url];
    request.delegate =self;
    [request startAsynchronous];
}

-(void)requestFinished:(ASIHTTPRequest *)request
{
    NSString *str = [[NSString alloc]initWithData:request.responseData encoding:NSUTF8StringEncoding];
    NSDictionary *dict =[str JSONValue];
    [self setHourlyWeather:dict];
    [self layoutView];
}

-(void)layoutView
{
    
}

@end

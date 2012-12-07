//
//  HourlyWeatherModal.m
//  iWeather
//
//  Created by qianfeng1 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "HourlyWeatherModal.h"

@implementation HourlyWeatherModal
@synthesize hour = _hour;
@synthesize year = _year;
@synthesize month = _month;
@synthesize monthName = _monthName;
@synthesize monthAbbreviation = _monthAbbreviation;
@synthesize day = _day;
@synthesize weekdayName = _weekdayName;
@synthesize weekdayNameNight = _weekdayNameNight;
@synthesize weekdayNameAbbreviation = _weekdayNameAbbreviation;
@synthesize ampm = _ampm;
@synthesize condition = _condition;
@synthesize temp_c = _temp_c;
@synthesize temp_f = _temp_f;
@synthesize temp_c_feelslike = _temp_c_feelslike;
@synthesize temp_f_feelslike = _temp_f_feelslike;

-(void)dealloc
{
    [_weekdayName release];
    [_weekdayNameAbbreviation release];
    [_weekdayNameNight release];
    [_weekdayNameNight release];
    [_condition release];
    [_year release];
    [_day  release];
    [_ampm release];
    [_month release];
    [_monthName  release];
    [_monthAbbreviation release];
    [super   dealloc];

}
@end

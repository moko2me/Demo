//
//  WeeklyWeatherInfoModal.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "WeeklyWeatherInfoModal.h"

@implementation WeeklyWeatherInfoModal
@synthesize year = _year,month = _month,monthName = _monthName,day = _day,weekdayName = _weekdayName,weekdayNameAbbreviation = _weekdayNameAbbreviation,ampm = _ampm,condition = _condition;
@synthesize temp_high_c = _temp_high_c, temp_high_f = _temp_high_f,temp_low_c = _temp_low_c,temp_low_f = _temp_low_f;




-(void)dealloc
{
    [_month release];
    [_year release];
    [_monthName release];
    [_day release];
    [_weekdayNameAbbreviation release];
    [_weekdayName release];
    [_ampm release];
    [_condition release];
     
    [super dealloc];


}
@end

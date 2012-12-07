//
//  WeeklyWeatherInfoModal.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "WeeklyWeatherInfoModal.h"

@implementation WeeklyWeatherInfoModal
@synthesize day1,day2,day3,day4,day5;
@synthesize day1Temp,day2Temp,day3Temp,day4Temp,day5Temp;




-(void)dealloc
{
      [day1 release];
      [day2 release];
      [day3 release];
      [day4 release];
      [day5 release];
    
    [super dealloc];


}
@end

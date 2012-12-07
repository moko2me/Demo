//
//  HourlyWeatherModal.h
//  iWeather
//
//  Created by qianfeng1 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HourlyWeatherModal : NSObject
{
    NSString *_hour;
    NSString *_year;
    NSString *_month;
    NSString *_monthName;
    NSString *_monthAbbreviation;
    NSString *_day;
    NSString *_weekdayName;
    NSString *_weekdayNameNight;
    NSString *_weekdayNameAbbreviation;
    NSString *_ampm;
    float _temp_f;
    float _temp_c;
    NSString *_condition;
    float _temp_f_feelslike;
    float _temp_c_feelslike;
}
@property float temp_f;
@property float temp_c;
@property float temp_f_feelslike;
@property float temp_c_feelslike;
@property (nonatomic,retain) NSString *hour;
@property (nonatomic,retain) NSString *year;
@property (nonatomic,retain) NSString *month;
@property (nonatomic,retain) NSString *monthName;
@property (nonatomic,retain) NSString *monthAbbreviation;
@property (nonatomic,retain) NSString *day;
@property (nonatomic,retain) NSString *weekdayName;
@property (nonatomic,retain) NSString *weekdayNameNight;
@property (nonatomic,retain) NSString *weekdayNameAbbreviation;
@property (nonatomic,retain) NSString *ampm;
@property (nonatomic,retain) NSString *condition;
@end

//
//  WeeklyWeatherInfoModal.h
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeeklyWeatherInfoModal : NSObject
{
    NSString *_year;
    NSString *_month;
    NSString *_monthName;
    NSString *_day;
    NSString *_weekdayName;
    NSString *_weekdayNameAbbreviation;
    NSString *_ampm;
    NSString *_condition;
    float _temp_high_f;
    float _temp_high_c;
    float _temp_low_f;
    float _temp_low_c;
    float _averageHumidity;
    
    
}
@property (nonatomic,retain) NSString *year;
@property (nonatomic,retain) NSString *month;
@property (nonatomic,retain) NSString *monthName;
@property (nonatomic,retain) NSString *day;
@property (nonatomic,retain) NSString *weekdayName;
@property (nonatomic,retain) NSString *weekdayNameAbbreviation;
@property (nonatomic,retain) NSString *ampm;
@property (nonatomic,retain) NSString *condition;
@property  float temp_high_f;
@property  float temp_high_c;
@property  float temp_low_f;
@property  float temp_low_c;
@property  float averageHumidity;

@end

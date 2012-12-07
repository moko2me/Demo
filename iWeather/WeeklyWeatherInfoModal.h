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
    NSString * day1;
    NSString * day2;
    NSString * day3;
    NSString * day4;
    NSString * day5;
    
     float day1Temp;
     float day2Temp;
     float day3Temp;
     float day4Temp;
     float day5Temp;
}
@property (nonatomic,retain) NSString *day1;
@property (nonatomic,retain) NSString *day2;
@property (nonatomic,retain) NSString *day3;
@property (nonatomic,retain) NSString *day4;
@property (nonatomic,retain) NSString *day5;
@property  float day1Temp;
@property  float day2Temp;
@property  float day3Temp;
@property  float day4Temp;
@property  float day5Temp;

@end

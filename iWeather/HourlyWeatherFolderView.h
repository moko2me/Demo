//
//  HourlyWeatherFolderView.h
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HourlyWeatherModal.h"
#import "SBJson/SBJson.h"
#import "ASIHTTPRequst/ASIHTTPRequest.h"


@interface HourlyWeatherFolderView : UIView <ASIHTTPRequestDelegate>
{
    NSMutableArray *_hourlyWeather;
}

- (id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity;
- (id)initWithFrame:(CGRect)frame;
- (id)init;

@end

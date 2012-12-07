//
//  mainView.h
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherDetailModal.h"
#import "ASIHTTPRequst/ASIHTTPRequest.h"
#import "SBJson/SBJson.h"

@interface MainView : UIView <ASIHTTPRequestDelegate>
{
    WeatherDetailModal *_weatherOfToday;
    UILabel *_label;
    UILabel *_temp;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UILabel *temp;

- (id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity;
- (WeatherDetailModal *)weatherOfToday;

@end

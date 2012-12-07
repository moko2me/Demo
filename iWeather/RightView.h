//
//  RightView.h
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeeklyWeatherInfoModal.h"
#import "ASIHTTPRequst/ASIHTTPRequest.h"
@interface RightView : UIView<ASIHTTPRequestDelegate>
{
    NSMutableArray * weeklyWeatherInfo;
}

- (id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity;

@end

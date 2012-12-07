//
//  LeftView.h
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherDetailModal.h"
@interface LeftView : UIView
{
    WeatherDetailModal * _weatherOfDetail;
}
-(id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity;
@end
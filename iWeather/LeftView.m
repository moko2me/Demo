//
//  LeftView.m
//  iWeather
//
//  Created by 开发者 on 12-12-6.
//  Copyright (c) 2012年 开发者. All rights reserved.
//

#import "LeftView.h"
#import "ASIHTTPRequst/ASIHTTPRequest.h"
#import "SBJson/SBJson.h"
@implementation LeftView

- (id)init
{
    self = [self initWithFrame:CGRectMake(0, 0, 320, 460)];
    if (self) {
        return self;
    }
    return nil;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _weatherOfDetail = [[WeatherDetailModal alloc]init];
        
        NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
        [nc addObserver:self selector:@selector(recvWeatherInfo:) name:@"WeatherInfo" object:nil];
    }
    return  self;
}

- (void)recvWeatherInfo:(NSNotification *)notify
{
    NSDictionary *weather = notify.userInfo;
    WeatherDetailModal *weatherInfo = [weather objectForKey:@"weather"];
    [self setWeatherOfDetail:weatherInfo];
}

#pragma mark Setter& Getter

-(WeatherDetailModal *)weatherOfDetail
{
    return _weatherOfDetail;
}

-(void)setWeatherOfDetail:(WeatherDetailModal *)info
{
    _weatherOfDetail = [info retain];
    [self layoutView];
}

/*
-(void)getWeatherDetailOfCity:(NSString *)aCity
{
    NSString * urlStr =[NSString stringWithFormat:@"http://api.wunderground.com/api/8114536921ad78c7/conditions/q/%@.json", aCity];
    NSURL * url =[NSURL URLWithString:urlStr];
    ASIHTTPRequest * request =[ASIHTTPRequest requestWithURL:url];
    request.delegate=self;
    [request startAsynchronous];
}

-(void)requestFinished:(ASIHTTPRequest *)request
{
    WeatherDetailModal
    NSString * str =[[NSString alloc]initWithData:request.responseData encoding:NSUTF8StringEncoding];
    NSDictionary *dict =[str JSONValue];
    [self setWeatherOfDetail:dict];
    [self layoutView];
}
*/

-(void)layoutView
{
    NSLog(@"%@", _weatherOfDetail.cityFullName);
}

@end

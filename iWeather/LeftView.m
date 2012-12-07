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

-(id)initWithFrame:(CGRect)frame AndCity:(NSString *)aCity
{
    self =[super initWithFrame:frame];
    if (self) {
        _weatherOfDetail =[[WeatherDetailModal alloc]init];
        [self getWeatherDetailOfCity:aCity];
    }
    return  self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame AndCity:@"NYC"];
    if (self) {
        return self;
    }
    return nil;
}

- (id)init
{
    self = [self initWithFrame:CGRectMake(0, 0, 320, 460) AndCity:@"NYC"];
    if (self)
        return self;
    return nil;
    
}

#pragma mark Setter& Getter

-(WeatherDetailModal *)weatherOfDetail
{
    return _weatherOfDetail;
}

-(void)setWeatherOfDetail:(NSDictionary *)dict
{
    NSDictionary * currentObservation =[dict objectForKey:@"xxx"];
    NSDictionary *locationInfo =[currentObservation objectForKey:[currentObservation    objectForKey:@"xxxx"]];
}

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
    NSString * str =[[NSString alloc]initWithData:request.responseData encoding:NSUTF8StringEncoding];
    NSDictionary *dict =[str JSONValue];
    [self setWeatherOfDetail:dict];
    [self layoutView];
}

-(void)layoutView
{

}

@end

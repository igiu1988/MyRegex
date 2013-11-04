//
//  ViewController.m
//  MyRegex
//
//  Created by wangyang on 13-10-30.
//  Copyright (c) 2013年 com.wy. All rights reserved.
//

#import "ViewController.h"
#import "MyRegex.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // FM = DBFM， 而GFM是单独的
    /*如果这个字符串isEqual gfm。或者那三个。
     以上三种情况都不符合，那就再判断是否包含fm，包含那就按fm处理
     */
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [MyRegex splitLetterAndNumber:@"adc123"];
    NSLog(@"%@", array);
    
    
    NSString *firstPart = @"http://liaoning.youbianku.com/%E5%88%86%E7%B1%BB/%E5%9C%B0%E5%8C%BA/%E8%BE%BD%E5%AE%81%E7%9C%81/%E4%B8%B9%E4%B8%9C%E5%B8%82/";
    NSString * encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)@"东港市", NULL, (CFStringRef)@"!*’();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
    NSString *wholeURLString = [firstPart stringByAppendingPathComponent:encodedString];
    NSURL *url = [NSURL URLWithString:wholeURLString];
    
    NSURLResponse *response = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:[NSURLRequest requestWithURL:url] returningResponse:&response error:&error];
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@", string);
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

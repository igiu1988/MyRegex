//
//  MyRegex.m
//  MyRegex
//
//  Created by wangyang on 13-10-30.
//  Copyright (c) 2013年 com.wy. All rights reserved.
//

#import "MyRegex.h"

@implementation MyRegex
+ (NSArray *)splitLetterAndNumber:(NSString *)word
{
    NSRegularExpression *regax = [NSRegularExpression regularExpressionWithPattern:@"[a-zA-Z]+" options:NSRegularExpressionCaseInsensitive error:nil];
    
    
//    NSUInteger numberOfMatches = [regax numberOfMatchesInString:word
//                                                        options:0
//                                                          range:NSMakeRange(0, [word length])];
//    NSArray *array = [regax matchesInString:word options:0 range:NSMakeRange(0, [word length])];
    
    NSRange range = [regax rangeOfFirstMatchInString:word options:0 range:NSMakeRange(0, [word length])];
    NSString *letter = [word substringWithRange:range];
    
    regax = [NSRegularExpression regularExpressionWithPattern:@"\\d+" options:NSRegularExpressionCaseInsensitive error:nil];
    range = [regax rangeOfFirstMatchInString:word options:0 range:NSMakeRange(0, [word length])];
    NSString *number = [word substringWithRange:range];
    
    return @[letter, number];
}
@end

//
//  MyRegex.h
//  MyRegex
//
//  Created by wangyang on 13-10-30.
//  Copyright (c) 2013年 com.wy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyRegex : NSObject

/**
 *  split word like "abc123",
 *
 *  @param word the word will be split
 *
 *  @return array with two NSString elements, the first is letter, another is number
 */
+ (NSArray *)splitLetterAndNumber:(NSString *)word;
@end

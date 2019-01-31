//
//  NSString+Base64Tool.h
//
//  Created by LHWen on 2019/1/18.
//  Copyright © 2019 LHWen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Base64Tool)

/**
 *  转换为Base64编码
 */
- (NSString *)base64EncodedString;

/**
 *  将Base64编码还原
 */
- (NSString *)base64DecodedString;

@end

NS_ASSUME_NONNULL_END

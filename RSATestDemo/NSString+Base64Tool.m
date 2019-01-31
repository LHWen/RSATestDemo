//
//  NSString+Base64Tool.m
//
//  Created by LHWen on 2019/1/18.
//  Copyright © 2019 LHWen. All rights reserved.
//

#import "NSString+Base64Tool.h"

@implementation NSString (Base64Tool)

- (NSString *)base64EncodedString {
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)base64DecodedString {
    
    NSData *data = [[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

@end

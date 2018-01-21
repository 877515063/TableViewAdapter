//
//  NSDictionary+HttpJSON.m
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import "NSDictionary+HttpJSON.h"

@implementation NSDictionary (HttpJSON)

- (BOOL)success {
    return [[[self objectForKey:@"head"] objectForKey:@"error_code"] boolValue];
}

- (NSString *)messageCode {
    return [[self objectForKey:@"head"] objectForKey:@"error_code"];
}

- (NSString *)message {
    return [[self objectForKey:@"head"] objectForKey:@"error_msg"];
}

- (id)data {
    if (![self isNullToDictionary:self]) {
        return [self objectForKey:@"body"];
    }
    return nil;
}

- (BOOL)isNullToDictionary:(NSDictionary *)dict {
    if (dict && ![dict isKindOfClass:[NSNull class]] && dict.count != 0) {
        return NO;
    }
    return YES;
}


@end

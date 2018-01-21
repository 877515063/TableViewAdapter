//
//  NSDictionary+HttpJSON.h
//  TableViewAdapter
//
//  Created by dev4mobile on 2018/1/17.
//  Copyright © 2018年 dev4mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (HttpJSON)

/**< 是否成功,YES成功,NO失败 */
- (BOOL)success;

/** < 响应码 */
- (NSString *)messageCode;

/**< 提示消息 */
- (NSString *)message;

/**< 数据 */
- (id)data;

@end

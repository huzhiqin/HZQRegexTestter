//
//  HZQRegexTestter.h
//  正则表达式验证
//
//  Created by 1 on 16/3/8.
//  Copyright © 2016年 HZQ. All rights reserved.

/*********************************************************/
/* Github地址：https://github.com/huzhiqin                */
/*********************************************************/

#import <Foundation/Foundation.h>

@interface HZQRegexTestter : NSObject
/**
 *  1.用户名 - 2.密码 （英文、数字都可，且不包含特殊字符
 */
+ (BOOL)validateStrWithRange:(NSString *)range str:(NSString *)str;

/**
 *  真实姓名验证
 * （只能是汉字且10个字内）
 */
+ (BOOL)validateRealName:(NSString *)name;

/**
 *  邮箱验证
 */
+ (BOOL)validateEmail:(NSString *)email;

/**
 *  手机号码验证
 */
+ (BOOL)validatePhone:(NSString *)phone;

/**
 *  身份证号码验证
 */
+ (BOOL)validateIDCardNumber:(NSString *)value;

@end
/*********************************************************/
/* Github地址：https://github.com/huzhiqin                */
/*********************************************************/

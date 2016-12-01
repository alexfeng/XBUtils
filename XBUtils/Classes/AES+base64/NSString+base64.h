//
//  NSString+base64.h
//  Pods
//
//  Created by 冯向博 on 2016/11/23.
//  Copyright © 2016年 AlexFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (base64)

#pragma mark - base64
+ (NSString*)encodeBase64String:(NSString *)input;
+ (NSString*)decodeBase64String:(NSString *)input;
+ (NSString*)encodeBase64Data:(NSData *)data;
+ (NSString*)decodeBase64Data:(NSData *)data;


/**
 *  AES 256 位加密
 *
 *  @param input 输入源
 *  @param key   加解密key,为空时用默认的
 *
 *  @return 加密后的数据流
 */
+ (NSData *)encodeAES256String:(NSString * )input key:(NSString *)key;

/**
 *  AES 256 位解密
 *
 *  @param data 要解密的数据
 *  @param key  加解密key,为空时用默认的
 *
 *  @return 解密后的字符串
 */
+ (NSString *)decodeAES256Data:(NSData *)data key:(NSString *)key;

/**
 *  AES 256 位加密为字符串
 *
 *  @param input 输入源
 *  @param key   加解密key,为空时用默认的
 *
 *  @return 加密后的字符串
 */
+ (NSString *)GetEncodeAES256String:(NSString * )input key:(NSString *)key;

/**
 *  3DES加密方法
 *
 *  @param plainText 待加密字符串
 *  @param key       加密的Key
 *  @param initVec   向量
 *
 *  @return NSData 加密后的数据
 */
+ (NSString *)Encrypt3DESWithText:(NSString *)plainText key:(NSString *)key initVec:(NSString *)initVec;

/**
 *  3DES解密方法
 *
 *  @param encryptText 待解密字符串
 *  @param key         解密的Key
 *  @param initVec     向量
 *
 *  @return 解密后的数据
 */
+ (NSString *)Decrypt3DESWithText:(NSString *)encryptText key:(NSString *)key initVec:(NSString *)initVec;

@end

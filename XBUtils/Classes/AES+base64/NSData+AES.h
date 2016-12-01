//
//  NSData-AES.h
//  Pods
//
//  Created by 冯向博 on 2016/11/23.
//  Copyright © 2016年 AlexFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSString;

@interface NSData (Encryption)

/**
 *  AES256位加密
 *
 *  @param key 待加密字串
 *
 *  @return 加密Data
 */
- (NSData *)AES256EncryptWithKey:(NSString *)key;

/**
 *  AES256位解密
 *
 *  @param key 待解密字串
 *
 *  @return 解密Data
 */
- (NSData *)AES256DecryptWithKey:(NSString *)key;

/**
 *  3DES加密方法
 *
 *  @param plainText 待加密字符串
 *  @param key       加密的Key
 *  @param initVec   向量
 *
 *  @return NSData 加密后的数据
 */
+ (NSData *)Encrypt3DESWithText:(NSString *)plainText key:(NSString *)key initVec:(NSString *)initVec;

/**
 *  3DES解密方法
 *
 *  @param encryptText 待解密字符串
 *  @param key         解密的Key
 *  @param initVec     向量
 *
 *  @return 解密后的数据
 */
+ (NSData *)Decrypt3DESWithText:(NSString *)encryptText key:(NSString *)key initVec:(NSString *)initVec;

@end

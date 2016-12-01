//
//  NSString+base64.m
//  Pods
//
//  Created by 冯向博 on 2016/11/23.
//  Copyright © 2016年 AlexFeng. All rights reserved.
//

#import "NSString+base64.h"
#import "GTMBase64.h"
#import "NSData+AES.h"
//#import "NSString+category.h"

#define AESKey      @".Seasunk"

@implementation NSString (base64)

#pragma mark - base64
+ (NSString*)encodeBase64String:(NSString * )input {
    NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 encodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] ;
	return base64String;
}

+ (NSString*)decodeBase64String:(NSString * )input {
    NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 decodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] ;
	return base64String;
}

+ (NSString*)encodeBase64Data:(NSData *)data {
	data = [GTMBase64 encodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] ;
	return base64String;
}

+ (NSString*)decodeBase64Data:(NSData *)data {
	data = [GTMBase64 decodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] ;
	return base64String;
}

+ (NSData *)encodeAES256String:(NSString * )input key:(NSString *)key{
    key = key.length==0 ? AESKey : key;
    NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [data AES256EncryptWithKey:key];
    return data;
}

+ (NSString *)decodeAES256Data:(NSData *)data key:(NSString *)key{
    key = key.length==0 ? AESKey : key;
    data = [data AES256DecryptWithKey:key];
    NSString *dataString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return dataString;
}

+ (NSString *)GetEncodeAES256String:(NSString * )input key:(NSString *)key
{
    NSData *data = [self encodeAES256String:input key:key];
    //为什么要base64一下，http://stackoverflow.com/questions/29503546/initwithdata-returns-null
    /*
     Random bytes, and that is what encrypted looks like and can not be distinguished from, rarely is convertible to a string. This is why encrypted data is often Base64 encoded to produce printable characters.
     
     Use - base64EncodedStringWithOptions: to encode the encrypted data to a character string.
     */
    NSData *base64Data = [data base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
    NSString *stringCrypt = [[NSString alloc] initWithData:base64Data encoding:NSUTF8StringEncoding];
    return stringCrypt;
}

+ (NSString *)Encrypt3DESWithText:(NSString *)plainText key:(NSString *)key initVec:(NSString *)initVec
{
    if (!plainText) {
        return @"";
    }
    NSData *data = [NSData Encrypt3DESWithText:plainText key:key initVec:initVec];
    NSString *result = [GTMBase64 stringByEncodingData:data];
    return result;
    
}

+ (NSString *)Decrypt3DESWithText:(NSString *)encryptText key:(NSString *)key initVec:(NSString *)initVec
{
    if (!encryptText) {
        return @"";
    }
    NSData *data = [NSData Decrypt3DESWithText:encryptText key:key initVec:initVec];
    NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return result;
}

@end

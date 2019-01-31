//
//  ViewController.m
//  RSATestDemo
//
//  Created by LHWen on 2019/1/15.
//  Copyright © 2019 LHWen. All rights reserved.
//

#import "ViewController.h"
#import "RSA.h"
#import "NSString+Base64Tool.h"

// 秘钥 解密
static NSString *const RSAPrivateKey = @"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAMHjKa+EnnIW/Ni71yjrhL9qdy3G2Z18Do7836xls01vDB1DLayLwsPtq7rXTOYZRRHf7psB56z/Yb1Hw6xoXCMIU2cbW68eEabcqq11Y6hdIANNmsLs+hZJ4eDzPkE846zTEdGPeLRjnSh10CflwMBGLKWCcpJRzxgWokUMie0BAgMBAAECgYBIGyhkmyil+4CbRfh1wmlDGuApyRsjY4Cykr7IiaYONS9HLrWsxulvHlPQj8OMi3dRd3twcFvtzahW0XqnAsTIqL/SOXIX2X6ZckJ29wpUdBQyhgO/rRdGl118T2fzlIhCdnuonyBOAaUCx8z/f4BJOFfSM9zqXqCO4LbGym7d5QJBAOaPlzP6b3DtlB9jWYfHGm8Bau13jvF1SIkkeomyH3WztYZGCDnQLjbm6L3JUPx/L5Xz3WfSvYRyuBRJeO4jzrMCQQDXR7GDvbURI6oIPhUcxNHBycjDOVZHIiisn/5t9MG4GytWL1DaINbnjqLSFon6lBqiPcaK1Ml+q4CmpSQ1cm97AkAfY0j4YI2vWAikRUg4/dgRaKX/8hjZslfPo9Gy0TcLNQ3vW7Ve+YJxIvpoa/HEjiQSTALGUaBPWbbJvD7kXKeVAkEApgYGYqE1OMiWYtDuG0e2tIrXp6daYHV5hNfGsinmFAPwAgFviyl0UxPvgbIcKwF5INIfggXkdynwh5QoPofIbQJAAnlHDQqq/Jh02RqeYo2vfd3GbY0dRP+eJX39ThBeWcHQnmtmkPTz8X43j4ur4099vHVxt9EANIjDl1k6ZevEJA==";

// 公钥 加密
static NSString *const RSAPublicKey = @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDB4ymvhJ5yFvzYu9co64S/anctxtmdfA6O/N+sZbNNbwwdQy2si8LD7au610zmGUUR3+6bAees/2G9R8OsaFwjCFNnG1uvHhGm3KqtdWOoXSADTZrC7PoWSeHg8z5BPOOs0xHRj3i0Y50oddAn5cDARiylgnKSUc8YFqJFDIntAQIDAQAB";

@interface ViewController ()

/**
 *  转换为Base64编码
 */
- (NSString *)base64EncodedString:(NSString *)encString;
/**
 *  将Base64编码还原
 */
- (NSString *)base64DecodedString:(NSString *)decString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *pw = @"123456Test";
    // 公钥 加密
    NSString *encryptStr = [RSA encryptString:pw publicKey:RSAPublicKey];
    NSLog(@"加密结果： %@", encryptStr);
    // 秘钥 解密
    NSString *decrypeStr = [RSA decryptString:encryptStr privateKey:RSAPrivateKey];
    NSLog(@"解密结果： %@", decrypeStr);
    
    NSString *base64Str = [pw base64EncodedString];
    NSLog(@"base64编码：%@", base64Str);
    NSLog(@"base64解码：%@", [base64Str base64DecodedString]);
}

- (NSString *)base64EncodedString:(NSString *)encString {
    
    NSData *data = [encString dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)base64DecodedString:(NSString *)decString {
    
    NSData *data = [[NSData alloc]initWithBase64EncodedString:decString options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

@end

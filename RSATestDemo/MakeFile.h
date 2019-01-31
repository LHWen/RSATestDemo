//
//  MakeFile.h
//  RSATestDemo
//
//  Created by LHWen on 2019/1/31.
//  Copyright © 2019 LHWen. All rights reserved.
//

// RSA 生成公钥与秘钥操作 以及使用方法

#ifndef MakeFile_h
#define MakeFile_h

/**
 * RSA iOS端加密
 1、导入RSA的 .h & .m 文件
 2、使用终端生成 加密的公钥 与 解密的私钥
 2.1、新建文件夹 OpenSSL（文件名随便取）
 2.2、终端命令 $ cd 新建文件夹路径（OpenSSL的路径）
 2.3、使用命令 $ openssl 打开OpenSSL
 2.4、使用命令 $ genrsa -out rsa_private_key.pem 1024 生成私钥，注意私钥要使用终端中生成的（因为保存出来的文件私钥有缺失）
 2.5、使用命令 $ rsa -in rsa_private_key.pem -pubout -out rsa_public_key.pem 生成公钥，终端会出现writing RSA key,并不出现s公钥
 2.6、公钥与私钥生成后在创建的OpenSSL文件加载会出现rsa_private_key.pem(私钥)和rsa_public_key.pem(公钥)两个文件
 2.7、使用文本打开这两个文件获取私钥与公钥
 注意：私钥文件中的私钥不全，使用终端生成的私钥
 ---------------------------------------
 NSString *pw = @"123456Test";
 // 公钥 加密
 NSString *encryptStr = [RSA encryptString:pw publicKey:公钥字符串];
 // 私钥 解密
 NSString *decrypeStr = [RSA decryptString:encryptStr privateKey:私钥字符串];
 
 --------- 前后端交互 iOS ---------
 将私钥传给后端，让后端使用私钥解密 （这种方式由于RSA是静态的若被破解一次就一直能破解）
 解决方案：前端动态生成私钥与公钥，并使用之加密，然后使用后台给的公钥将 加密信息与动态生成的私钥公钥拼接的字符串 进行再次加密
 前端动态生成私钥与公钥参考文章：https://www.jianshu.com/p/5ba276c6cd87
 Demo地址：https://github.com/DullDevil/RSADemo
 */

#endif /* MakeFile_h */

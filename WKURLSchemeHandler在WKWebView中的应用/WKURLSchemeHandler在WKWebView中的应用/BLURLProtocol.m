//
//  BLURLProtocol.m
//  03-WebViewJavascriptBridge使用和源码分析
//
//  Created by zhangzhiliang on 2020/5/15.
//  Copyright © 2020 zhangzhiliang. All rights reserved.
//

#import "BLURLProtocol.h"

@implementation BLURLProtocol

+ (BOOL)canInitWithRequest:(NSURLRequest *)request{
    
   
    return YES;
}

//这个方法就是返回规范的request
+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request{
    return request;
}

- (void)startLoading{


}

// 这个方法是和start是对应的 一般在这个方法中,断开Connection
// 另外一点就是当NSURLProtocolClient的协议方法都回调完毕后,就会开始执行这个方法了
- (void)stopLoading{
    
}

// 这个方法主要用来判断两个请求是否是同一个请求，
// 如果是，则可以使用缓存数据，通常只需要调用父类的实现即可,默认为YES,而且一般不在这里做事情
+ (BOOL)requestIsCacheEquivalent:(NSURLRequest *)a toRequest:(NSURLRequest *)b {
    return [super requestIsCacheEquivalent:a toRequest:b];
}

@end

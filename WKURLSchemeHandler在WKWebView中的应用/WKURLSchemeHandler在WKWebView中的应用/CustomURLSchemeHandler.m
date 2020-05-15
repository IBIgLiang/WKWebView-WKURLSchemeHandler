//
//  CustomURLSchemeHandler.m
//  001---NSURLProtocol
//
//  Created by zhangzhiliang on 2020/5/15.
//  Copyright © 2020 Cooci. All rights reserved.
//

#import "CustomURLSchemeHandler.h"

@implementation CustomURLSchemeHandler

- (void)webView:(WKWebView *)webView startURLSchemeTask:(id<WKURLSchemeTask>)urlSchemeTask {
    NSString* scheme = urlSchemeTask.request.URL.scheme.lowercaseString;
    if ([scheme isEqualToString:@"bltest"]) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"index.js" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:filePath];
        NSHTTPURLResponse* response = [[NSHTTPURLResponse alloc] initWithURL:urlSchemeTask.request.URL statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:@{@"Content-Type" : @"text/plain"}];
        [urlSchemeTask didReceiveResponse:response];
        [urlSchemeTask didReceiveData:data];
        [urlSchemeTask didFinish];
    }
}

- (void)webView:(WKWebView *)webView stopURLSchemeTask:(id<WKURLSchemeTask>)urlSchemeTask {
    
    
}

@end

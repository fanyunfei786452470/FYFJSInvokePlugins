//
//  FYFPlugin100000.m
//  KSJSNativePlugin
//
//  Created by 范云飞 on 2021/8/24.
//

#import "FYFPlugin100000.h"
#import <FYFWebComponent/FYFPluginResult.h>

@implementation FYFPlugin100000

- (void)serverInvoke:(id)param {
    NSDictionary *dict = @{@"token":@"faljflajflalfjlajfljalfjalsjflajslfjlasjfkl",
                           @"userId":@"userId"};
    FYFPluginResult *result = [[FYFPluginResult alloc] init];
    result.errorNo = FYFPLUGIN_ERROR_NO_SUCCESS;
    result.errorInfo = @"请求成功";
    result.results = dict;
    
    NSMutableDictionary *reqParam = (NSMutableDictionary *)param;
    
    NSString *flowNo = [reqParam objectForKey:@"flowNo"];
//    NSString *fileUrl = [reqParam objectForKey:@"url"];
//    NSString *title = [reqParam objectForKey:@"title"];
    
    [self iosCallbackJSFlowNo:flowNo param:result];
}

@end

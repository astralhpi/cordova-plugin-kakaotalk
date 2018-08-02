#import "AppDelegate+Kakao.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>

@implementation AppDelegate(Kakao)
- (BOOL)application:(UIApplication*)application openURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation {
    if ([KOSession isKakaoAccountLoginCallback:url]){
        return [KOSession handleOpenURL:url];
    }
    return NO;
    
    
}
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    if ([KOSession isKakaoAccountLoginCallback:url]){
        return [KOSession handleOpenURL:url];
    }
    return NO;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    [KOSession handleDidBecomeActive];
    
}
@end

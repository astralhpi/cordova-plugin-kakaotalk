#import "AppDelegate+Kakao.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>

@implementation AppDelegate(Kakao)
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options{
    if ([KOSession isKakaoAccountLoginCallback:url]){
        return [KOSession handleOpenURL:url];
    }
    return [super application:application
                      openURL:url
                      options:options];
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    [super applicationDidBecomeActive:application];
    [KOSession handleDidBecomeActive];
    
}
@end

#import "AppDelegate+Kakao.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>

@implementation AppDelegate(Kakao)
- (BOOL)application:(UIApplication*)application openURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation {
    if ([KOSession isKakaoAccountLoginCallback:url]){
        return [KOSession handleOpenURL:url];
    }
    return [super application:application
                      openURL:url
            sourceApplication:sourceApplication
                   annotation:annotation];
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    [super applicationDidBecomeActive:application];
    [KOSession handleDidBecomeActive];
    
}
@end

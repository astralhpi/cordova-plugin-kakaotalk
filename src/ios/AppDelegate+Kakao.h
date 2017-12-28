#import "AppDelegate.h"

@interface AppDelegate(Kakao)
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options;

- (void)applicationDidBecomeActive:(UIApplication *)application;
@end

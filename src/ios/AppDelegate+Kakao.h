#import "AppDelegate.h"

@interface AppDelegate(Kakao)
- (BOOL)application:(UIApplication*)application
            openURL:(NSURL*)url
  sourceApplication:(NSString*)sourceApplication
         annotation:(id)annotation;

- (void)applicationDidBecomeActive:(UIApplication *)application;
@end

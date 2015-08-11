# NHReturnReminder
NHReturnReminder make easy to create an return reminder alert. If user don't use app in a time, it will make a local notification to notify user return app.

## Installation
### Cocoapod
Add this line to Podfile:  

`pod 'NHReturnReminder', :git => 'https://github.com/huynguyencong/NHReturnReminder.git'`
### Manual
Add 2 source files (.h and .m) in folder NHReturnReminder to your project . 
## How to use
- In AppDelegate.m, import .h file:  
`#import "NHReturnReminder.h"`


- Create an NHReturnReminder property:  
`@property (nonatomic) NHReturnReminder* returnRemind;`


- Init that property in *application:didFinishLaunchingWithOptions*
```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.returnRemind = [[NHReturnReminder alloc] initWithString:@"There are many new content, please return to read!"];
    self.returnRemind.timerReminds = @[@10, @30, @60];
    [self.returnRemind requestLocalNotification];
    [self.returnRemind start];
    return YES;
}
```
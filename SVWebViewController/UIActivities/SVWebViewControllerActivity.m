//
//  SVWebViewControllerActivity.m
//  SVWeb
//
//  Created by Sam Vermette on 11/11/2013.
//
//

#import "SVWebViewControllerActivity.h"

@implementation SVWebViewControllerActivity

- (NSString *)activityType {
	return NSStringFromClass([self class]);
}

- (UIImage *)activityImage {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        return [UIImage imageNamed:[self.activityType stringByAppendingString:@"-iPad"] inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
    else
        return [UIImage imageNamed:self.activityType inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
	for (id activityItem in activityItems) {
		if ([activityItem isKindOfClass:[NSURL class]]) {
			self.URLToOpen = activityItem;
		}
	}
}

@end

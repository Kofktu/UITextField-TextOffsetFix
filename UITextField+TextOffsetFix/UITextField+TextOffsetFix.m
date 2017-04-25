//
//  UITextField+TextOffsetFix.m
//  UITextField+TextOffsetFix
//
//  Created by kofktu on 2017. 4. 25..
//  Copyright © 2017년 Kofktu. All rights reserved.
//

#import <objc/runtime.h>
#import "UITextField+TextOffsetFix.h"

@implementation UITextField (TextOffsetFix)

#pragma mark - Swizzle

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self.class, @selector(textRectForBounds:)),
                                   class_getInstanceMethod(self.class, @selector(kui_textRectForBounds:)));
    method_exchangeImplementations(class_getInstanceMethod(self.class, @selector(editingRectForBounds:)),
                                   class_getInstanceMethod(self.class, @selector(kui_editingRectForBounds:)));
                                   
}

- (CGRect)kui_textRectForBounds:(CGRect)bounds {
    if (NSFoundationVersionNumber >= NSFoundationVersionNumber10_0) {
        return CGRectInset(bounds, 2.0f, 1.0f);
    }
    return [self kui_textRectForBounds:bounds];
}

- (CGRect)kui_editingRectForBounds:(CGRect)bounds {
    if (NSFoundationVersionNumber >= NSFoundationVersionNumber10_0) {
        return CGRectInset(bounds, 2.0f, 1.0f);
    }
    return [self kui_editingRectForBounds:bounds];
}

@end

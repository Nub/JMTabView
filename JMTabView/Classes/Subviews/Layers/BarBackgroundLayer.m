//  Created by Jason Morrissey

#import "BarBackgroundLayer.h"
#import "UIColor+Hex.h"

@implementation BarBackgroundLayer

-(id)init;
{
    self = [super init];
    if (self)
    {
        CAGradientLayer * gradientLayer = [[[CAGradientLayer alloc] init] autorelease];
        UIColor * startColor = [UIColor colorWithWhite:1. alpha:1.0];
        UIColor * endColor = [UIColor colorWithWhite:0.85 alpha:1.0];
        gradientLayer.frame = CGRectMake(0, 0, 1024, 44);
        gradientLayer.colors = [NSArray arrayWithObjects:(id)[startColor CGColor], (id)[endColor CGColor], nil];
        [self insertSublayer:gradientLayer atIndex:0];
    }
    return self;
}

@end

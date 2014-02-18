//  Created by Jason Morrissey

#import <QuartzCore/QuartzCore.h>
#import "JMSelectionView.h"
#import "UIColor+Hex.h"
#import "UIView+InnerShadow.h"

@implementation JMSelectionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
    {
        
        self.layer.borderWidth = 1;
        self.layer.borderColor = [UIColor colorWithWhite:0.f alpha:.25f].CGColor;
        
        [self setBackgroundColor:[UIColor clearColor]];
        self.layer.shadowOffset = CGSizeMake(0, 2);
        self.layer.shadowRadius = 0;
        self.layer.shadowColor = [[UIColor whiteColor] CGColor];
        self.layer.shadowOpacity = 0.6;
        self.clipsToBounds = NO;
        
    }
    return self;
}

- (void)layoutSubviews;
{
    self.layer.cornerRadius = self.frame.size.height/2.f;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [self drawInnerShadowInRect:rect fillColor:[UIColor colorWithWhite:0.9 alpha:1.f]];
}

- (void)dealloc
{
    [super dealloc];
}

@end

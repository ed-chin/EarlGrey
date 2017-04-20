#import "CollectionViewCell.h"

@implementation CollectionViewCell
@synthesize button = _button;

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    self.clipsToBounds = NO;
    self.contentView.layer.shadowPath = [UIBezierPath
                                         bezierPathWithRect:self.bounds].CGPath;
    self.contentView.layer.shadowOpacity = 0.5;
    self.contentView.layer.shouldRasterize = YES;

    _button = [[UIButton alloc] initWithFrame:self.contentView.bounds];
    _button.backgroundColor = [UIColor blueColor];
    _button.autoresizingMask = UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleWidth;
    [self.contentView addSubview:_button];
  }
  return self;
}

@end

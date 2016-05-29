//
//  KKImageCollectionViewCell.m
//  KKImageScroller
//
//  Created by Kenny.li on 16/5/29.
//  Copyright © 2016年 KK. All rights reserved.
//

#import "KKImageCollectionViewCell.h"
#import "UIView+Extension.h"
#import "KKImageModel.h"
#import "UIImageView+WebCache.h"

@interface KKImageCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end


@implementation KKImageCollectionViewCell

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
//        self.width = 300;
//        self.height = 300;
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    
}



- (void)setImageModel:(KKImageModel *)imageModel{
    _imageModel = imageModel;
    
    if (imageModel.image) {
        self.imageView.image = [UIImage imageNamed:imageModel.image];
    }
    if (imageModel.imageUrl) {
        [self.imageView sd_setImageWithURL:[NSURL URLWithString:imageModel.imageUrl] placeholderImage:nil];
    }
    if (imageModel.title) {
        self.titleLabel.text = [NSString stringWithFormat:@" %@",imageModel.title];
    }
    
}


@end

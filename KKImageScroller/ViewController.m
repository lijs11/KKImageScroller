//
//  ViewController.m
//  KKImageScroller
//
//  Created by Kenny.li on 16/5/29.
//  Copyright © 2016年 KK. All rights reserved.
//

#import "ViewController.h"
#import "KKImageScroller.h"
#import "KKImageModel.h"
#import "MJExtension.h"
@interface ViewController ()
@property (nonatomic,strong)NSMutableArray *newses;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.新建
    KKImageScroller *sc = [[KKImageScroller alloc] init];
    sc.frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    [self.view addSubview:sc];
    
    //2.赋值
    self.newses = [KKImageModel mj_objectArrayWithFilename:@"newses.plist"];
    [sc setImageScrollerWithImages:self.newses];
    
   
//    NSLog(@"sc -- %lf %lf",sc.frame.size.width,sc.frame.size.height);
//    NSLog(@"sc -- %@ ",sc.subviews);
   
}





@end

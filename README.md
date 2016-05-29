# KKImageScroller
图片轮播器，采用UICollectionView滚动,功能不多，可自己扩展

![](https://github.com/lijs11/KKImageScroller/blob/master/KKImageScroller/imageScroller.gif)




    //1.新建
    KKImageScroller *sc = [[KKImageScroller alloc] init];
    sc.frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    [self.view addSubview:sc];
    //2.赋值 news是可变数组
    self.newses = [KKImageModel mj_objectArrayWithFilename:@"newses.plist"];
    [sc setImageScrollerWithImages:self.newses];

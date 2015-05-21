//
//  ViewController.m
//  UI-2.3-图片浏览器优化
//
//  Created by 王晓银 on 15/5/13.
//  Copyright (c) 2015年 王小二. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//记录当前的索引号
@property(nonatomic,assign)int index;
//上一张
- (IBAction)previous;
//下一张
- (IBAction)next;
//表示索引号
@property (weak, nonatomic) IBOutlet UILabel *noLabel;
//表示图片
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
//表示描述
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

//新的按钮
@property (weak, nonatomic) IBOutlet UIButton *previousBtn;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self wang];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//上一张
- (IBAction)previous{
//索引值减减
    self.index--;
    
    [self wang];
    


}
//下一张
- (IBAction)next{
    self.index++;
    

    [self wang];
    

}

-(void)wang{

    self.noLabel.text = [NSString stringWithFormat:@"%d/5",self.index+1];

    switch (self.index) {
        case 0:
            self.imageView.image = [UIImage imageNamed:@"biaoqingdi"];
            self.descLabel.text = @"牛逼1";
            break;
        case 1:
            self.imageView.image = [UIImage imageNamed:@"wangba"];
            self.descLabel.text = @"牛逼2";
            break;
        case 2:
            self.imageView.image = [UIImage imageNamed:@"bingli"];
            self.descLabel.text = @"牛逼3";
            break;
        case 3:
            self.imageView.image = [UIImage imageNamed:@"chiniupa"];
            self.descLabel.text = @"牛逼4";
            break;
        case 4:
            self.imageView.image = [UIImage imageNamed:@"danteng"];
            self.descLabel.text = @"牛逼5";
            break;
        
    }

    self.previousBtn.enabled = (self.index != 0);
    self.nextBtn.enabled = (self.index != 4);
    






}
@end

//
//  ViewController.m
//  ParticleView
//
//  Created by mimi on 15-2-6.
//  Copyright (c) 2015年 mimi. All rights reserved.
//

#import "ViewController.h"

#import "UIParticleView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIParticleView *particleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    // 从配置文件中加载特效
    [_particleView initWithFile:@"test"];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)test:(id)sender {
    // 开始播放粒子特效
    [_particleView startWithLifeTime:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

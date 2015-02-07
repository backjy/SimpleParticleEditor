//
//  UIParticleView.h
//  ParticleView
//
//  Created by mimi on 15-2-6.
//  Copyright (c) 2015年 mimi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIParticleCommon.h"

@interface UIParticleView : UIView


-(void) initWithFile:(NSString*) fileName;

-(void) startEmitter;

-(void) startWithLifeTime:(CGFloat) lifeTime;

/**
 *  配置Layer 和Cell
 *
 *  @param etLayer 需要配置的Layer
 *  @param config  配置表
 */
+(CAEmitterCell*) configerParticleLayer:(CAEmitterLayer*) etLayer Dict:(NSDictionary*) config ;

@end

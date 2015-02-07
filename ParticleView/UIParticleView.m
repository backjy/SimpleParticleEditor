//
//  UIParticleView.m
//  ParticleView
//
//  Created by mimi on 15-2-6.
//  Copyright (c) 2015年 mimi. All rights reserved.
//

#import "UIParticleView.h"
#import <QuartzCore/QuartzCore.h>

@interface UIParticleView()
{
    CAEmitterLayer* emitterLayer;
    float _birthRate;
    CGFloat _lifeTime;
}

@end


@implementation UIParticleView


+(Class)layerClass
{
    return [CAEmitterLayer class];
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self priveteInit];
    }
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self priveteInit];
}

-(void) priveteInit
{
    self.backgroundColor = [UIColor clearColor];
    emitterLayer = (CAEmitterLayer*)self.layer;
}

-(void)initWithFile:(NSString *)fileName
{
    NSString* url = [[NSBundle mainBundle] pathForResource:fileName ofType:@".plist"];
    NSDictionary* configDic = [NSDictionary dictionaryWithContentsOfFile:url];
    if (configDic)
    {
        CAEmitterCell* cell = [UIParticleView configerParticleLayer:emitterLayer Dict:configDic];
        cell.enabled = YES;
        emitterLayer.emitterCells = [NSArray arrayWithObject:cell];
        
        emitterLayer.lifetime = 0;
        emitterLayer.birthRate = 0;
        _birthRate=  [[configDic objectForKey:birthRateLayerKey] floatValue];
        _lifeTime =  [[configDic objectForKey:lifeTimeLayerKey] floatValue];
    }
}

-(void) startEmitter
{
    [self startWithLifeTime:_lifeTime];
}

-(void) startWithLifeTime:(CGFloat)lifeTime
{
    [[self class] cancelPreviousPerformRequestsWithTarget:self];
    if (lifeTime > 0)
    {
        [self performSelector:@selector(emitterLifeTimeEnd) withObject:self afterDelay:lifeTime];
    }
    
    emitterLayer.birthRate = _birthRate;
    emitterLayer.lifetime = lifeTime;
}

-(void) emitterLifeTimeEnd
{
    emitterLayer.birthRate = 0;
    emitterLayer.lifetime = 0;
}


+(CAEmitterCell*) configerParticleLayer:(CAEmitterLayer*) etLayer Dict:(NSDictionary*) config
{
    if (etLayer)
    {
        etLayer.emitterMode = [config objectForKey:emitterModeKey];
        etLayer.renderMode = [config objectForKey:renderModeKey];
        etLayer.emitterShape = [config objectForKey:emitterShapeKey];
        
        CGSize emitterSize = CGSizeMake(1, 1);
        emitterSize.width = [[config objectForKey:emitterSizeWidthKey] floatValue];
        emitterSize.height = [[config objectForKey:emitterSizeHeightKey] floatValue];
        etLayer.emitterSize = emitterSize;
    }
    CAEmitterCell* cell = [CAEmitterCell emitterCell];
    if (cell)
    {
        cell.name              = [config objectForKey:nameKey];// NSString
        cell.enabled           = [[config objectForKey:enabledKey] boolValue];//BOOL
        cell.birthRate         = [[config objectForKey:birthRateKey] floatValue];//float
        cell.lifetime          = [[config objectForKey:lifetimeKey] floatValue];// float
        cell.lifetimeRange     = [[config objectForKey:lifetimeRangeKey] floatValue];// float
        cell.emissionLatitude  = [[config objectForKey:emissionLatitudeKey] floatValue];// CGFloat
        cell.emissionLongitude = [[config objectForKey:emissionLongitudeKey] floatValue];// CGFloat
        cell.emissionRange     = [[config objectForKey:emissionRangeKey] floatValue];// CGFloat
        cell.velocity          = [[config objectForKey:velocityKey] floatValue];// CGFloat
        cell.velocityRange     = [[config objectForKey:velocityRangeKey] floatValue];// CGFloat
        
        cell.xAcceleration     = [[config objectForKey:xAccelerationKey] floatValue];// CGFloat
        cell.yAcceleration     = [[config objectForKey:yAccelerationKey] floatValue] * -1.0;// CGFloat
        cell.zAcceleration     = [[config objectForKey:zAccelerationKey] floatValue];// CGFloat
        
        cell.scale             = [[config objectForKey:scaleKey] floatValue];// CGFloat
        cell.scaleRange        = [[config objectForKey:scaleRangeKey] floatValue];// CGFloat
        cell.scaleSpeed        = [[config objectForKey:scaleSpeedKey] floatValue];// CGFloat
        
        cell.spin              = [[config objectForKey:spinKey] floatValue];// CGFloat
        cell.spinRange         = [[config objectForKey:spinRangeKey] floatValue];// CGFloat
        
        CGFloat colorR,colorG,colorB,colorA = 0;
        colorR     = [[config objectForKey:colorRKey] floatValue];
        colorG     = [[config objectForKey:colorGKey] floatValue];
        colorB     = [[config objectForKey:colorBKey] floatValue];
        colorA     = [[config objectForKey:colorAKey] floatValue];
        cell.color = [[UIColor colorWithRed:colorR green:colorG blue:colorB alpha:colorA] CGColor];
        
        
        cell.redRange   = [[config objectForKey:redRangeKey] floatValue];// CGFloat
        cell.greenRange = [[config objectForKey:greenRangeKey] floatValue];// CGFloat
        cell.blueRange  = [[config objectForKey:blueRangeKey] floatValue];// CGFloat
        cell.alphaRange = [[config objectForKey:alphaRangeKey] floatValue];// CGFloat
        
        
        cell.redSpeed   = [[config objectForKey:redSpeedKey] floatValue];// CGFloat
        cell.greenSpeed = [[config objectForKey:greenSpeedKey] floatValue];// CGFloat
        cell.blueSpeed  = [[config objectForKey:blueSpeedKey] floatValue];// CGFloat
        cell.alphaSpeed = [[config objectForKey:alphaSpeedKey] floatValue];// CGFloat
        UIImage* image  = [UIImage imageNamed:[config objectForKey:textureNameKey]];
        cell.contents   = (__bridge id)(image.CGImage);
    }
    return cell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

//
//  UIParticleCommon.h
//  ParticleView
//
//  Created by mimi on 15-2-6.
//  Copyright (c) 2015年 mimi. All rights reserved.
//

#ifndef ParticleView_UIParticleCommon_h
#define ParticleView_UIParticleCommon_h

#import <UIKit/UIKit.h>

static NSString* const nameDefaultValue          = @"default";
static NSString* const nameKey                   = @"name";
static NSString* const enabledKey                = @"enabled";//BOOL
static NSString* const birthRateKey              = @"birthRate";//float
static NSString* const lifetimeKey               = @"lifetime";// float
static NSString* const lifetimeRangeKey          = @"lifetimeRange";// float
static NSString* const emissionLatitudeKey       = @"emissionLatitude";// CGFloat
static NSString* const emissionLongitudeKey      = @"emissionLongitude";// CGFloat
static NSString* const emissionRangeKey          = @"emissionRange";// CGFloat
static NSString* const velocityKey               = @"velocity";// CGFloat
static NSString* const velocityRangeKey          = @"velocityRange";// CGFloat
static NSString* const xAccelerationKey          = @"xAcceleration";// CGFloat
static NSString* const yAccelerationKey          = @"yAcceleration";// CGFloat
static NSString* const zAccelerationKey          = @"zAcceleration";// CGFloat
static NSString* const scaleKey                  = @"scale";// CGFloat
static NSString* const scaleRangeKey             = @"scaleRange";// CGFloat
static NSString* const scaleSpeedKey             = @"scaleSpeed";// CGFloat
static NSString* const spinKey                   = @"spin";// CGFloat
static NSString* const spinRangeKey              = @"spinRange";// CGFloat
static NSString* const colorRKey                 = @"colorR";
static NSString* const colorGKey                 = @"colorG";
static NSString* const colorBKey                 = @"colorB";
static NSString* const colorAKey                 = @"colorA";
static NSString* const redRangeKey               = @"redRange";// CGFloat
static NSString* const greenRangeKey             = @"greenRange";// CGFloat
static NSString* const blueRangeKey              = @"blueRange";// CGFloat
static NSString* const alphaRangeKey             = @"alphaRange";// CGFloat
static NSString* const redSpeedKey               = @"redSpeed";// CGFloat
static NSString* const greenSpeedKey             = @"greenSpeed";// CGFloat
static NSString* const blueSpeedKey              = @"blueSpeed";// CGFloat
static NSString* const alphaSpeedKey             = @"alphaSpeed";// CGFloat
static NSString* const textureNameKey            = @"textureName";
static NSString* const textureNameContentKey     = @"textureNameContentKey";
static NSString* const contentsRect_XKey         = @"contentsRect_X";
static NSString* const contentsRect_YKey         = @"contentsRect_Y";
static NSString* const contentsRect_widthKey     = @"contentsRect_width";
static NSString* const contentsRect_heightKey    = @"contentsRect_height";
static NSString* const minificationFilterKey     = @"minificationFilter";// NSString
static NSString* const magnificationFilterKey    = @"magnificationFilter";// NSString
static NSString* const minificationFilterBiasKey = @"minificationFilterBias";//
// for layers
static NSString* const birthRateLayerKey = @"birthRateLayer";//float
static NSString* const lifeTimeLayerKey  = @"lifetimeLayer";// float

static NSString* const emitterSizeWidthKey = @"emitterSizeWidthKey";//float
static NSString* const emitterSizeHeightKey  = @"emitterSizeHeightKey";// float

static NSString* const emitterModeKey = @"EmitterModeKey";//float
static NSString* const emitterShapeKey  = @"EmitterShapeKey";// float
static NSString* const renderModeKey = @"RenderModeKey";//float


#endif

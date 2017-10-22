//
//  Batsman.h
//  ProtocolTrial
//
//  Created by Arun P on 10/22/17.
//  Copyright © 2017 Jibran Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cricketer.h"

@interface Batsman : NSObject <CricketerProtocol>

@property id <CricketerProtocol> delegate;
@end

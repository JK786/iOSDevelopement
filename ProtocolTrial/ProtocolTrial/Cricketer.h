//
//  Cricketer.h
//  ProtocolTrial
//
//  Created by Arun P on 10/22/17.
//  Copyright © 2017 Jibran Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CricketerProtocol
     -(void)HitsRuns;
     -(void)TakesCatches;
     -(void)Bowls;
@end

@interface Cricketer : NSObject
@property id <CricketerProtocol> delegate;

-(void)callingAllDelegateMethods;
@end

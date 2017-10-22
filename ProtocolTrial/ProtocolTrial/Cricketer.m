//
//  Cricketer.m
//  ProtocolTrial
//
//  Created by Arun P on 10/22/17.
//  Copyright © 2017 Jibran Khan. All rights reserved.
//

#import "Cricketer.h"

@implementation Cricketer

-(void)callingAllDelegateMethods {
    [_delegate HitsRuns];
    [_delegate TakesCatches];
    [_delegate Bowls];
}
@end

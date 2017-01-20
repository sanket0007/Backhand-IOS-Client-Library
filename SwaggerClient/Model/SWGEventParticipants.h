#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Backhand Api
* Apis to access Backhand backend services
*
* OpenAPI spec version: 0.0.1
* Contact: sanket@blackcurrantapps.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SWGEvent.h"
#import "SWGUser.h"


@protocol SWGEventParticipants
@end

@interface SWGEventParticipants : SWGObject


@property(nonatomic) SWGEvent* event;

@property(nonatomic) NSArray<SWGUser>* badmintonPlayers;

@property(nonatomic) NSArray<SWGUser>* tennisPlayers;

@property(nonatomic) NSArray<SWGUser>* squashPlayers;

@end
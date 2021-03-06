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




@protocol SWGClub
@end

@interface SWGClub : SWGObject


@property(nonatomic) NSNumber* clubId;

@property(nonatomic) NSString* clubName;

@property(nonatomic) NSString* clubCity;

@property(nonatomic) NSString* clubAddress;

@property(nonatomic) NSNumber* clubHasBadminton;

@property(nonatomic) NSNumber* clubHasTennis;

@property(nonatomic) NSNumber* clubHasSquash;

@property(nonatomic) NSNumber* clubNoBadmintonCourts;

@property(nonatomic) NSNumber* clubNoTennisCourts;

@property(nonatomic) NSNumber* clubNoSquashCourts;

@property(nonatomic) NSNumber* clubLat;

@property(nonatomic) NSNumber* clubLon;

@end

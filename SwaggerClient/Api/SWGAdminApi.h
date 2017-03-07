#import <Foundation/Foundation.h>
#import "SWGEvent.h"
#import "SWGUrl.h"
#import "SWGApi.h"

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



@interface SWGAdminApi: NSObject <SWGApi>

extern NSString* kSWGAdminApiErrorDomain;
extern NSInteger kSWGAdminApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a new event
/// Create a new sports event/meet
///
/// @param eventName Event Name
/// @param eventDescription Description
/// @param eventCity City
/// @param eventGameSport Sport
/// @param eventStartDate Start Date Format DD/MM/YYYY
/// @param eventEndDate End Date Format DD/MM/YYYY
/// @param eventBackgroundPicture Picture URL
/// @param eventLat Event ID
/// @param eventLon Event ID
/// 
///  code:200 message:"Event"
///
/// @return SWGEvent*
-(NSURLSessionTask*) createEventPostWithEventName: (NSString*) eventName
    eventDescription: (NSString*) eventDescription
    eventCity: (NSString*) eventCity
    eventGameSport: (NSString*) eventGameSport
    eventStartDate: (NSString*) eventStartDate
    eventEndDate: (NSString*) eventEndDate
    eventBackgroundPicture: (NSString*) eventBackgroundPicture
    eventLat: (NSString*) eventLat
    eventLon: (NSString*) eventLon
    completionHandler: (void (^)(SWGEvent* output, NSError* error)) handler;


/// Upload a picture
/// 
///
/// @param file File to upload Accepted formats jpg,jpeg,png
/// 
///  code:200 message:"URL of the picture"
///
/// @return SWGUrl*
-(NSURLSessionTask*) uploadPicturePostWithFile: (NSURL*) file
    completionHandler: (void (^)(SWGUrl* output, NSError* error)) handler;



@end

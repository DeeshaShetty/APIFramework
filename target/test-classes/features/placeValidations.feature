Feature: Validating Place API's

@AddPlace @Regression
Scenario Outline: Verify if place is being successfully added using AddPlaceAPI

Given Add Place Payload with "<name>" "<language>" "<address>"
When user calls "addPlaceAPI" with "POST" http Request
Then the API call should succeed with status code 200
And "status" in Response Body is "OK"
And "scope" in Response Body is "APP"
And verify place_Id created maps to "<name>" using "getPlaceAPI"

Examples:
 | name    | language | address            |
 | disha   | English  | World cross center |
# | BBhouse | Spanish  | Sea  cross center  |

@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working

Given DeletePlace Payload
When user calls "deletePlaceAPI" with "POST" http Request
Then the API call should succeed with status code 200
And "status" in Response Body is "OK"
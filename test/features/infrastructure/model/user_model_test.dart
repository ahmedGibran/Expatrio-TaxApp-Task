import 'dart:convert';
import 'package:expatrio_tax_task/features/features.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../fixture/fixture_reader.dart';

//flutter test test/features/infrastructure/model/user_model_test.dart
void main() {
  // make instance from user model and set the default params.
  UserModel user = UserModel(
      accessToken:
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJ4cDppZCI6IjExMzg3NSIsInhwOmxhc3ROYW1lIjoiQmEgQ2JhIEFpb24iLCJ4cDpzdWJqZWN0IjoiQm9ib24gQmEgQ2JhIEFpb24iLCJ4cDpwdiI6MiwiaXNzIjoieC1wYXRyaW8iLCJ4cDplbWFpbCI6InRpdG8rYnM3OTJAZXhwYXRyaW8uY29tIiwieHA6cm9sZSI6IkNVU1RPTUVSIiwieHA6Zmlyc3ROYW1lIjoiQm9ib24iLCJleHAiOjE3MDQ1ODYyMzcsImlhdCI6MTcwNDU4MjYzNywianRpIjoiMTIzIn0.5mXCBtiP6O-mfYhhQQUIwVdH9n_olZR9ieoWrABx-htwN07HLcVKUXYZVssIsNl1W2aJ_N0VlyOzxSId3xMc6Q",
      accessTokenExpiresAt: DateTime.tryParse("2024-01-07T00:10:37.183369Z"),
      userRole: "CUSTOMER",
      xpm: false,
      userId: 113875,
      subject: const UserSubjectModel(
        userId: 113875,
        userUuid: "7fe524e1-9575-4050-b209-8ebaf7094347",
        lastName: "Ba Cba Aion",
        firstName: "Bobon",
        fullName: "Bobon Ba Cba Aion",
        email: "tito+bs792@expatrio.com",
        role: "CUSTOMER",
        isAdmin: false,
      ),
      maxAgeSeconds: 3600);

  test("fromJson", () async {
    // get data from local json file
    final Map<String, dynamic> mapData =
        json.decode(fixture("cached_user_data.json"));
    UserModel result;
    // result will take the mappedData from the user json file
    result = UserModel.fromJson(mapData);
    // here we can check so if it is confirmed or not
    expect(result, user);
  });

  test("toJson", () async {
    final result = user.toJson();

    // mapping data
    Map<String, dynamic> mapOfData = {
      "accessToken":
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJ4cDppZCI6IjExMzg3NSIsInhwOmxhc3ROYW1lIjoiQmEgQ2JhIEFpb24iLCJ4cDpzdWJqZWN0IjoiQm9ib24gQmEgQ2JhIEFpb24iLCJ4cDpwdiI6MiwiaXNzIjoieC1wYXRyaW8iLCJ4cDplbWFpbCI6InRpdG8rYnM3OTJAZXhwYXRyaW8uY29tIiwieHA6cm9sZSI6IkNVU1RPTUVSIiwieHA6Zmlyc3ROYW1lIjoiQm9ib24iLCJleHAiOjE3MDQ1ODYyMzcsImlhdCI6MTcwNDU4MjYzNywianRpIjoiMTIzIn0.5mXCBtiP6O-mfYhhQQUIwVdH9n_olZR9ieoWrABx-htwN07HLcVKUXYZVssIsNl1W2aJ_N0VlyOzxSId3xMc6Q",
      "accessTokenExpiresAt": "2024-01-07T00:10:37.183369Z",
      "userRole": "CUSTOMER",
      "xpm": false,
      "userId": 113875,
      "subject": {
        "userId": 113875,
        "userUuid": "7fe524e1-9575-4050-b209-8ebaf7094347",
        "lastName": "Ba Cba Aion",
        "firstName": "Bobon",
        "fullName": "Bobon Ba Cba Aion",
        "email": "tito+bs792@expatrio.com",
        "role": "CUSTOMER",
        "isAdmin": false,
      },
      "maxAgeSeconds": 3600
    };
    // here we can check so if it is confirmed or not
    expect(result, mapOfData);
  });
}

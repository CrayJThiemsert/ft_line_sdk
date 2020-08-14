import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import '../theme.dart';

class UserInfoWidget extends StatelessWidget {
  final UserProfile userProfile;
  final String userEmail;
  final StoredAccessToken accessToken;
  final Function onSignOutPressed;

  const UserInfoWidget(
      {Key key,
      this.userProfile,
      this.userEmail,
      this.accessToken,
      this.onSignOutPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          userProfile.pictureUrl.isNotEmpty
            ? Image.network(
                userProfile.pictureUrl,
                width: 200,
                height: 200,
              )
            : Icon(Icons.person),
          Text(
            userProfile.displayName,
            style: Theme.of(context).textTheme.headline5
          ),
          if(userEmail != null) Text(userEmail),
          Text('statusMessage[${userProfile.statusMessage}]' ?? 'no status data'),
          Container(
            child: RaisedButton(
              textColor: textColor,
              color: accentColor,
              child: Text('Sign Out'),
              onPressed: onSignOutPressed,
            ),
          ),
        ],
      ),
    );
  }
}

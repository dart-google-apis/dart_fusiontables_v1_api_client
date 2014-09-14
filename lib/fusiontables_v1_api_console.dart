library fusiontables_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_fusiontables_v1_api/src/console_client.dart';

import "package:google_fusiontables_v1_api/fusiontables_v1_api_client.dart";

/** API for working with Fusion Tables data. */
@deprecated
class Fusiontables extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your Fusion Tables */
  static const String FUSIONTABLES_SCOPE = "https://www.googleapis.com/auth/fusiontables";

  /** OAuth Scope2: View your Fusion Tables */
  static const String FUSIONTABLES_READONLY_SCOPE = "https://www.googleapis.com/auth/fusiontables.readonly";

  final oauth2.OAuth2Console auth;

  Fusiontables([oauth2.OAuth2Console this.auth]);
}

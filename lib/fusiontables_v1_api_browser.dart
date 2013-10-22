library fusiontables_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_fusiontables_v1_api/src/browser_client.dart';
import "package:google_fusiontables_v1_api/fusiontables_v1_api_client.dart";

/** API for working with Fusion Tables data. */
class Fusiontables extends Client with BrowserClient {

  /** OAuth Scope2: Manage your Fusion Tables */
  static const String FUSIONTABLES_SCOPE = "https://www.googleapis.com/auth/fusiontables";

  /** OAuth Scope2: View your Fusion Tables */
  static const String FUSIONTABLES_READONLY_SCOPE = "https://www.googleapis.com/auth/fusiontables.readonly";

  final oauth.OAuth2 auth;

  Fusiontables([oauth.OAuth2 this.auth]);
}

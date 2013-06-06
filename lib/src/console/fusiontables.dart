part of fusiontables_v1_api_console;

/** Client to access the fusiontables v1 API */
/** API for working with Fusion Tables data. */
class Fusiontables extends ConsoleClient {

  ColumnResource_ _column;
  ColumnResource_ get column => _column;
  QueryResource_ _query;
  QueryResource_ get query => _query;
  StyleResource_ _style;
  StyleResource_ get style => _style;
  TableResource_ _table;
  TableResource_ get table => _table;
  TemplateResource_ _template;
  TemplateResource_ get template => _template;

  /** OAuth Scope2: Manage your Fusion Tables */
  static const core.String FUSIONTABLES_SCOPE = "https://www.googleapis.com/auth/fusiontables";

  /** OAuth Scope2: View your Fusion Tables */
  static const core.String FUSIONTABLES_READONLY_SCOPE = "https://www.googleapis.com/auth/fusiontables.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Fusiontables([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/fusiontables/v1/";
    rootUrl = "https://www.googleapis.com/";
    _column = new ColumnResource_(this);
    _query = new QueryResource_(this);
    _style = new StyleResource_(this);
    _table = new TableResource_(this);
    _template = new TemplateResource_(this);
  }
}

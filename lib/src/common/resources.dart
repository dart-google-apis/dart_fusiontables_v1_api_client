part of fusiontables_v1_api_client;

class ColumnResource extends Resource {

  ColumnResource(Client client) : super(client) {
  }

  /**
   * Deletes the column.
   *
   * [tableId] - Table from which the column is being deleted.
   *
   * [columnId] - Name or identifier for the column being deleted.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String tableId, String columnId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (columnId == null) paramErrors.add("columnId is required");
    if (columnId != null) urlParams["columnId"] = columnId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a specific column by its id.
   *
   * [tableId] - Table to which the column belongs.
   *
   * [columnId] - Name or identifier for the column that is being requested.
   *
   * [optParams] - Additional query parameters
   */
  Future<Column> get(String tableId, String columnId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (columnId == null) paramErrors.add("columnId is required");
    if (columnId != null) urlParams["columnId"] = columnId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Column.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a new column to the table.
   *
   * [request] - Column to send in this request
   *
   * [tableId] - Table for which a new column is being added.
   *
   * [optParams] - Additional query parameters
   */
  Future<Column> insert(Column request, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/columns";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Column.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of columns.
   *
   * [tableId] - Table whose columns are being listed.
   *
   * [maxResults] - Maximum number of columns to return. Optional. Default is 5.
   *   Minimum: 0
   *
   * [pageToken] - Continuation token specifying which result page to return. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<ColumnList> list(String tableId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/columns";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ColumnList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the name or type of an existing column. This method supports patch semantics.
   *
   * [request] - Column to send in this request
   *
   * [tableId] - Table for which the column is being updated.
   *
   * [columnId] - Name or identifier for the column that is being updated.
   *
   * [optParams] - Additional query parameters
   */
  Future<Column> patch(Column request, String tableId, String columnId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (columnId == null) paramErrors.add("columnId is required");
    if (columnId != null) urlParams["columnId"] = columnId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Column.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the name or type of an existing column.
   *
   * [request] - Column to send in this request
   *
   * [tableId] - Table for which the column is being updated.
   *
   * [columnId] - Name or identifier for the column that is being updated.
   *
   * [optParams] - Additional query parameters
   */
  Future<Column> update(Column request, String tableId, String columnId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (columnId == null) paramErrors.add("columnId is required");
    if (columnId != null) urlParams["columnId"] = columnId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Column.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class QueryResource extends Resource {

  QueryResource(Client client) : super(client) {
  }

  /**
   * Executes an SQL SELECT/INSERT/UPDATE/DELETE/SHOW/DESCRIBE/CREATE statement.
   *
   * [sql] - An SQL SELECT/SHOW/DESCRIBE/INSERT/UPDATE/DELETE/CREATE statement.
   *
   * [hdrs] - Should column names be included (in the first row)?. Default is true.
   *
   * [typed] - Should typed values be returned in the (JSON) response -- numbers for numeric values and parsed geometries for KML values? Default is true.
   *
   * [optParams] - Additional query parameters
   */
  Future<Sqlresponse> sql(String sql, {bool hdrs, bool typed, Map optParams}) {
    var completer = new Completer();
    var url = "query";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (hdrs != null) queryParams["hdrs"] = hdrs;
    if (sql == null) paramErrors.add("sql is required");
    if (sql != null) queryParams["sql"] = sql;
    if (typed != null) queryParams["typed"] = typed;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Sqlresponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Executes an SQL SELECT/SHOW/DESCRIBE statement.
   *
   * [sql] - An SQL SELECT/SHOW/DESCRIBE statement.
   *
   * [hdrs] - Should column names be included (in the first row)?. Default is true.
   *
   * [typed] - Should typed values be returned in the (JSON) response -- numbers for numeric values and parsed geometries for KML values? Default is true.
   *
   * [optParams] - Additional query parameters
   */
  Future<Sqlresponse> sqlGet(String sql, {bool hdrs, bool typed, Map optParams}) {
    var completer = new Completer();
    var url = "query";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (hdrs != null) queryParams["hdrs"] = hdrs;
    if (sql == null) paramErrors.add("sql is required");
    if (sql != null) queryParams["sql"] = sql;
    if (typed != null) queryParams["typed"] = typed;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Sqlresponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class StyleResource extends Resource {

  StyleResource(Client client) : super(client) {
  }

  /**
   * Deletes a style.
   *
   * [tableId] - Table from which the style is being deleted
   *
   * [styleId] - Identifier (within a table) for the style being deleted
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String tableId, int styleId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (styleId == null) paramErrors.add("styleId is required");
    if (styleId != null) urlParams["styleId"] = styleId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets a specific style.
   *
   * [tableId] - Table to which the requested style belongs
   *
   * [styleId] - Identifier (integer) for a specific style in a table
   *
   * [optParams] - Additional query parameters
   */
  Future<StyleSetting> get(String tableId, int styleId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (styleId == null) paramErrors.add("styleId is required");
    if (styleId != null) urlParams["styleId"] = styleId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new StyleSetting.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a new style for the table.
   *
   * [request] - StyleSetting to send in this request
   *
   * [tableId] - Table for which a new style is being added
   *
   * [optParams] - Additional query parameters
   */
  Future<StyleSetting> insert(StyleSetting request, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/styles";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new StyleSetting.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of styles.
   *
   * [tableId] - Table whose styles are being listed
   *
   * [maxResults] - Maximum number of styles to return. Optional. Default is 5.
   *   Minimum: 0
   *
   * [pageToken] - Continuation token specifying which result page to return. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<StyleSettingList> list(String tableId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/styles";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new StyleSettingList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing style. This method supports patch semantics.
   *
   * [request] - StyleSetting to send in this request
   *
   * [tableId] - Table whose style is being updated.
   *
   * [styleId] - Identifier (within a table) for the style being updated.
   *
   * [optParams] - Additional query parameters
   */
  Future<StyleSetting> patch(StyleSetting request, String tableId, int styleId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (styleId == null) paramErrors.add("styleId is required");
    if (styleId != null) urlParams["styleId"] = styleId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new StyleSetting.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing style.
   *
   * [request] - StyleSetting to send in this request
   *
   * [tableId] - Table whose style is being updated.
   *
   * [styleId] - Identifier (within a table) for the style being updated.
   *
   * [optParams] - Additional query parameters
   */
  Future<StyleSetting> update(StyleSetting request, String tableId, int styleId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (styleId == null) paramErrors.add("styleId is required");
    if (styleId != null) urlParams["styleId"] = styleId;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new StyleSetting.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TableResource extends Resource {

  TableResource(Client client) : super(client) {
  }

  /**
   * Copies a table.
   *
   * [tableId] - ID of the table that is being copied.
   *
   * [copyPresentation] - Whether to also copy tabs, styles, and templates. Default is false.
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> copy(String tableId, {bool copyPresentation, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/copy";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (copyPresentation != null) queryParams["copyPresentation"] = copyPresentation;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Deletes a table.
   *
   * [tableId] - ID of the table that is being deleted.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a specific table by its id.
   *
   * [tableId] - Identifier(ID) for the table being requested.
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> get(String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Import more rows into a table.
   *
   * [tableId] - The table into which new rows are being imported.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [delimiter] - The delimiter used to separate cell values. This can only consist of a single character. Default is ','.
   *
   * [encoding] - The encoding of the content. Default is UTF-8. Use 'auto-detect' if you are unsure of the encoding.
   *
   * [endLine] - The index of the last line from which to start importing, exclusive. Thus, the number of imported lines is endLine - startLine. If this parameter is not provided, the file will be imported until the last line of the file. If endLine is negative, then the imported content will exclude the last endLine lines. That is, if endline is negative, no line will be imported whose index is greater than N + endLine where N is the number of lines in the file, and the number of imported lines will be N + endLine - startLine.
   *
   * [isStrict] - Whether the CSV must have the same number of values for each row. If false, rows with fewer values will be padded with empty values. Default is true.
   *
   * [startLine] - The index of the first line from which to start importing, inclusive. Default is 0.
   *
   * [optParams] - Additional query parameters
   */
  Future<Import> importRows(String tableId, {String content, String contentType, String delimiter, String encoding, int endLine, bool isStrict, int startLine, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/import";
    var uploadUrl = "/upload/fusiontables/v1/tables/{tableId}/import";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (delimiter != null) queryParams["delimiter"] = delimiter;
    if (encoding != null) queryParams["encoding"] = encoding;
    if (endLine != null) queryParams["endLine"] = endLine;
    if (isStrict != null) queryParams["isStrict"] = isStrict;
    if (startLine != null) queryParams["startLine"] = startLine;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new Import.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new table.
   *
   * [request] - Table to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> insert(Table request, {Map optParams}) {
    var completer = new Completer();
    var url = "tables";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of tables a user owns.
   *
   * [maxResults] - Maximum number of styles to return. Optional. Default is 5.
   *   Minimum: 0
   *
   * [pageToken] - Continuation token specifying which result page to return. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<TableList> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "tables";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TableList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing table. Unless explicitly requested, only the name, description, and attribution will be updated. This method supports patch semantics.
   *
   * [request] - Table to send in this request
   *
   * [tableId] - ID of the table that is being updated.
   *
   * [replaceViewDefinition] - Should the view definition also be updated? The specified view definition replaces the existing one. Only a view can be updated with a new definition.
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> patch(Table request, String tableId, {bool replaceViewDefinition, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (replaceViewDefinition != null) queryParams["replaceViewDefinition"] = replaceViewDefinition;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing table. Unless explicitly requested, only the name, description, and attribution will be updated.
   *
   * [request] - Table to send in this request
   *
   * [tableId] - ID of the table that is being updated.
   *
   * [replaceViewDefinition] - Should the view definition also be updated? The specified view definition replaces the existing one. Only a view can be updated with a new definition.
   *
   * [optParams] - Additional query parameters
   */
  Future<Table> update(Table request, String tableId, {bool replaceViewDefinition, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (replaceViewDefinition != null) queryParams["replaceViewDefinition"] = replaceViewDefinition;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Table.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TemplateResource extends Resource {

  TemplateResource(Client client) : super(client) {
  }

  /**
   * Deletes a template
   *
   * [tableId] - Table from which the template is being deleted
   *
   * [templateId] - Identifier for the template which is being deleted
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String tableId, int templateId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (templateId == null) paramErrors.add("templateId is required");
    if (templateId != null) urlParams["templateId"] = templateId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a specific template by its id
   *
   * [tableId] - Table to which the template belongs
   *
   * [templateId] - Identifier for the template that is being requested
   *
   * [optParams] - Additional query parameters
   */
  Future<Template> get(String tableId, int templateId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (templateId == null) paramErrors.add("templateId is required");
    if (templateId != null) urlParams["templateId"] = templateId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Template.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new template for the table.
   *
   * [request] - Template to send in this request
   *
   * [tableId] - Table for which a new template is being created
   *
   * [optParams] - Additional query parameters
   */
  Future<Template> insert(Template request, String tableId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/templates";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Template.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of templates.
   *
   * [tableId] - Identifier for the table whose templates are being requested
   *
   * [maxResults] - Maximum number of templates to return. Optional. Default is 5.
   *   Minimum: 0
   *
   * [pageToken] - Continuation token specifying which results page to return. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<TemplateList> list(String tableId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/templates";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TemplateList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing template. This method supports patch semantics.
   *
   * [request] - Template to send in this request
   *
   * [tableId] - Table to which the updated template belongs
   *
   * [templateId] - Identifier for the template that is being updated
   *
   * [optParams] - Additional query parameters
   */
  Future<Template> patch(Template request, String tableId, int templateId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (templateId == null) paramErrors.add("templateId is required");
    if (templateId != null) urlParams["templateId"] = templateId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Template.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing template
   *
   * [request] - Template to send in this request
   *
   * [tableId] - Table to which the updated template belongs
   *
   * [templateId] - Identifier for the template that is being updated
   *
   * [optParams] - Additional query parameters
   */
  Future<Template> update(Template request, String tableId, int templateId, {Map optParams}) {
    var completer = new Completer();
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (templateId == null) paramErrors.add("templateId is required");
    if (templateId != null) urlParams["templateId"] = templateId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Template.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}


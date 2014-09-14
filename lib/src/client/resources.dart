part of fusiontables_v1_api;

class ColumnResource_ {

  final Client _client;

  ColumnResource_(Client client) :
      _client = client;

  /**
   * Deletes the column.
   *
   * [tableId] - Table from which the column is being deleted.
   *
   * [columnId] - Name or identifier for the column being deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String tableId, core.String columnId, {core.Map optParams}) {
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<Column> get(core.String tableId, core.String columnId, {core.Map optParams}) {
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Column.fromJson(data));
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
  async.Future<Column> insert(Column request, core.String tableId, {core.Map optParams}) {
    var url = "tables/{tableId}/columns";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Column.fromJson(data));
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
  async.Future<ColumnList> list(core.String tableId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "tables/{tableId}/columns";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ColumnList.fromJson(data));
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
  async.Future<Column> patch(Column request, core.String tableId, core.String columnId, {core.Map optParams}) {
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Column.fromJson(data));
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
  async.Future<Column> update(Column request, core.String tableId, core.String columnId, {core.Map optParams}) {
    var url = "tables/{tableId}/columns/{columnId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Column.fromJson(data));
  }
}

class QueryResource_ {

  final Client _client;

  QueryResource_(Client client) :
      _client = client;

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
  async.Future<Sqlresponse> sql(core.String sql, {core.bool hdrs, core.bool typed, core.Map optParams}) {
    var url = "query";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Sqlresponse.fromJson(data));
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
  async.Future<Sqlresponse> sqlGet(core.String sql, {core.bool hdrs, core.bool typed, core.Map optParams}) {
    var url = "query";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Sqlresponse.fromJson(data));
  }
}

class StyleResource_ {

  final Client _client;

  StyleResource_(Client client) :
      _client = client;

  /**
   * Deletes a style.
   *
   * [tableId] - Table from which the style is being deleted
   *
   * [styleId] - Identifier (within a table) for the style being deleted
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String tableId, core.int styleId, {core.Map optParams}) {
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<StyleSetting> get(core.String tableId, core.int styleId, {core.Map optParams}) {
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new StyleSetting.fromJson(data));
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
  async.Future<StyleSetting> insert(StyleSetting request, core.String tableId, {core.Map optParams}) {
    var url = "tables/{tableId}/styles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new StyleSetting.fromJson(data));
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
  async.Future<StyleSettingList> list(core.String tableId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "tables/{tableId}/styles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new StyleSettingList.fromJson(data));
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
  async.Future<StyleSetting> patch(StyleSetting request, core.String tableId, core.int styleId, {core.Map optParams}) {
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new StyleSetting.fromJson(data));
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
  async.Future<StyleSetting> update(StyleSetting request, core.String tableId, core.int styleId, {core.Map optParams}) {
    var url = "tables/{tableId}/styles/{styleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new StyleSetting.fromJson(data));
  }
}

class TableResource_ {

  final Client _client;

  TableResource_(Client client) :
      _client = client;

  /**
   * Copies a table.
   *
   * [tableId] - ID of the table that is being copied.
   *
   * [copyPresentation] - Whether to also copy tabs, styles, and templates. Default is false.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> copy(core.String tableId, {core.bool copyPresentation, core.Map optParams}) {
    var url = "tables/{tableId}/copy";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }

  /**
   * Deletes a table.
   *
   * [tableId] - ID of the table that is being deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String tableId, {core.Map optParams}) {
    var url = "tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a specific table by its id.
   *
   * [tableId] - Identifier(ID) for the table being requested.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> get(core.String tableId, {core.Map optParams}) {
    var url = "tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
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
  async.Future<Import> importRows(core.String tableId, {core.String content, core.String contentType, core.String delimiter, core.String encoding, core.int endLine, core.bool isStrict, core.int startLine, core.Map optParams}) {
    var url = "tables/{tableId}/import";
    var uploadUrl = "/upload/fusiontables/v1/tables/{tableId}/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Import.fromJson(data));
  }

  /**
   * Import a new table.
   *
   * [name] - The name to be assigned to the new table.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [delimiter] - The delimiter used to separate cell values. This can only consist of a single character. Default is ','.
   *
   * [encoding] - The encoding of the content. Default is UTF-8. Use 'auto-detect' if you are unsure of the encoding.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> importTable(core.String name, {core.String content, core.String contentType, core.String delimiter, core.String encoding, core.Map optParams}) {
    var url = "tables/import";
    var uploadUrl = "/upload/fusiontables/v1/tables/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (delimiter != null) queryParams["delimiter"] = delimiter;
    if (encoding != null) queryParams["encoding"] = encoding;
    if (name == null) paramErrors.add("name is required");
    if (name != null) queryParams["name"] = name;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Table.fromJson(data));
  }

  /**
   * Creates a new table.
   *
   * [request] - Table to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> insert(Table request, {core.Map optParams}) {
    var url = "tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
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
  async.Future<TableList> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TableList.fromJson(data));
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
  async.Future<Table> patch(Table request, core.String tableId, {core.bool replaceViewDefinition, core.Map optParams}) {
    var url = "tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
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
  async.Future<Table> update(Table request, core.String tableId, {core.bool replaceViewDefinition, core.Map optParams}) {
    var url = "tables/{tableId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }
}

class TaskResource_ {

  final Client _client;

  TaskResource_(Client client) :
      _client = client;

  /**
   * Deletes the task, unless already started.
   *
   * [tableId] - Table from which the task is being deleted.
   *
   * [taskId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String tableId, core.String taskId, {core.Map optParams}) {
    var url = "tables/{tableId}/tasks/{taskId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (taskId == null) paramErrors.add("taskId is required");
    if (taskId != null) urlParams["taskId"] = taskId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a specific task by its id.
   *
   * [tableId] - Table to which the task belongs.
   *
   * [taskId]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Task> get(core.String tableId, core.String taskId, {core.Map optParams}) {
    var url = "tables/{tableId}/tasks/{taskId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (taskId == null) paramErrors.add("taskId is required");
    if (taskId != null) urlParams["taskId"] = taskId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Task.fromJson(data));
  }

  /**
   * Retrieves a list of tasks.
   *
   * [tableId] - Table whose tasks are being listed.
   *
   * [maxResults] - Maximum number of columns to return. Optional. Default is 5.
   *   Minimum: 0
   *
   * [pageToken]
   *
   * [startIndex]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TaskList> list(core.String tableId, {core.int maxResults, core.String pageToken, core.int startIndex, core.Map optParams}) {
    var url = "tables/{tableId}/tasks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TaskList.fromJson(data));
  }
}

class TemplateResource_ {

  final Client _client;

  TemplateResource_(Client client) :
      _client = client;

  /**
   * Deletes a template
   *
   * [tableId] - Table from which the template is being deleted
   *
   * [templateId] - Identifier for the template which is being deleted
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String tableId, core.int templateId, {core.Map optParams}) {
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<Template> get(core.String tableId, core.int templateId, {core.Map optParams}) {
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Template.fromJson(data));
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
  async.Future<Template> insert(Template request, core.String tableId, {core.Map optParams}) {
    var url = "tables/{tableId}/templates";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Template.fromJson(data));
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
  async.Future<TemplateList> list(core.String tableId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "tables/{tableId}/templates";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TemplateList.fromJson(data));
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
  async.Future<Template> patch(Template request, core.String tableId, core.int templateId, {core.Map optParams}) {
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Template.fromJson(data));
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
  async.Future<Template> update(Template request, core.String tableId, core.int templateId, {core.Map optParams}) {
    var url = "tables/{tableId}/templates/{templateId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Template.fromJson(data));
  }
}


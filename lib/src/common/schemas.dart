part of fusiontables_v1_api_client;

/** Specifies the minimum and maximum values, the color, opacity, icon and weight of a bucket within a StyleSetting. */
class Bucket {

  /** Color of line or the interior of a polygon in #RRGGBB format. */
  String color;

  /** Icon name used for a point. */
  String icon;

  /** Maximum value in the selected column for a row to be styled according to the bucket color, opacity, icon, or weight. */
  num max;

  /** Minimum value in the selected column for a row to be styled according to the bucket color, opacity, icon, or weight. */
  num min;

  /** Opacity of the color: 0.0 (transparent) to 1.0 (opaque). */
  num opacity;

  /** Width of a line (in pixels). */
  int weight;

  /** Create new Bucket from JSON data */
  Bucket.fromJson(Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("icon")) {
      icon = json["icon"];
    }
    if (json.containsKey("max")) {
      max = json["max"];
    }
    if (json.containsKey("min")) {
      min = json["min"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
    if (json.containsKey("weight")) {
      weight = json["weight"];
    }
  }

  /** Create JSON Object for Bucket */
  Map toJson() {
    var output = new Map();

    if (color != null) {
      output["color"] = color;
    }
    if (icon != null) {
      output["icon"] = icon;
    }
    if (max != null) {
      output["max"] = max;
    }
    if (min != null) {
      output["min"] = min;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }
    if (weight != null) {
      output["weight"] = weight;
    }

    return output;
  }

  /** Return String representation of Bucket */
  String toString() => JSON.stringify(this.toJson());

}

/** Specifies the id, name and type of a column in a table. */
class Column {

  /** Optional identifier of the base column. If present, this column is derived from the specified base column. */
  ColumnBaseColumn baseColumn;

  /** Identifier for the column. */
  int columnId;

  /** Type name: a template for an individual column. */
  String kind;

  /** Required name of the column. */
  String name;

  /** Required type of the column. */
  String type;

  /** Create new Column from JSON data */
  Column.fromJson(Map json) {
    if (json.containsKey("baseColumn")) {
      baseColumn = new ColumnBaseColumn.fromJson(json["baseColumn"]);
    }
    if (json.containsKey("columnId")) {
      columnId = json["columnId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Column */
  Map toJson() {
    var output = new Map();

    if (baseColumn != null) {
      output["baseColumn"] = baseColumn.toJson();
    }
    if (columnId != null) {
      output["columnId"] = columnId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Column */
  String toString() => JSON.stringify(this.toJson());

}

/** Optional identifier of the base column. If present, this column is derived from the specified base column. */
class ColumnBaseColumn {

  /** The id of the column in the base table from which this column is derived. */
  int columnId;

  /** Offset to the entry in the list of base tables in the table definition. */
  int tableIndex;

  /** Create new ColumnBaseColumn from JSON data */
  ColumnBaseColumn.fromJson(Map json) {
    if (json.containsKey("columnId")) {
      columnId = json["columnId"];
    }
    if (json.containsKey("tableIndex")) {
      tableIndex = json["tableIndex"];
    }
  }

  /** Create JSON Object for ColumnBaseColumn */
  Map toJson() {
    var output = new Map();

    if (columnId != null) {
      output["columnId"] = columnId;
    }
    if (tableIndex != null) {
      output["tableIndex"] = tableIndex;
    }

    return output;
  }

  /** Return String representation of ColumnBaseColumn */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of columns in a table. */
class ColumnList {

  /** List of all requested columns. */
  List<Column> items;

  /** Type name: a list of all tables. */
  String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more tokens left. */
  String nextPageToken;

  /** Total number of columns for the table. */
  int totalItems;

  /** Create new ColumnList from JSON data */
  ColumnList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Column.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ColumnList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ColumnList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a Geometry object. */
class Geometry {

  /** Type: A collection of geometries. */
  String type;

  /** Create new Geometry from JSON data */
  Geometry.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Geometry */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Geometry */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents an import request. */
class Import {

  /** Type name: a template for an import request. */
  String kind;

  /** The number of rows received from the import request. */
  String numRowsReceived;

  /** Create new Import from JSON data */
  Import.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("numRowsReceived")) {
      numRowsReceived = json["numRowsReceived"];
    }
  }

  /** Create JSON Object for Import */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (numRowsReceived != null) {
      output["numRowsReceived"] = numRowsReceived;
    }

    return output;
  }

  /** Return String representation of Import */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a line geometry. */
class Line {

  /** Type: A line geometry. */
  String type;

  /** Create new Line from JSON data */
  Line.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Line */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Line */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a LineStyle within a StyleSetting */
class LineStyle {

  /** Color of the line in #RRGGBB format. */
  String strokeColor;

  /** Column-value, gradient or buckets styler that is used to determine the line color and opacity. */
  StyleFunction strokeColorStyler;

  /** Opacity of the line : 0.0 (transparent) to 1.0 (opaque). */
  num strokeOpacity;

  /** Width of the line in pixels. */
  int strokeWeight;

  /** Column-value or bucket styler that is used to determine the width of the line. */
  StyleFunction strokeWeightStyler;

  /** Create new LineStyle from JSON data */
  LineStyle.fromJson(Map json) {
    if (json.containsKey("strokeColor")) {
      strokeColor = json["strokeColor"];
    }
    if (json.containsKey("strokeColorStyler")) {
      strokeColorStyler = new StyleFunction.fromJson(json["strokeColorStyler"]);
    }
    if (json.containsKey("strokeOpacity")) {
      strokeOpacity = json["strokeOpacity"];
    }
    if (json.containsKey("strokeWeight")) {
      strokeWeight = json["strokeWeight"];
    }
    if (json.containsKey("strokeWeightStyler")) {
      strokeWeightStyler = new StyleFunction.fromJson(json["strokeWeightStyler"]);
    }
  }

  /** Create JSON Object for LineStyle */
  Map toJson() {
    var output = new Map();

    if (strokeColor != null) {
      output["strokeColor"] = strokeColor;
    }
    if (strokeColorStyler != null) {
      output["strokeColorStyler"] = strokeColorStyler.toJson();
    }
    if (strokeOpacity != null) {
      output["strokeOpacity"] = strokeOpacity;
    }
    if (strokeWeight != null) {
      output["strokeWeight"] = strokeWeight;
    }
    if (strokeWeightStyler != null) {
      output["strokeWeightStyler"] = strokeWeightStyler.toJson();
    }

    return output;
  }

  /** Return String representation of LineStyle */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a point object. */
class Point {

  /** The coordinates that define the point. */
  List<num> coordinates;

  /** Point: A point geometry. */
  String type;

  /** Create new Point from JSON data */
  Point.fromJson(Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = [];
      json["coordinates"].forEach((item) {
        coordinates.add(item);
      });
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Point */
  Map toJson() {
    var output = new Map();

    if (coordinates != null) {
      output["coordinates"] = new List();
      coordinates.forEach((item) {
        output["coordinates"].add(item);
      });
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Point */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a PointStyle within a StyleSetting */
class PointStyle {

  /** Name of the icon. Use values defined in http://www.google.com/fusiontables/DataSource?dsrcid=308519 */
  String iconName;

  /** Column or a bucket value from which the icon name is to be determined. */
  StyleFunction iconStyler;

  /** Create new PointStyle from JSON data */
  PointStyle.fromJson(Map json) {
    if (json.containsKey("iconName")) {
      iconName = json["iconName"];
    }
    if (json.containsKey("iconStyler")) {
      iconStyler = new StyleFunction.fromJson(json["iconStyler"]);
    }
  }

  /** Create JSON Object for PointStyle */
  Map toJson() {
    var output = new Map();

    if (iconName != null) {
      output["iconName"] = iconName;
    }
    if (iconStyler != null) {
      output["iconStyler"] = iconStyler.toJson();
    }

    return output;
  }

  /** Return String representation of PointStyle */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a polygon object. */
class Polygon {

  /** Type: A polygon geometry. */
  String type;

  /** Create new Polygon from JSON data */
  Polygon.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Polygon */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Polygon */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a PolygonStyle within a StyleSetting */
class PolygonStyle {

  /** Color of the interior of the polygon in #RRGGBB format. */
  String fillColor;

  /** Column-value, gradient, or bucket styler that is used to determine the interior color and opacity of the polygon. */
  StyleFunction fillColorStyler;

  /** Opacity of the interior of the polygon: 0.0 (transparent) to 1.0 (opaque). */
  num fillOpacity;

  /** Color of the polygon border in #RRGGBB format. */
  String strokeColor;

  /** Column-value, gradient or buckets styler that is used to determine the border color and opacity. */
  StyleFunction strokeColorStyler;

  /** Opacity of the polygon border: 0.0 (transparent) to 1.0 (opaque). */
  num strokeOpacity;

  /** Width of the polyon border in pixels. */
  int strokeWeight;

  /** Column-value or bucket styler that is used to determine the width of the polygon border. */
  StyleFunction strokeWeightStyler;

  /** Create new PolygonStyle from JSON data */
  PolygonStyle.fromJson(Map json) {
    if (json.containsKey("fillColor")) {
      fillColor = json["fillColor"];
    }
    if (json.containsKey("fillColorStyler")) {
      fillColorStyler = new StyleFunction.fromJson(json["fillColorStyler"]);
    }
    if (json.containsKey("fillOpacity")) {
      fillOpacity = json["fillOpacity"];
    }
    if (json.containsKey("strokeColor")) {
      strokeColor = json["strokeColor"];
    }
    if (json.containsKey("strokeColorStyler")) {
      strokeColorStyler = new StyleFunction.fromJson(json["strokeColorStyler"]);
    }
    if (json.containsKey("strokeOpacity")) {
      strokeOpacity = json["strokeOpacity"];
    }
    if (json.containsKey("strokeWeight")) {
      strokeWeight = json["strokeWeight"];
    }
    if (json.containsKey("strokeWeightStyler")) {
      strokeWeightStyler = new StyleFunction.fromJson(json["strokeWeightStyler"]);
    }
  }

  /** Create JSON Object for PolygonStyle */
  Map toJson() {
    var output = new Map();

    if (fillColor != null) {
      output["fillColor"] = fillColor;
    }
    if (fillColorStyler != null) {
      output["fillColorStyler"] = fillColorStyler.toJson();
    }
    if (fillOpacity != null) {
      output["fillOpacity"] = fillOpacity;
    }
    if (strokeColor != null) {
      output["strokeColor"] = strokeColor;
    }
    if (strokeColorStyler != null) {
      output["strokeColorStyler"] = strokeColorStyler.toJson();
    }
    if (strokeOpacity != null) {
      output["strokeOpacity"] = strokeOpacity;
    }
    if (strokeWeight != null) {
      output["strokeWeight"] = strokeWeight;
    }
    if (strokeWeightStyler != null) {
      output["strokeWeightStyler"] = strokeWeightStyler.toJson();
    }

    return output;
  }

  /** Return String representation of PolygonStyle */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a response to an sql statement. */
class Sqlresponse {

  /** Columns in the table. */
  List<String> columns;

  /** Type name: a template for an individual table. */
  String kind;

  /** Create new Sqlresponse from JSON data */
  Sqlresponse.fromJson(Map json) {
    if (json.containsKey("columns")) {
      columns = [];
      json["columns"].forEach((item) {
        columns.add(item);
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Sqlresponse */
  Map toJson() {
    var output = new Map();

    if (columns != null) {
      output["columns"] = new List();
      columns.forEach((item) {
        output["columns"].add(item);
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Sqlresponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a StyleFunction within a StyleSetting */
class StyleFunction {

  /** Bucket function that assigns a style based on the range a column value falls into. */
  List<Bucket> buckets;

  /** Name of the column whose value is used in the style. */
  String columnName;

  /** Gradient function that interpolates a range of colors based on column value. */
  StyleFunctionGradient gradient;

  /** Stylers can be one of three kinds: "fusiontables#fromColumn" if the column value is to be used as is, i.e., the column values can have colors in #RRGGBBAA format or integer line widths or icon names; "fusiontables#gradient" if the styling of the row is to be based on applying the gradient function on the column value; or "fusiontables#buckets" if the styling is to based on the bucket into which the the column value falls. */
  String kind;

  /** Create new StyleFunction from JSON data */
  StyleFunction.fromJson(Map json) {
    if (json.containsKey("buckets")) {
      buckets = [];
      json["buckets"].forEach((item) {
        buckets.add(new Bucket.fromJson(item));
      });
    }
    if (json.containsKey("columnName")) {
      columnName = json["columnName"];
    }
    if (json.containsKey("gradient")) {
      gradient = new StyleFunctionGradient.fromJson(json["gradient"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for StyleFunction */
  Map toJson() {
    var output = new Map();

    if (buckets != null) {
      output["buckets"] = new List();
      buckets.forEach((item) {
        output["buckets"].add(item.toJson());
      });
    }
    if (columnName != null) {
      output["columnName"] = columnName;
    }
    if (gradient != null) {
      output["gradient"] = gradient.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of StyleFunction */
  String toString() => JSON.stringify(this.toJson());

}

/** Gradient function that interpolates a range of colors based on column value. */
class StyleFunctionGradient {

  /** Array with two or more colors. */
  List<StyleFunctionGradientColors> colors;

  /** Higher-end of the interpolation range: rows with this value will be assigned to colors[n-1]. */
  num max;

  /** Lower-end of the interpolation range: rows with this value will be assigned to colors[0]. */
  num min;

  /** Create new StyleFunctionGradient from JSON data */
  StyleFunctionGradient.fromJson(Map json) {
    if (json.containsKey("colors")) {
      colors = [];
      json["colors"].forEach((item) {
        colors.add(new StyleFunctionGradientColors.fromJson(item));
      });
    }
    if (json.containsKey("max")) {
      max = json["max"];
    }
    if (json.containsKey("min")) {
      min = json["min"];
    }
  }

  /** Create JSON Object for StyleFunctionGradient */
  Map toJson() {
    var output = new Map();

    if (colors != null) {
      output["colors"] = new List();
      colors.forEach((item) {
        output["colors"].add(item.toJson());
      });
    }
    if (max != null) {
      output["max"] = max;
    }
    if (min != null) {
      output["min"] = min;
    }

    return output;
  }

  /** Return String representation of StyleFunctionGradient */
  String toString() => JSON.stringify(this.toJson());

}

class StyleFunctionGradientColors {

  /** Color in #RRGGBB format. */
  String color;

  /** Opacity of the color: 0.0 (transparent) to 1.0 (opaque). */
  num opacity;

  /** Create new StyleFunctionGradientColors from JSON data */
  StyleFunctionGradientColors.fromJson(Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
  }

  /** Create JSON Object for StyleFunctionGradientColors */
  Map toJson() {
    var output = new Map();

    if (color != null) {
      output["color"] = color;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }

    return output;
  }

  /** Return String representation of StyleFunctionGradientColors */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a complete StyleSettings object. The primary key is a combination of the tableId and a styleId. */
class StyleSetting {

  /** Type name: an individual style setting. A StyleSetting contains the style defintions for points, lines, and polygons in a table. Since a table can have any one or all of them, a style definition can have point, line and polygon style definitions. */
  String kind;

  /** Style definition for points in the table. */
  PointStyle markerOptions;

  /** Optional name for the style setting. */
  String name;

  /** Style definition for polygons in the table. */
  PolygonStyle polygonOptions;

  /** Style definition for lines in the table. */
  LineStyle polylineOptions;

  /** Identifier for the style setting (unique only within tables). */
  int styleId;

  /** Identifier for the table. */
  String tableId;

  /** Create new StyleSetting from JSON data */
  StyleSetting.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("markerOptions")) {
      markerOptions = new PointStyle.fromJson(json["markerOptions"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("polygonOptions")) {
      polygonOptions = new PolygonStyle.fromJson(json["polygonOptions"]);
    }
    if (json.containsKey("polylineOptions")) {
      polylineOptions = new LineStyle.fromJson(json["polylineOptions"]);
    }
    if (json.containsKey("styleId")) {
      styleId = json["styleId"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
  }

  /** Create JSON Object for StyleSetting */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (markerOptions != null) {
      output["markerOptions"] = markerOptions.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (polygonOptions != null) {
      output["polygonOptions"] = polygonOptions.toJson();
    }
    if (polylineOptions != null) {
      output["polylineOptions"] = polylineOptions.toJson();
    }
    if (styleId != null) {
      output["styleId"] = styleId;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }

    return output;
  }

  /** Return String representation of StyleSetting */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of styles for a given table. */
class StyleSettingList {

  /** All requested style settings. */
  List<StyleSetting> items;

  /** Type name: in this case, a list of style settings. */
  String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more styles left. */
  String nextPageToken;

  /** Total number of styles for the table. */
  int totalItems;

  /** Create new StyleSettingList from JSON data */
  StyleSettingList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new StyleSetting.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for StyleSettingList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of StyleSettingList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a table. Specifies the name, whether it is exportable, description, attribution, and attribution link. */
class Table {

  /** Optional attribution assigned to the table. */
  String attribution;

  /** Optional link for attribution. */
  String attributionLink;

  /** Optional base table identifier if this table is a view or merged table. */
  List<String> baseTableIds;

  /** Columns in the table. */
  List<Column> columns;

  /** Optional description assigned to the table. */
  String description;

  /** Variable for whether table is exportable. */
  bool isExportable;

  /** Type name: a template for an individual table. */
  String kind;

  /** Name assigned to a table. */
  String name;

  /** Optional sql that encodes the table definition for derived tables. */
  String sql;

  /** Encrypted unique alphanumeric identifier for the table. */
  String tableId;

  /** Create new Table from JSON data */
  Table.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("attributionLink")) {
      attributionLink = json["attributionLink"];
    }
    if (json.containsKey("baseTableIds")) {
      baseTableIds = [];
      json["baseTableIds"].forEach((item) {
        baseTableIds.add(item);
      });
    }
    if (json.containsKey("columns")) {
      columns = [];
      json["columns"].forEach((item) {
        columns.add(new Column.fromJson(item));
      });
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("isExportable")) {
      isExportable = json["isExportable"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sql")) {
      sql = json["sql"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
  }

  /** Create JSON Object for Table */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (attributionLink != null) {
      output["attributionLink"] = attributionLink;
    }
    if (baseTableIds != null) {
      output["baseTableIds"] = new List();
      baseTableIds.forEach((item) {
        output["baseTableIds"].add(item);
      });
    }
    if (columns != null) {
      output["columns"] = new List();
      columns.forEach((item) {
        output["columns"].add(item.toJson());
      });
    }
    if (description != null) {
      output["description"] = description;
    }
    if (isExportable != null) {
      output["isExportable"] = isExportable;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sql != null) {
      output["sql"] = sql;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }

    return output;
  }

  /** Return String representation of Table */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of tables. */
class TableList {

  /** List of all requested tables. */
  List<Table> items;

  /** Type name: a list of all tables. */
  String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more tokens left. */
  String nextPageToken;

  /** Create new TableList from JSON data */
  TableList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Table.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for TableList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of TableList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the contents of InfoWindow templates. */
class Template {

  /** List of columns from which the template is to be automatically constructed. Only one of body or automaticColumns can be specified. */
  List<String> automaticColumnNames;

  /** Body of the template. It contains HTML with {column_name} to insert values from a particular column. The body is sanitized to remove certain tags, e.g., script. Only one of body or automaticColumns can be specified. */
  String body;

  /** Type name: a template for the info window contents. The template can either include an HTML body or a list of columns from which the template is computed automatically. */
  String kind;

  /** Optional name assigned to a template. */
  String name;

  /** Identifier for the table for which the template is defined. */
  String tableId;

  /** Identifier for the template, unique within the context of a particular table. */
  int templateId;

  /** Create new Template from JSON data */
  Template.fromJson(Map json) {
    if (json.containsKey("automaticColumnNames")) {
      automaticColumnNames = [];
      json["automaticColumnNames"].forEach((item) {
        automaticColumnNames.add(item);
      });
    }
    if (json.containsKey("body")) {
      body = json["body"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
    if (json.containsKey("templateId")) {
      templateId = json["templateId"];
    }
  }

  /** Create JSON Object for Template */
  Map toJson() {
    var output = new Map();

    if (automaticColumnNames != null) {
      output["automaticColumnNames"] = new List();
      automaticColumnNames.forEach((item) {
        output["automaticColumnNames"].add(item);
      });
    }
    if (body != null) {
      output["body"] = body;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }
    if (templateId != null) {
      output["templateId"] = templateId;
    }

    return output;
  }

  /** Return String representation of Template */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of templates for a given table. */
class TemplateList {

  /** List of all requested templates. */
  List<Template> items;

  /** Type name: a list of all templates. */
  String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more tokens left. */
  String nextPageToken;

  /** Total number of templates for the table. */
  int totalItems;

  /** Create new TemplateList from JSON data */
  TemplateList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Template.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for TemplateList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of TemplateList */
  String toString() => JSON.stringify(this.toJson());

}


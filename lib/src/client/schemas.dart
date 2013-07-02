part of fusiontables_v1_api_client;

/** Specifies the minimum and maximum values, the color, opacity, icon and weight of a bucket within a StyleSetting. */
class Bucket {

  /** Color of line or the interior of a polygon in #RRGGBB format. */
  core.String color;

  /** Icon name used for a point. */
  core.String icon;

  /** Maximum value in the selected column for a row to be styled according to the bucket color, opacity, icon, or weight. */
  core.num max;

  /** Minimum value in the selected column for a row to be styled according to the bucket color, opacity, icon, or weight. */
  core.num min;

  /** Opacity of the color: 0.0 (transparent) to 1.0 (opaque). */
  core.num opacity;

  /** Width of a line (in pixels). */
  core.int weight;

  /** Create new Bucket from JSON data */
  Bucket.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Specifies the id, name and type of a column in a table. */
class Column {

  /** Optional identifier of the base column. If present, this column is derived from the specified base column. */
  ColumnBaseColumn baseColumn;

  /** Identifier for the column. */
  core.int columnId;

  /** Type name: a template for an individual column. */
  core.String kind;

  /** Required name of the column. */
  core.String name;

  /** Required type of the column. */
  core.String type;

  /** Create new Column from JSON data */
  Column.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Optional identifier of the base column. If present, this column is derived from the specified base column. */
class ColumnBaseColumn {

  /** The id of the column in the base table from which this column is derived. */
  core.int columnId;

  /** Offset to the entry in the list of base tables in the table definition. */
  core.int tableIndex;

  /** Create new ColumnBaseColumn from JSON data */
  ColumnBaseColumn.fromJson(core.Map json) {
    if (json.containsKey("columnId")) {
      columnId = json["columnId"];
    }
    if (json.containsKey("tableIndex")) {
      tableIndex = json["tableIndex"];
    }
  }

  /** Create JSON Object for ColumnBaseColumn */
  core.Map toJson() {
    var output = new core.Map();

    if (columnId != null) {
      output["columnId"] = columnId;
    }
    if (tableIndex != null) {
      output["tableIndex"] = tableIndex;
    }

    return output;
  }

  /** Return String representation of ColumnBaseColumn */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of columns in a table. */
class ColumnList {

  /** List of all requested columns. */
  core.List<Column> items;

  /** Type name: a list of all tables. */
  core.String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more tokens left. */
  core.String nextPageToken;

  /** Total number of columns for the table. */
  core.int totalItems;

  /** Create new ColumnList from JSON data */
  ColumnList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a Geometry object. */
class Geometry {

  /** Type: A collection of geometries. */
  core.String type;

  /** Create new Geometry from JSON data */
  Geometry.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Geometry */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Geometry */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents an import request. */
class Import {

  /** Type name: a template for an import request. */
  core.String kind;

  /** The number of rows received from the import request. */
  core.int numRowsReceived;

  /** Create new Import from JSON data */
  Import.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("numRowsReceived")) {
      if(json["numRowsReceived"] is core.String){
        numRowsReceived = core.int.parse(json["numRowsReceived"]);
      }else{
        numRowsReceived = json["numRowsReceived"];
      }
    }
  }

  /** Create JSON Object for Import */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (numRowsReceived != null) {
      output["numRowsReceived"] = numRowsReceived;
    }

    return output;
  }

  /** Return String representation of Import */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a line geometry. */
class Line {

  /** Type: A line geometry. */
  core.String type;

  /** Create new Line from JSON data */
  Line.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Line */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Line */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a LineStyle within a StyleSetting */
class LineStyle {

  /** Color of the line in #RRGGBB format. */
  core.String strokeColor;

  /** Column-value, gradient or buckets styler that is used to determine the line color and opacity. */
  StyleFunction strokeColorStyler;

  /** Opacity of the line : 0.0 (transparent) to 1.0 (opaque). */
  core.num strokeOpacity;

  /** Width of the line in pixels. */
  core.int strokeWeight;

  /** Column-value or bucket styler that is used to determine the width of the line. */
  StyleFunction strokeWeightStyler;

  /** Create new LineStyle from JSON data */
  LineStyle.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a point object. */
class Point {

  /** The coordinates that define the point. */
  core.List<core.num> coordinates;

  /** Point: A point geometry. */
  core.String type;

  /** Create new Point from JSON data */
  Point.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a PointStyle within a StyleSetting */
class PointStyle {

  /** Name of the icon. Use values defined in http://www.google.com/fusiontables/DataSource?dsrcid=308519 */
  core.String iconName;

  /** Column or a bucket value from which the icon name is to be determined. */
  StyleFunction iconStyler;

  /** Create new PointStyle from JSON data */
  PointStyle.fromJson(core.Map json) {
    if (json.containsKey("iconName")) {
      iconName = json["iconName"];
    }
    if (json.containsKey("iconStyler")) {
      iconStyler = new StyleFunction.fromJson(json["iconStyler"]);
    }
  }

  /** Create JSON Object for PointStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (iconName != null) {
      output["iconName"] = iconName;
    }
    if (iconStyler != null) {
      output["iconStyler"] = iconStyler.toJson();
    }

    return output;
  }

  /** Return String representation of PointStyle */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a polygon object. */
class Polygon {

  /** Type: A polygon geometry. */
  core.String type;

  /** Create new Polygon from JSON data */
  Polygon.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Polygon */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Polygon */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a PolygonStyle within a StyleSetting */
class PolygonStyle {

  /** Color of the interior of the polygon in #RRGGBB format. */
  core.String fillColor;

  /** Column-value, gradient, or bucket styler that is used to determine the interior color and opacity of the polygon. */
  StyleFunction fillColorStyler;

  /** Opacity of the interior of the polygon: 0.0 (transparent) to 1.0 (opaque). */
  core.num fillOpacity;

  /** Color of the polygon border in #RRGGBB format. */
  core.String strokeColor;

  /** Column-value, gradient or buckets styler that is used to determine the border color and opacity. */
  StyleFunction strokeColorStyler;

  /** Opacity of the polygon border: 0.0 (transparent) to 1.0 (opaque). */
  core.num strokeOpacity;

  /** Width of the polyon border in pixels. */
  core.int strokeWeight;

  /** Column-value or bucket styler that is used to determine the width of the polygon border. */
  StyleFunction strokeWeightStyler;

  /** Create new PolygonStyle from JSON data */
  PolygonStyle.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a response to an sql statement. */
class Sqlresponse {

  /** Columns in the table. */
  core.List<core.String> columns;

  /** Type name: a template for an individual table. */
  core.String kind;

  /** Create new Sqlresponse from JSON data */
  Sqlresponse.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (columns != null) {
      output["columns"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a StyleFunction within a StyleSetting */
class StyleFunction {

  /** Bucket function that assigns a style based on the range a column value falls into. */
  core.List<Bucket> buckets;

  /** Name of the column whose value is used in the style. */
  core.String columnName;

  /** Gradient function that interpolates a range of colors based on column value. */
  StyleFunctionGradient gradient;

  /** Stylers can be one of three kinds: "fusiontables#fromColumn" if the column value is to be used as is, i.e., the column values can have colors in #RRGGBBAA format or integer line widths or icon names; "fusiontables#gradient" if the styling of the row is to be based on applying the gradient function on the column value; or "fusiontables#buckets" if the styling is to based on the bucket into which the the column value falls. */
  core.String kind;

  /** Create new StyleFunction from JSON data */
  StyleFunction.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (buckets != null) {
      output["buckets"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Gradient function that interpolates a range of colors based on column value. */
class StyleFunctionGradient {

  /** Array with two or more colors. */
  core.List<StyleFunctionGradientColors> colors;

  /** Higher-end of the interpolation range: rows with this value will be assigned to colors[n-1]. */
  core.num max;

  /** Lower-end of the interpolation range: rows with this value will be assigned to colors[0]. */
  core.num min;

  /** Create new StyleFunctionGradient from JSON data */
  StyleFunctionGradient.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (colors != null) {
      output["colors"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class StyleFunctionGradientColors {

  /** Color in #RRGGBB format. */
  core.String color;

  /** Opacity of the color: 0.0 (transparent) to 1.0 (opaque). */
  core.num opacity;

  /** Create new StyleFunctionGradientColors from JSON data */
  StyleFunctionGradientColors.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("opacity")) {
      opacity = json["opacity"];
    }
  }

  /** Create JSON Object for StyleFunctionGradientColors */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (opacity != null) {
      output["opacity"] = opacity;
    }

    return output;
  }

  /** Return String representation of StyleFunctionGradientColors */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a complete StyleSettings object. The primary key is a combination of the tableId and a styleId. */
class StyleSetting {

  /** Type name: an individual style setting. A StyleSetting contains the style defintions for points, lines, and polygons in a table. Since a table can have any one or all of them, a style definition can have point, line and polygon style definitions. */
  core.String kind;

  /** Style definition for points in the table. */
  PointStyle markerOptions;

  /** Optional name for the style setting. */
  core.String name;

  /** Style definition for polygons in the table. */
  PolygonStyle polygonOptions;

  /** Style definition for lines in the table. */
  LineStyle polylineOptions;

  /** Identifier for the style setting (unique only within tables). */
  core.int styleId;

  /** Identifier for the table. */
  core.String tableId;

  /** Create new StyleSetting from JSON data */
  StyleSetting.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of styles for a given table. */
class StyleSettingList {

  /** All requested style settings. */
  core.List<StyleSetting> items;

  /** Type name: in this case, a list of style settings. */
  core.String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more styles left. */
  core.String nextPageToken;

  /** Total number of styles for the table. */
  core.int totalItems;

  /** Create new StyleSettingList from JSON data */
  StyleSettingList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a table. Specifies the name, whether it is exportable, description, attribution, and attribution link. */
class Table {

  /** Optional attribution assigned to the table. */
  core.String attribution;

  /** Optional link for attribution. */
  core.String attributionLink;

  /** Optional base table identifier if this table is a view or merged table. */
  core.List<core.String> baseTableIds;

  /** Columns in the table. */
  core.List<Column> columns;

  /** Optional description assigned to the table. */
  core.String description;

  /** Variable for whether table is exportable. */
  core.bool isExportable;

  /** Type name: a template for an individual table. */
  core.String kind;

  /** Name assigned to a table. */
  core.String name;

  /** Optional sql that encodes the table definition for derived tables. */
  core.String sql;

  /** Encrypted unique alphanumeric identifier for the table. */
  core.String tableId;

  /** Create new Table from JSON data */
  Table.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (attributionLink != null) {
      output["attributionLink"] = attributionLink;
    }
    if (baseTableIds != null) {
      output["baseTableIds"] = new core.List();
      baseTableIds.forEach((item) {
        output["baseTableIds"].add(item);
      });
    }
    if (columns != null) {
      output["columns"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of tables. */
class TableList {

  /** List of all requested tables. */
  core.List<Table> items;

  /** Type name: a list of all tables. */
  core.String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more tokens left. */
  core.String nextPageToken;

  /** Create new TableList from JSON data */
  TableList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the contents of InfoWindow templates. */
class Template {

  /** List of columns from which the template is to be automatically constructed. Only one of body or automaticColumns can be specified. */
  core.List<core.String> automaticColumnNames;

  /** Body of the template. It contains HTML with {column_name} to insert values from a particular column. The body is sanitized to remove certain tags, e.g., script. Only one of body or automaticColumns can be specified. */
  core.String body;

  /** Type name: a template for the info window contents. The template can either include an HTML body or a list of columns from which the template is computed automatically. */
  core.String kind;

  /** Optional name assigned to a template. */
  core.String name;

  /** Identifier for the table for which the template is defined. */
  core.String tableId;

  /** Identifier for the template, unique within the context of a particular table. */
  core.int templateId;

  /** Create new Template from JSON data */
  Template.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (automaticColumnNames != null) {
      output["automaticColumnNames"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a list of templates for a given table. */
class TemplateList {

  /** List of all requested templates. */
  core.List<Template> items;

  /** Type name: a list of all templates. */
  core.String kind;

  /** Token used to access the next page of this result. No token is displayed if there are no more tokens left. */
  core.String nextPageToken;

  /** Total number of templates for the table. */
  core.int totalItems;

  /** Create new TemplateList from JSON data */
  TemplateList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}


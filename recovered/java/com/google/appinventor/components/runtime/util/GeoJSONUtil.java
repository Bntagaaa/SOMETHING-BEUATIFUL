package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.text.TextUtils;
import android.util.Log;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.LineString;
import com.google.appinventor.components.runtime.Marker;
import com.google.appinventor.components.runtime.Polygon;
import com.google.appinventor.components.runtime.util.MapFactory;
import com.google.common.annotations.VisibleForTesting;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.osmdroid.util.GeoPoint;

/* loaded from: classes.dex */
public final class GeoJSONUtil {
    private static final int ERROR_CODE_MALFORMED_GEOJSON = -3;
    private static final String ERROR_MALFORMED_GEOJSON = "Malformed GeoJSON response. Expected FeatureCollection as root element.";
    private static final String ERROR_UNKNOWN_TYPE = "Unrecognized/invalid type in JSON object";
    private static final String GEOJSON_COORDINATES = "coordinates";
    private static final String GEOJSON_FEATURE = "Feature";
    private static final String GEOJSON_FEATURECOLLECTION = "FeatureCollection";
    private static final String GEOJSON_FEATURES = "features";
    private static final String GEOJSON_GEOMETRY = "geometry";
    private static final String GEOJSON_GEOMETRYCOLLECTION = "GeometryCollection";
    private static final String GEOJSON_PROPERTIES = "properties";
    private static final String GEOJSON_TYPE = "type";
    private static final int KEY = 1;
    private static final int LATITUDE = 2;
    private static final int LONGITUDE = 1;
    private static final String PROPERTY_ANCHOR_HORIZONTAL = "anchorHorizontal";
    private static final String PROPERTY_ANCHOR_VERTICAL = "anchorVertical";
    private static final String PROPERTY_DESCRIPTION = "description";
    private static final String PROPERTY_DRAGGABLE = "draggable";
    private static final String PROPERTY_FILL = "fill";
    private static final String PROPERTY_FILL_OPACITY = "fill-opacity";
    private static final String PROPERTY_HEIGHT = "height";
    private static final String PROPERTY_IMAGE = "image";
    private static final String PROPERTY_INFOBOX = "infobox";
    private static final String PROPERTY_STROKE = "stroke";
    private static final String PROPERTY_STROKE_OPACITY = "stroke-opacity";
    private static final String PROPERTY_STROKE_WIDTH = "stroke-width";
    private static final String PROPERTY_TITLE = "title";
    private static final String PROPERTY_VISIBLE = "visible";
    private static final String PROPERTY_WIDTH = "width";
    private static final Map<String, PropertyApplication> SUPPORTED_PROPERTIES;
    private static final int VALUE = 2;
    private static final Map<String, Integer> colors;

    public interface PropertyApplication {
        void apply(MapFactory.MapFeature mapFeature, Object obj);
    }

    static {
        HashMap map = new HashMap();
        colors = map;
        map.put("black", -16777216);
        map.put("blue", Integer.valueOf(Component.COLOR_BLUE));
        map.put("cyan", Integer.valueOf(Component.COLOR_CYAN));
        map.put("darkgray", Integer.valueOf(Component.COLOR_DKGRAY));
        map.put("gray", Integer.valueOf(Component.COLOR_GRAY));
        map.put("green", Integer.valueOf(Component.COLOR_GREEN));
        map.put("lightgray", Integer.valueOf(Component.COLOR_LTGRAY));
        map.put("magenta", Integer.valueOf(Component.COLOR_MAGENTA));
        map.put("orange", Integer.valueOf(Component.COLOR_ORANGE));
        map.put("pink", Integer.valueOf(Component.COLOR_PINK));
        map.put("red", -65536);
        map.put("white", -1);
        map.put("yellow", -256);
        HashMap map2 = new HashMap();
        SUPPORTED_PROPERTIES = map2;
        map2.put(PROPERTY_ANCHOR_HORIZONTAL.toLowerCase(), new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.1
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.MapMarker) {
                    ((MapFactory.MapMarker) mapFeature).AnchorHorizontal(GeoJSONUtil.parseIntegerOrString(obj));
                }
            }
        });
        map2.put(PROPERTY_ANCHOR_VERTICAL.toLowerCase(), new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.2
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.MapMarker) {
                    ((MapFactory.MapMarker) mapFeature).AnchorHorizontal();
                }
            }
        });
        map2.put(PROPERTY_DESCRIPTION, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.3
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                mapFeature.Description(obj.toString());
            }
        });
        map2.put(PROPERTY_DRAGGABLE, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.4
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                mapFeature.Draggable(GeoJSONUtil.parseBooleanOrString(obj));
            }
        });
        map2.put(PROPERTY_FILL, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.5
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.HasFill) {
                    ((MapFactory.HasFill) mapFeature).FillColor(obj instanceof Number ? ((Number) obj).intValue() : GeoJSONUtil.parseColor(obj.toString()));
                }
            }
        });
        map2.put(PROPERTY_FILL_OPACITY, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.6
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.HasFill) {
                    ((MapFactory.HasFill) mapFeature).FillOpacity(GeoJSONUtil.parseFloatOrString(obj));
                }
            }
        });
        map2.put(PROPERTY_HEIGHT, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.7
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.MapMarker) {
                    ((MapFactory.MapMarker) mapFeature).Height(GeoJSONUtil.parseIntegerOrString(obj));
                }
            }
        });
        map2.put(PROPERTY_IMAGE, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.8
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.MapMarker) {
                    ((MapFactory.MapMarker) mapFeature).ImageAsset(obj.toString());
                }
            }
        });
        map2.put(PROPERTY_INFOBOX, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.9
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                mapFeature.EnableInfobox(GeoJSONUtil.parseBooleanOrString(obj));
            }
        });
        map2.put(PROPERTY_STROKE, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.10
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.HasStroke) {
                    ((MapFactory.HasStroke) mapFeature).StrokeColor(obj instanceof Number ? ((Number) obj).intValue() : GeoJSONUtil.parseColor(obj.toString()));
                }
            }
        });
        map2.put(PROPERTY_STROKE_OPACITY, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.11
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.HasStroke) {
                    ((MapFactory.HasStroke) mapFeature).StrokeOpacity(GeoJSONUtil.parseFloatOrString(obj));
                }
            }
        });
        map2.put(PROPERTY_STROKE_WIDTH, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.12
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.HasStroke) {
                    ((MapFactory.HasStroke) mapFeature).StrokeWidth(GeoJSONUtil.parseIntegerOrString(obj));
                }
            }
        });
        map2.put(PROPERTY_TITLE, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.13
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                mapFeature.Title(obj.toString());
            }
        });
        map2.put(PROPERTY_WIDTH, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.14
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                if (mapFeature instanceof MapFactory.MapMarker) {
                    ((MapFactory.MapMarker) mapFeature).Width(GeoJSONUtil.parseIntegerOrString(obj));
                }
            }
        });
        map2.put(PROPERTY_VISIBLE, new PropertyApplication() { // from class: com.google.appinventor.components.runtime.util.GeoJSONUtil.15
            @Override // com.google.appinventor.components.runtime.util.GeoJSONUtil.PropertyApplication
            public void apply(MapFactory.MapFeature mapFeature, Object obj) {
                mapFeature.Visible(GeoJSONUtil.parseBooleanOrString(obj));
            }
        });
    }

    private GeoJSONUtil() {
    }

    @VisibleForTesting
    public static int parseColor(String str) {
        String lowerCase = str.toLowerCase();
        Integer num = colors.get(lowerCase);
        if (num != null) {
            return num.intValue();
        }
        if (lowerCase.startsWith("#")) {
            return parseColorHex(lowerCase.substring(1));
        }
        if (lowerCase.startsWith("&h")) {
            return parseColorHex(lowerCase.substring(2));
        }
        return -65536;
    }

    @VisibleForTesting
    public static int parseColorHex(String str) {
        int iCharToHex = -16777216;
        int i = 0;
        if (str.length() == 3) {
            while (i < str.length()) {
                int iCharToHex2 = charToHex(str.charAt(i));
                iCharToHex |= (iCharToHex2 | (iCharToHex2 << 4)) << ((2 - i) * 8);
                i++;
            }
            return iCharToHex;
        }
        if (str.length() == 6) {
            while (i < 3) {
                int i2 = i * 2;
                iCharToHex |= (charToHex(str.charAt(i2 + 1)) | (charToHex(str.charAt(i2)) << 4)) << ((2 - i) * 8);
                i++;
            }
            return iCharToHex;
        }
        if (str.length() != 8) {
            throw new IllegalArgumentException();
        }
        int iCharToHex3 = 0;
        while (i < 4) {
            int i3 = i * 2;
            iCharToHex3 |= (charToHex(str.charAt(i3 + 1)) | (charToHex(str.charAt(i3)) << 4)) << ((3 - i) * 8);
            i++;
        }
        return iCharToHex3;
    }

    @VisibleForTesting
    public static int charToHex(char c) {
        if ('0' <= c && c <= '9') {
            return c - '0';
        }
        if ('a' <= c && c <= 'f') {
            return c - 'W';
        }
        if ('A' > c || c > 'F') {
            throw new IllegalArgumentException("Invalid hex character. Expected [0-9A-Fa-f].");
        }
        return c - '7';
    }

    public static MapFactory.MapFeature processGeoJSONFeature(String str, MapFactory.MapFeatureContainer mapFeatureContainer, YailList yailList) {
        Iterator it = ((LList) yailList.getCdr()).iterator();
        String str2 = null;
        YailList yailList2 = null;
        YailList yailList3 = null;
        while (it.hasNext()) {
            YailList yailList4 = (YailList) it.next();
            String string = yailList4.getString(0);
            Object object = yailList4.getObject(1);
            if (GEOJSON_TYPE.equals(string)) {
                str2 = (String) object;
            } else if (GEOJSON_GEOMETRY.equals(string)) {
                yailList2 = (YailList) object;
            } else if (GEOJSON_PROPERTIES.equals(string)) {
                yailList3 = (YailList) object;
            } else {
                Log.w(str, "Unsupported field \"" + string + "\" in JSON format");
            }
        }
        if (!GEOJSON_FEATURE.equals(str2)) {
            throw new IllegalArgumentException(a.A("Unknown type \"", str2, "\""));
        }
        if (yailList2 == null) {
            return null;
        }
        MapFactory.MapFeature mapFeatureProcessGeometry = processGeometry(str, mapFeatureContainer, yailList2);
        if (yailList3 != null) {
            processProperties(str, mapFeatureProcessGeometry, yailList3);
        }
        return mapFeatureProcessGeometry;
    }

    private static MapFactory.MapFeature processGeometry(String str, MapFactory.MapFeatureContainer mapFeatureContainer, YailList yailList) {
        Iterator it = ((LList) yailList.getCdr()).iterator();
        YailList yailList2 = null;
        String str2 = null;
        while (it.hasNext()) {
            YailList yailList3 = (YailList) it.next();
            String string = yailList3.getString(0);
            Object object = yailList3.getObject(1);
            if (GEOJSON_TYPE.equals(string)) {
                str2 = (String) object;
            } else if (GEOJSON_COORDINATES.equals(string)) {
                yailList2 = (YailList) object;
            } else {
                Log.w(str, "Unsupported field \"" + string + "\" in JSON format");
            }
        }
        if (yailList2 == null) {
            throw new IllegalArgumentException("No coordinates found in GeoJSON Feature");
        }
        return processCoordinates(mapFeatureContainer, str2, yailList2);
    }

    private static MapFactory.MapFeature processCoordinates(MapFactory.MapFeatureContainer mapFeatureContainer, String str, YailList yailList) {
        if (MapFactory.MapFeatureType.TYPE_POINT.equals(str)) {
            return markerFromGeoJSON(mapFeatureContainer, yailList);
        }
        if (MapFactory.MapFeatureType.TYPE_LINESTRING.equals(str)) {
            return lineStringFromGeoJSON(mapFeatureContainer, yailList);
        }
        if (MapFactory.MapFeatureType.TYPE_POLYGON.equals(str)) {
            return polygonFromGeoJSON(mapFeatureContainer, yailList);
        }
        if (MapFactory.MapFeatureType.TYPE_MULTIPOLYGON.equals(str)) {
            return multipolygonFromGeoJSON(mapFeatureContainer, yailList);
        }
        throw new IllegalArgumentException();
    }

    private static MapFactory.MapMarker markerFromGeoJSON(MapFactory.MapFeatureContainer mapFeatureContainer, YailList yailList) {
        if (yailList.length() != 3) {
            throw new IllegalArgumentException("Invalid coordinate supplied in GeoJSON");
        }
        Marker marker = new Marker(mapFeatureContainer);
        marker.Latitude(((Number) yailList.get(2)).doubleValue());
        marker.Longitude(((Number) yailList.get(1)).doubleValue());
        return marker;
    }

    private static MapFactory.MapLineString lineStringFromGeoJSON(MapFactory.MapFeatureContainer mapFeatureContainer, YailList yailList) {
        if (yailList.size() < 2) {
            throw new IllegalArgumentException("Too few coordinates supplied in GeoJSON");
        }
        LineString lineString = new LineString(mapFeatureContainer);
        lineString.Points(swapCoordinates(yailList));
        return lineString;
    }

    private static MapFactory.MapPolygon polygonFromGeoJSON(MapFactory.MapFeatureContainer mapFeatureContainer, YailList yailList) {
        Polygon polygon = new Polygon(mapFeatureContainer);
        Iterator it = yailList.iterator();
        it.next();
        polygon.Points(swapCoordinates((YailList) it.next()));
        if (it.hasNext()) {
            polygon.HolePoints(YailList.makeList((List) swapNestedCoordinates((LList) ((Pair) yailList.getCdr()).getCdr())));
        }
        polygon.Initialize();
        return polygon;
    }

    private static MapFactory.MapPolygon multipolygonFromGeoJSON(MapFactory.MapFeatureContainer mapFeatureContainer, YailList yailList) {
        Polygon polygon = new Polygon(mapFeatureContainer);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = yailList.iterator();
        it.next();
        while (it.hasNext()) {
            YailList yailList2 = (YailList) it.next();
            arrayList.add(swapCoordinates((YailList) yailList2.get(1)));
            arrayList2.add(YailList.makeList((List) swapNestedCoordinates((LList) ((Pair) yailList2.getCdr()).getCdr())));
        }
        polygon.Points(YailList.makeList((List) arrayList));
        polygon.HolePoints(YailList.makeList((List) arrayList2));
        polygon.Initialize();
        return polygon;
    }

    private static void processProperties(String str, MapFactory.MapFeature mapFeature, YailList yailList) {
        Iterator it = yailList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof YailList) {
                YailList yailList2 = (YailList) next;
                String string = yailList2.get(1).toString();
                PropertyApplication propertyApplication = SUPPORTED_PROPERTIES.get(string.toLowerCase());
                if (propertyApplication != null) {
                    propertyApplication.apply(mapFeature, yailList2.get(2));
                } else {
                    Log.i(str, "Ignoring GeoJSON property \"" + string + "\"");
                }
            }
        }
    }

    @VisibleForTesting
    public static boolean parseBooleanOrString(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            return ("false".equalsIgnoreCase(str) || str.length() == 0) ? false : true;
        }
        if (obj instanceof FString) {
            return parseBooleanOrString(obj.toString());
        }
        throw new IllegalArgumentException();
    }

    @VisibleForTesting
    public static int parseIntegerOrString(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            return Integer.parseInt((String) obj);
        }
        if (obj instanceof FString) {
            return Integer.parseInt(obj.toString());
        }
        throw new IllegalArgumentException();
    }

    @VisibleForTesting
    public static float parseFloatOrString(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        if (obj instanceof String) {
            return Float.parseFloat((String) obj);
        }
        if (obj instanceof FString) {
            return Float.parseFloat(obj.toString());
        }
        throw new IllegalArgumentException();
    }

    public static List<YailList> getGeoJSONFeatures(String str, String str2) throws JSONException {
        JSONArray jSONArray = new JSONObject(stripBOM(str2)).getJSONArray(GEOJSON_FEATURES);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jsonObjectToYail(str, jSONArray.getJSONObject(i)));
        }
        return arrayList;
    }

    public static String getGeoJSONType(String str, String str2) throws JSONException {
        return new JSONObject(stripBOM(str)).optString(str2);
    }

    private static YailList jsonObjectToYail(String str, JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if ((obj instanceof Boolean) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String)) {
                arrayList.add(YailList.makeList(new Object[]{next, obj}));
            } else if (obj instanceof JSONArray) {
                arrayList.add(YailList.makeList(new Object[]{next, jsonArrayToYail(str, (JSONArray) obj)}));
            } else if (obj instanceof JSONObject) {
                arrayList.add(YailList.makeList(new Object[]{next, jsonObjectToYail(str, (JSONObject) obj)}));
            } else if (!JSONObject.NULL.equals(obj)) {
                Log.wtf(str, "Unrecognized/invalid type in JSON object: " + obj.getClass());
                throw new IllegalArgumentException(ERROR_UNKNOWN_TYPE);
            }
        }
        return YailList.makeList((List) arrayList);
    }

    private static YailList jsonArrayToYail(String str, JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if ((obj instanceof Boolean) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String)) {
                arrayList.add(obj);
            } else if (obj instanceof JSONArray) {
                arrayList.add(jsonArrayToYail(str, (JSONArray) obj));
            } else if (obj instanceof JSONObject) {
                arrayList.add(jsonObjectToYail(str, (JSONObject) obj));
            } else if (!JSONObject.NULL.equals(obj)) {
                Log.wtf(str, "Unrecognized/invalid type in JSON object: " + obj.getClass());
                throw new IllegalArgumentException(ERROR_UNKNOWN_TYPE);
            }
        }
        return YailList.makeList((List) arrayList);
    }

    private static String stripBOM(String str) {
        return str.charAt(0) == 65279 ? str.substring(1) : str;
    }

    public static final class FeatureWriter implements MapFactory.MapFeatureVisitor<Void> {
        private final PrintStream out;

        public /* synthetic */ FeatureWriter(PrintStream printStream, int i) {
            this(printStream);
        }

        private FeatureWriter(PrintStream printStream) {
            this.out = printStream;
        }

        private void writeType(String str) {
            this.out.print("\"type\":\"");
            this.out.print(str);
            this.out.print("\"");
        }

        private void writeProperty(String str, Object obj) {
            try {
                String jsonRepresentation = JsonUtil.getJsonRepresentation(obj);
                this.out.print(",\"");
                this.out.print(str);
                this.out.print("\":");
                this.out.print(jsonRepresentation);
            } catch (JSONException e) {
                Log.w("GeoJSONUtil", "Unable to serialize the value of \"" + str + "\" as JSON", e);
            }
        }

        private void writeProperty(String str, String str2) {
            if (str2 == null || TextUtils.isEmpty(str2)) {
                return;
            }
            writeProperty(str, (Object) str2);
        }

        private void writeColorProperty(String str, int i) {
            this.out.print(",\"");
            this.out.print(str);
            this.out.print("\":\"&H");
            String hexString = Integer.toHexString(i);
            for (int i2 = 8; i2 > hexString.length(); i2--) {
                this.out.print("0");
            }
            this.out.print(hexString);
            this.out.print("\"");
        }

        private void writePointGeometry(GeoPoint geoPoint) {
            this.out.print("\"geometry\":{\"type\":\"Point\",\"coordinates\":[");
            this.out.print(geoPoint.getLongitude());
            this.out.print(",");
            this.out.print(geoPoint.getLatitude());
            if (hasAltitude(geoPoint)) {
                this.out.print(",");
                this.out.print(geoPoint.getAltitude());
            }
            this.out.print("]}");
        }

        private void writePropertiesHeader(String str) {
            this.out.print(",\"properties\":{\"$Type\":\"" + str + "\"");
        }

        private void writeProperties(MapFactory.MapFeature mapFeature) {
            writeProperty(GeoJSONUtil.PROPERTY_DESCRIPTION, mapFeature.Description());
            writeProperty(GeoJSONUtil.PROPERTY_DRAGGABLE, Boolean.valueOf(mapFeature.Draggable()));
            writeProperty(GeoJSONUtil.PROPERTY_INFOBOX, Boolean.valueOf(mapFeature.EnableInfobox()));
            writeProperty(GeoJSONUtil.PROPERTY_TITLE, mapFeature.Title());
            writeProperty(GeoJSONUtil.PROPERTY_VISIBLE, Boolean.valueOf(mapFeature.Visible()));
        }

        private void writeProperties(MapFactory.HasStroke hasStroke) {
            writeColorProperty(GeoJSONUtil.PROPERTY_STROKE, hasStroke.StrokeColor());
            writeProperty(GeoJSONUtil.PROPERTY_STROKE_OPACITY, Float.valueOf(hasStroke.StrokeOpacity()));
            writeProperty(GeoJSONUtil.PROPERTY_STROKE_WIDTH, Integer.valueOf(hasStroke.StrokeWidth()));
        }

        private void writeProperties(MapFactory.HasFill hasFill) {
            writeColorProperty(GeoJSONUtil.PROPERTY_FILL, hasFill.FillColor());
            writeProperty(GeoJSONUtil.PROPERTY_FILL_OPACITY, Float.valueOf(hasFill.FillOpacity()));
        }

        private void writePoints(List<GeoPoint> list) {
            boolean z = true;
            for (GeoPoint geoPoint : list) {
                if (!z) {
                    this.out.print(',');
                }
                this.out.print("[");
                this.out.print(geoPoint.getLongitude());
                this.out.print(",");
                this.out.print(geoPoint.getLatitude());
                if (hasAltitude(geoPoint)) {
                    this.out.print(",");
                    this.out.print(geoPoint.getAltitude());
                }
                this.out.print("]");
                z = false;
            }
        }

        private void writeLineGeometry(MapFactory.MapLineString mapLineString) {
            this.out.print("\"geometry\":{\"type\":\"LineString\",\"coordinates\":[");
            writePoints(mapLineString.getPoints());
            this.out.print("]}");
        }

        private void writeMultipolygonGeometryNoHoles(MapFactory.MapPolygon mapPolygon) {
            this.out.print("\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":[");
            Iterator<List<GeoPoint>> it = mapPolygon.getPoints().iterator();
            Iterator<List<List<GeoPoint>>> it2 = mapPolygon.getHolePoints().iterator();
            boolean z = true;
            while (it.hasNext()) {
                if (!z) {
                    this.out.print(",");
                }
                this.out.print("[");
                writePoints(it.next());
                if (it2.hasNext()) {
                    for (List<GeoPoint> list : it2.next()) {
                        this.out.print(",");
                        writePoints(list);
                    }
                }
                this.out.print("]");
                z = false;
            }
            this.out.print("]}");
        }

        private void writePolygonGeometryNoHoles(MapFactory.MapPolygon mapPolygon) {
            this.out.print("\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[");
            writePoints(mapPolygon.getPoints().get(0));
            if (!mapPolygon.getHolePoints().isEmpty()) {
                for (List<GeoPoint> list : mapPolygon.getHolePoints().get(0)) {
                    this.out.print(",");
                    writePoints(list);
                }
            }
            this.out.print("]}");
        }

        private void writePolygonGeometry(MapFactory.MapPolygon mapPolygon) {
            if (mapPolygon.getPoints().size() > 1) {
                writeMultipolygonGeometryNoHoles(mapPolygon);
            } else {
                writePolygonGeometryNoHoles(mapPolygon);
            }
        }

        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Void visit(MapFactory.MapMarker mapMarker, Object... objArr) {
            this.out.print("{");
            writeType(GeoJSONUtil.GEOJSON_FEATURE);
            this.out.print(',');
            writePointGeometry(mapMarker.getCentroid());
            writePropertiesHeader(mapMarker.getClass().getName());
            writeProperties((MapFactory.MapFeature) mapMarker);
            writeProperties((MapFactory.HasStroke) mapMarker);
            writeProperties((MapFactory.HasFill) mapMarker);
            writeProperty(GeoJSONUtil.PROPERTY_ANCHOR_HORIZONTAL, Integer.valueOf(mapMarker.AnchorHorizontal()));
            writeProperty(GeoJSONUtil.PROPERTY_ANCHOR_VERTICAL, Integer.valueOf(mapMarker.AnchorVertical()));
            writeProperty(GeoJSONUtil.PROPERTY_HEIGHT, Integer.valueOf(mapMarker.Height()));
            writeProperty(GeoJSONUtil.PROPERTY_IMAGE, mapMarker.ImageAsset());
            writeProperty(GeoJSONUtil.PROPERTY_WIDTH, Integer.valueOf(mapMarker.Width()));
            this.out.print("}}");
            return null;
        }

        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Void visit(MapFactory.MapLineString mapLineString, Object... objArr) {
            this.out.print("{");
            writeType(GeoJSONUtil.GEOJSON_FEATURE);
            this.out.print(',');
            writeLineGeometry(mapLineString);
            writePropertiesHeader(mapLineString.getClass().getName());
            writeProperties((MapFactory.MapFeature) mapLineString);
            writeProperties((MapFactory.HasStroke) mapLineString);
            this.out.print("}}");
            return null;
        }

        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Void visit(MapFactory.MapPolygon mapPolygon, Object... objArr) {
            this.out.print("{");
            writeType(GeoJSONUtil.GEOJSON_FEATURE);
            this.out.print(',');
            writePolygonGeometry(mapPolygon);
            writePropertiesHeader(mapPolygon.getClass().getName());
            writeProperties((MapFactory.MapFeature) mapPolygon);
            writeProperties((MapFactory.HasStroke) mapPolygon);
            writeProperties((MapFactory.HasFill) mapPolygon);
            this.out.print("}}");
            return null;
        }

        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Void visit(MapFactory.MapCircle mapCircle, Object... objArr) {
            this.out.print("{");
            writeType(GeoJSONUtil.GEOJSON_FEATURE);
            this.out.print(',');
            writePointGeometry(mapCircle.getCentroid());
            writePropertiesHeader(mapCircle.getClass().getName());
            writeProperties((MapFactory.MapFeature) mapCircle);
            writeProperties((MapFactory.HasStroke) mapCircle);
            writeProperties((MapFactory.HasFill) mapCircle);
            this.out.print("}}");
            return null;
        }

        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Void visit(MapFactory.MapRectangle mapRectangle, Object... objArr) {
            this.out.print("{");
            writeType(GeoJSONUtil.GEOJSON_FEATURE);
            this.out.print(",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[");
            this.out.print("[" + mapRectangle.WestLongitude() + "," + mapRectangle.NorthLatitude() + "],");
            this.out.print("[" + mapRectangle.WestLongitude() + "," + mapRectangle.SouthLatitude() + "],");
            this.out.print("[" + mapRectangle.EastLongitude() + "," + mapRectangle.SouthLatitude() + "],");
            this.out.print("[" + mapRectangle.EastLongitude() + "," + mapRectangle.NorthLatitude() + "],");
            this.out.print("[" + mapRectangle.WestLongitude() + "," + mapRectangle.NorthLatitude() + "]]}");
            writePropertiesHeader(mapRectangle.getClass().getName());
            writeProperties((MapFactory.MapFeature) mapRectangle);
            writeProperties((MapFactory.HasStroke) mapRectangle);
            writeProperties((MapFactory.HasFill) mapRectangle);
            writeProperty("NorthLatitude", Double.valueOf(mapRectangle.NorthLatitude()));
            writeProperty("WestLongitude", Double.valueOf(mapRectangle.WestLongitude()));
            writeProperty("SouthLatitude", Double.valueOf(mapRectangle.SouthLatitude()));
            writeProperty("EastLongitude", Double.valueOf(mapRectangle.EastLongitude()));
            this.out.print("}}");
            return null;
        }

        private static boolean hasAltitude(GeoPoint geoPoint) {
            return Double.compare(0.0d, geoPoint.getAltitude()) != 0;
        }
    }

    public static void writeFeaturesAsGeoJSON(List<MapFactory.MapFeature> list, String str) throws IOException {
        PrintStream printStream;
        PrintStream printStream2 = null;
        try {
            printStream = new PrintStream(new FileOutputStream(str));
        } catch (Throwable th) {
            th = th;
        }
        try {
            FeatureWriter featureWriter = new FeatureWriter(printStream, 0);
            printStream.print("{\"type\": \"FeatureCollection\", \"features\":[");
            Iterator<MapFactory.MapFeature> it = list.iterator();
            if (it.hasNext()) {
                it.next().accept(featureWriter, new Object[0]);
                while (it.hasNext()) {
                    MapFactory.MapFeature next = it.next();
                    printStream.print(',');
                    next.accept(featureWriter, new Object[0]);
                }
            }
            printStream.print("]}");
            IOUtils.closeQuietly("GeoJSONUtil", printStream);
        } catch (Throwable th2) {
            th = th2;
            printStream2 = printStream;
            IOUtils.closeQuietly("GeoJSONUtil", printStream2);
            throw th;
        }
    }

    public static YailList swapCoordinates(YailList yailList) {
        Iterator it = yailList.iterator();
        it.next();
        while (it.hasNext()) {
            YailList yailList2 = (YailList) it.next();
            Object obj = yailList2.get(1);
            Pair pair = (Pair) yailList2.getCdr();
            pair.setCar(yailList2.get(2));
            ((Pair) pair.getCdr()).setCar(obj);
        }
        return yailList;
    }

    public static <E> List<List<E>> swapCoordinates2(List<List<E>> list) {
        for (List<E> list2 : list) {
            E e = list2.get(0);
            list2.set(0, list2.get(1));
            list2.set(1, e);
        }
        return list;
    }

    public static LList swapNestedCoordinates(LList lList) {
        for (LList lList2 = lList; !lList2.isEmpty(); lList2 = (LList) ((Pair) lList2).getCdr()) {
            swapCoordinates((YailList) lList2.get(0));
        }
        return lList;
    }
}

package com.google.appinventor.components.runtime;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.MapFeature;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.DispatchableError;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.GeometryUtil;
import com.google.appinventor.components.runtime.util.MapFactory;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.locationtech.jts.geom.Geometry;
import org.osmdroid.util.GeoPoint;

@DesignerComponent(category = ComponentCategory.MAPS, description = "Polygon encloses an arbitrary 2-dimensional area on a Map. Polygons can be used for drawing a perimeter, such as a campus, city, or country. Polygons begin as basic triangles. New vertices can be created by dragging the midpoint of a polygon away from the edge. Clicking on a vertex will remove the vertex, but a minimum of 3 vertices must exist at all times.", iconName = "images/polygon.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class Polygon extends PolygonBase implements MapFactory.MapPolygon {
    private static final String TAG = "Polygon";
    private static final MapFactory.MapFeatureVisitor<Double> distanceComputation = new MapFactory.MapFeatureVisitor<Double>() { // from class: com.google.appinventor.components.runtime.Polygon.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapMarker mapMarker, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapMarker, (Polygon) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapMarker, (Polygon) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapLineString mapLineString, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapLineString, (Polygon) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapLineString, (Polygon) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapPolygon mapPolygon, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapPolygon, (Polygon) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapPolygon, (Polygon) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapCircle mapCircle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Polygon) objArr[0], mapCircle));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Polygon) objArr[0], mapCircle));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapRectangle mapRectangle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Polygon) objArr[0], mapRectangle));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Polygon) objArr[0], mapRectangle));
        }
    };
    private List<List<List<GeoPoint>>> holePoints;
    private boolean initialized;
    private boolean multipolygon;
    private List<List<GeoPoint>> points;

    public Polygon(MapFactory.MapFeatureContainer mapFeatureContainer) {
        super(mapFeatureContainer, distanceComputation);
        this.points = new ArrayList();
        this.holePoints = new ArrayList();
        this.multipolygon = false;
        this.initialized = false;
        mapFeatureContainer.addFeature(this);
    }

    public void Initialize() {
        this.initialized = true;
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
        this.map.getController().updateFeatureHoles(this);
        this.map.getController().updateFeatureText(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the type of the feature. For polygons, this returns MapFeature.Polygon (\"Polygon\").")
    public String Type() {
        return TypeAbstract().toUnderlyingValue();
    }

    public MapFeature TypeAbstract() {
        return MapFeature.Polygon;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Gets or sets the sequence of points used to draw the polygon.")
    public YailList Points() {
        if (this.points.isEmpty()) {
            return YailList.makeEmptyList();
        }
        if (this.multipolygon) {
            LinkedList linkedList = new LinkedList();
            Iterator<List<GeoPoint>> it = this.points.iterator();
            while (it.hasNext()) {
                linkedList.add(GeometryUtil.pointsListToYailList(it.next()));
            }
            return YailList.makeList((List) linkedList);
        }
        return GeometryUtil.pointsListToYailList(this.points.get(0));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    @SimpleProperty
    public void Points(YailList yailList) {
        try {
            if (GeometryUtil.isPolygon(yailList)) {
                this.multipolygon = false;
                this.points.clear();
                this.points.add(GeometryUtil.pointsFromYailList(yailList));
            } else if (GeometryUtil.isMultiPolygon(yailList)) {
                this.multipolygon = true;
                this.points = GeometryUtil.multiPolygonFromYailList(yailList);
            } else {
                throw new DispatchableError(ErrorMessages.ERROR_POLYGON_PARSE_ERROR, "Unable to determine the structure of the points argument.");
            }
            if (this.initialized) {
                clearGeometry();
                this.map.getController().updateFeaturePosition(this);
            }
        } catch (DispatchableError e) {
            this.container.$form().dispatchErrorOccurredEvent(this, "Points", e.getErrorCode(), e.getArguments());
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Constructs a polygon from the given list of coordinates.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void PointsFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            this.points = new ArrayList();
            this.map.getController().updateFeaturePosition(this);
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() == 0) {
                this.points = new ArrayList();
                this.multipolygon = false;
                this.map.getController().updateFeaturePosition(this);
                return;
            }
            List<List<GeoPoint>> listMultiPolygonToList = GeometryUtil.multiPolygonToList(jSONArray);
            this.points = listMultiPolygonToList;
            this.multipolygon = listMultiPolygonToList.size() > 1;
            if (this.initialized) {
                clearGeometry();
                this.map.getController().updateFeaturePosition(this);
            }
        } catch (DispatchableError e) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "PointsFromString", e.getErrorCode(), e.getArguments());
        } catch (JSONException e2) {
            this.container.$form().dispatchErrorOccurredEvent(this, "PointsFromString", ErrorMessages.ERROR_POLYGON_PARSE_ERROR, e2.getMessage());
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Gets or sets the sequence of points used to draw holes in the polygon.")
    public YailList HolePoints() {
        if (this.holePoints.isEmpty()) {
            return YailList.makeEmptyList();
        }
        if (this.multipolygon) {
            LinkedList linkedList = new LinkedList();
            Iterator<List<List<GeoPoint>>> it = this.holePoints.iterator();
            while (it.hasNext()) {
                linkedList.add(GeometryUtil.multiPolygonToYailList(it.next()));
            }
            return YailList.makeList((List) linkedList);
        }
        return GeometryUtil.multiPolygonToYailList(this.holePoints.get(0));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    @SimpleProperty
    public void HolePoints(YailList yailList) {
        try {
            if (yailList.size() == 0) {
                this.holePoints = new ArrayList();
            } else if (this.multipolygon) {
                this.holePoints = GeometryUtil.multiPolygonHolesFromYailList(yailList);
            } else if (GeometryUtil.isMultiPolygon(yailList)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(GeometryUtil.multiPolygonFromYailList(yailList));
                this.holePoints = arrayList;
            } else {
                throw new DispatchableError(ErrorMessages.ERROR_POLYGON_PARSE_ERROR, "Unable to determine the structure of the points argument.");
            }
            if (this.initialized) {
                clearGeometry();
                this.map.getController().updateFeatureHoles(this);
            }
        } catch (DispatchableError e) {
            this.container.$form().dispatchErrorOccurredEvent(this, "HolePoints", e.getErrorCode(), e.getArguments());
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Constructs holes in a polygon from a given list of coordinates per hole.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void HolePointsFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            this.holePoints = new ArrayList();
            this.map.getController().updateFeatureHoles(this);
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() == 0) {
                this.holePoints = new ArrayList();
                this.map.getController().updateFeatureHoles(this);
                return;
            }
            this.holePoints = GeometryUtil.multiPolygonHolesToList(jSONArray);
            if (this.initialized) {
                clearGeometry();
                this.map.getController().updateFeatureHoles(this);
            }
            Log.d(TAG, "Points: " + this.points);
        } catch (JSONException e) {
            Log.e(TAG, "Unable to parse point string", e);
            this.container.$form().dispatchErrorOccurredEvent(this, "HolePointsFromString", ErrorMessages.ERROR_POLYGON_PARSE_ERROR, e.getMessage());
        }
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase
    @SimpleFunction(description = "Returns the centroid of the Polygon as a (latitude, longitude) pair.")
    public YailList Centroid() {
        return super.Centroid();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    public List<List<GeoPoint>> getPoints() {
        return this.points;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    public List<List<List<GeoPoint>>> getHolePoints() {
        return this.holePoints;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    public <T> T accept(MapFactory.MapFeatureVisitor<T> mapFeatureVisitor, Object... objArr) {
        return mapFeatureVisitor.visit(this, objArr);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase
    public Geometry computeGeometry() {
        return GeometryUtil.createGeometry(this.points, this.holePoints);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    public void updatePoints(List<List<GeoPoint>> list) {
        this.points.clear();
        this.points.addAll(list);
        clearGeometry();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapPolygon
    public void updateHolePoints(List<List<List<GeoPoint>>> list) {
        this.holePoints.clear();
        this.holePoints.addAll(list);
        clearGeometry();
    }

    @VisibleForTesting
    public boolean isInitialized() {
        return this.initialized;
    }
}

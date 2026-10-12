package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.MapFeature;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.GeometryUtil;
import com.google.appinventor.components.runtime.util.MapFactory;
import com.google.appinventor.components.runtime.util.YailList;
import org.locationtech.jts.geom.Geometry;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.GeoPoint;

@DesignerComponent(category = ComponentCategory.MAPS, description = "Rectangles are polygons with fixed latitudes and longitudes for the north, south, east, and west boundaries. Moving a vertex of the Rectangle updates the appropriate edges accordingly.", iconName = "images/rectangle.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class Rectangle extends PolygonBase implements MapFactory.MapRectangle {
    private static final MapFactory.MapFeatureVisitor<Double> distanceComputation = new MapFactory.MapFeatureVisitor<Double>() { // from class: com.google.appinventor.components.runtime.Rectangle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapMarker mapMarker, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapMarker, (Rectangle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapMarker, (Rectangle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapLineString mapLineString, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapLineString, (Rectangle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapLineString, (Rectangle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapPolygon mapPolygon, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapPolygon, (Rectangle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapPolygon, (Rectangle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapCircle mapCircle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapCircle, (Rectangle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapCircle, (Rectangle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapRectangle mapRectangle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapRectangle, (Rectangle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapRectangle, (Rectangle) objArr[0]));
        }
    };
    private double east;
    private double north;
    private double south;
    private double west;

    public Rectangle(MapFactory.MapFeatureContainer mapFeatureContainer) {
        super(mapFeatureContainer, distanceComputation);
        this.east = 0.0d;
        this.west = 0.0d;
        this.north = 0.0d;
        this.south = 0.0d;
        mapFeatureContainer.addFeature(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the type of the feature. For rectangles, this returns MapFeature.Rectangle (\"Rectangle\").")
    public String Type() {
        return TypeAbstract().toUnderlyingValue();
    }

    public MapFeature TypeAbstract() {
        return MapFeature.Rectangle;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The east edge of the rectangle, in decimal degrees east of the prime meridian.")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void EastLongitude(double d) {
        this.east = d;
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty
    public double EastLongitude() {
        return this.east;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The north edge of the rectangle, in decimal degrees north of the equator.")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void NorthLatitude(double d) {
        this.north = d;
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty
    public double NorthLatitude() {
        return this.north;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The south edge of the rectangle, in decimal degrees north of the equator.")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void SouthLatitude(double d) {
        this.south = d;
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty
    public double SouthLatitude() {
        return this.south;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The west edge of the rectangle, in decimal degrees east of the equator.")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void WestLongitude(double d) {
        this.west = d;
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleProperty
    public double WestLongitude() {
        return this.west;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleFunction(description = "Returns the center of the Rectangle as a list of the form (Latitude Longitude).")
    public YailList Center() {
        return GeometryUtil.asYailList(getCentroid());
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleFunction(description = "Returns the bounding box of the Rectangle in the format ((North West) (South East)).")
    public YailList Bounds() {
        return YailList.makeList(new YailList[]{YailList.makeList(new Double[]{Double.valueOf(this.north), Double.valueOf(this.west)}), YailList.makeList(new Double[]{Double.valueOf(this.south), Double.valueOf(this.east)})});
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    @SimpleFunction(description = "Moves the Rectangle so that it is centered on the given latitude and longitude while attempting to maintain the width and height of the Rectangle as measured from the center to the edges.")
    public void SetCenter(double d, double d2) {
        if (d < -90.0d || d > 90.0d) {
            this.container.$form().dispatchErrorOccurredEvent(this, "SetCenter", ErrorMessages.ERROR_INVALID_POINT, Double.valueOf(d), Double.valueOf(d2));
            return;
        }
        if (d2 < -180.0d || d2 > 180.0d) {
            this.container.$form().dispatchErrorOccurredEvent(this, "SetCenter", ErrorMessages.ERROR_INVALID_POINT, Double.valueOf(d), Double.valueOf(d2));
            return;
        }
        GeoPoint centroid = getCentroid();
        GeoPoint geoPoint = new GeoPoint(this.north, centroid.getLongitude());
        GeoPoint geoPoint2 = new GeoPoint(this.south, centroid.getLongitude());
        GeoPoint geoPoint3 = new GeoPoint(centroid.getLatitude(), this.east);
        GeoPoint geoPoint4 = new GeoPoint(centroid.getLatitude(), this.west);
        double dDistanceBetween = GeometryUtil.distanceBetween((IGeoPoint) geoPoint, (IGeoPoint) geoPoint2) / 2.0d;
        double dDistanceBetween2 = GeometryUtil.distanceBetween((IGeoPoint) geoPoint3, (IGeoPoint) geoPoint4) / 2.0d;
        centroid.setCoords(d, d2);
        this.north = centroid.destinationPoint(dDistanceBetween, 0.0f).getLatitude();
        this.south = centroid.destinationPoint(dDistanceBetween, 180.0f).getLatitude();
        this.east = centroid.destinationPoint(dDistanceBetween2, 90.0f).getLongitude();
        this.west = centroid.destinationPoint(dDistanceBetween2, 270.0f).getLongitude();
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    public <T> T accept(MapFactory.MapFeatureVisitor<T> mapFeatureVisitor, Object... objArr) {
        return mapFeatureVisitor.visit(this, objArr);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase
    public Geometry computeGeometry() {
        return GeometryUtil.createGeometry(this.north, this.east, this.south, this.west);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapRectangle
    public void updateBounds(double d, double d2, double d3, double d4) {
        this.north = d;
        this.west = d2;
        this.south = d3;
        this.east = d4;
        clearGeometry();
    }
}

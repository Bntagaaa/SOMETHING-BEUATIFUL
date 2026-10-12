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
import org.locationtech.jts.geom.Geometry;
import org.osmdroid.util.GeoPoint;

@DesignerComponent(category = ComponentCategory.MAPS, description = MapFactory.MapFeatureType.TYPE_CIRCLE, iconName = "images/circle.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class Circle extends PolygonBase implements MapFactory.MapCircle {
    private static final MapFactory.MapFeatureVisitor<Double> distanceComputation = new MapFactory.MapFeatureVisitor<Double>() { // from class: com.google.appinventor.components.runtime.Circle.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapMarker mapMarker, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapMarker, (Circle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapMarker, (Circle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapLineString mapLineString, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapLineString, (Circle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapLineString, (Circle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapPolygon mapPolygon, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapPolygon, (Circle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapPolygon, (Circle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapCircle mapCircle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids(mapCircle, (Circle) objArr[0]));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges(mapCircle, (Circle) objArr[0]));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapRectangle mapRectangle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Circle) objArr[0], mapRectangle));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Circle) objArr[0], mapRectangle));
        }
    };
    private GeoPoint center;
    private double latitude;
    private double longitude;
    private double radius;

    public Circle(MapFactory.MapFeatureContainer mapFeatureContainer) {
        super(mapFeatureContainer, distanceComputation);
        this.center = new GeoPoint(0.0d, 0.0d);
        mapFeatureContainer.addFeature(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    @SimpleProperty(description = "Returns the type of the feature. For Circles, this returns MapFeature.Circle (\"Circle\").")
    public String Type() {
        return TypeAbstract().toUnderlyingValue();
    }

    public MapFeature TypeAbstract() {
        return MapFeature.Circle;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleProperty
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void Radius(double d) {
        this.radius = d;
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The radius of the circle in meters.")
    public double Radius() {
        return this.radius;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleProperty
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LATITUDE)
    public void Latitude(double d) {
        if (GeometryUtil.isValidLatitude(d)) {
            this.latitude = d;
            this.center.setLatitude(d);
            clearGeometry();
            this.map.getController().updateFeaturePosition(this);
            return;
        }
        getDispatchDelegate().dispatchErrorOccurredEvent(this, "Latitude", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(d));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The latitude of the center of the circle.")
    public double Latitude() {
        return this.latitude;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleProperty
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LONGITUDE)
    public void Longitude(double d) {
        if (GeometryUtil.isValidLongitude(d)) {
            this.longitude = d;
            this.center.setLongitude(d);
            clearGeometry();
            this.map.getController().updateFeaturePosition(this);
            return;
        }
        getDispatchDelegate().dispatchErrorOccurredEvent(this, "Longitude", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(d));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The longitude of the center of the circle.")
    public double Longitude() {
        return this.longitude;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    @SimpleFunction(description = "Set the center of the Circle.")
    public void SetLocation(double d, double d2) {
        if (!GeometryUtil.isValidLatitude(d)) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "SetLocation", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(d));
            return;
        }
        if (!GeometryUtil.isValidLongitude(d2)) {
            getDispatchDelegate().dispatchErrorOccurredEvent(this, "SetLocation", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(d2));
            return;
        }
        this.latitude = d;
        this.longitude = d2;
        this.center.setLatitude(d);
        this.center.setLongitude(d2);
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    public <T> T accept(MapFactory.MapFeatureVisitor<T> mapFeatureVisitor, Object... objArr) {
        return mapFeatureVisitor.visit(this, objArr);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase
    public Geometry computeGeometry() {
        return GeometryUtil.createGeometry(this.center);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapCircle
    public void updateCenter(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
        clearGeometry();
    }
}

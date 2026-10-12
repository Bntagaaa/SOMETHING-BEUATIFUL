package com.google.appinventor.components.runtime;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.HorizontalAlignment;
import com.google.appinventor.components.common.MapFeature;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.VerticalAlignment;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.GeometryUtil;
import com.google.appinventor.components.runtime.util.MapFactory;
import org.locationtech.jts.geom.Geometry;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.GeoPoint;

@DesignerComponent(category = ComponentCategory.MAPS, description = "<p>An icon positioned at a point to indicate information on a map. Markers can be used to provide an info window, custom fill and stroke colors, and custom images to convey information to the user.</p>", version = 4)
@UsesLibraries(libraries = "osmdroid.aar, androidsvg.jar")
@SimpleObject
/* loaded from: classes.dex */
public class Marker extends MapFeatureBaseWithFill implements MapFactory.MapMarker {
    private static final String TAG = "Marker";
    private HorizontalAlignment anchorHAlign;
    private VerticalAlignment anchorVAlign;
    private final Handler handler;
    private int height;
    private String imagePath;
    private GeoPoint location;
    private volatile boolean pendingUpdate;
    private int width;
    private static final MapFactory.MapFeatureVisitor<Double> distanceComputation = new MapFactory.MapFeatureVisitor<Double>() { // from class: com.google.appinventor.components.runtime.Marker.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapMarker mapMarker, Object... objArr) {
            return Double.valueOf(GeometryUtil.distanceBetween((Marker) objArr[0], mapMarker));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapLineString mapLineString, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Marker) objArr[0], mapLineString));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Marker) objArr[0], mapLineString));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapPolygon mapPolygon, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Marker) objArr[0], mapPolygon));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Marker) objArr[0], mapPolygon));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapCircle mapCircle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Marker) objArr[0], mapCircle));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Marker) objArr[0], mapCircle));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapRectangle mapRectangle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.distanceBetweenCentroids((Marker) objArr[0], mapRectangle));
            }
            return Double.valueOf(GeometryUtil.distanceBetweenEdges((Marker) objArr[0], mapRectangle));
        }
    };
    private static final MapFactory.MapFeatureVisitor<Double> bearingComputation = new MapFactory.MapFeatureVisitor<Double>() { // from class: com.google.appinventor.components.runtime.Marker.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapMarker mapMarker, Object... objArr) {
            return Double.valueOf(GeometryUtil.bearingTo((Marker) objArr[0], mapMarker));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapLineString mapLineString, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.bearingToCentroid((MapFactory.MapMarker) objArr[0], mapLineString));
            }
            return Double.valueOf(GeometryUtil.bearingToEdge((MapFactory.MapMarker) objArr[0], mapLineString));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapPolygon mapPolygon, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.bearingToCentroid((MapFactory.MapMarker) objArr[0], mapPolygon));
            }
            return Double.valueOf(GeometryUtil.bearingToEdge((MapFactory.MapMarker) objArr[0], mapPolygon));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapCircle mapCircle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.bearingToCentroid((MapFactory.MapMarker) objArr[0], mapCircle));
            }
            return Double.valueOf(GeometryUtil.bearingToEdge((MapFactory.MapMarker) objArr[0], mapCircle));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureVisitor
        public Double visit(MapFactory.MapRectangle mapRectangle, Object... objArr) {
            if (((Boolean) objArr[1]).booleanValue()) {
                return Double.valueOf(GeometryUtil.bearingToCentroid((MapFactory.MapMarker) objArr[0], mapRectangle));
            }
            return Double.valueOf(GeometryUtil.bearingToEdge((MapFactory.MapMarker) objArr[0], mapRectangle));
        }
    };

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(userVisible = false)
    public void ShowShadow(boolean z) {
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(description = "Gets whether or not the shadow of the Marker is shown.")
    public boolean ShowShadow() {
        return false;
    }

    public Marker(MapFactory.MapFeatureContainer mapFeatureContainer) {
        super(mapFeatureContainer, distanceComputation);
        this.imagePath = "";
        this.anchorHAlign = HorizontalAlignment.Center;
        this.anchorVAlign = VerticalAlignment.Bottom;
        this.location = new GeoPoint(0.0d, 0.0d);
        this.width = -1;
        this.height = -1;
        this.pendingUpdate = false;
        this.handler = new Handler(Looper.getMainLooper());
        mapFeatureContainer.addFeature(this);
        ShowShadow(false);
        AnchorHorizontal(3);
        AnchorVertical(3);
        ImageAsset("");
        Width(-1);
        Height(-1);
        Latitude(0.0d);
        Longitude(0.0d);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    @SimpleProperty(description = "Returns the type of the feature. For Markers, this returns MapFeature.Marker (\"Marker\").")
    public String Type() {
        return TypeAbstract().toUnderlyingValue();
    }

    public MapFeature TypeAbstract() {
        return MapFeature.Marker;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LATITUDE)
    public void Latitude(double d) {
        Log.d(TAG, "Latitude");
        if (d < -90.0d || d > 90.0d) {
            this.container.$form().dispatchErrorOccurredEvent(this, "Latitude", ErrorMessages.ERROR_INVALID_LATITUDE, Double.valueOf(d));
            return;
        }
        this.location.setLatitude(d);
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty
    public double Latitude() {
        return this.location.getLatitude();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LONGITUDE)
    public void Longitude(double d) {
        Log.d(TAG, "Longitude");
        if (d < -180.0d || d > 180.0d) {
            this.container.$form().dispatchErrorOccurredEvent(this, "Longitude", ErrorMessages.ERROR_INVALID_LONGITUDE, Double.valueOf(d));
            return;
        }
        this.location.setLongitude(d);
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty
    public double Longitude() {
        return this.location.getLongitude();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void ImageAsset(@Asset String str) {
        Log.d(TAG, "ImageAsset");
        this.imagePath = str;
        setNeedsUpdate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(description = "The ImageAsset property is used to provide an alternative image for the Marker.")
    public String ImageAsset() {
        return this.imagePath;
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase, com.google.appinventor.components.runtime.util.MapFactory.HasStroke
    @SimpleProperty
    public void StrokeColor(int i) {
        super.StrokeColor(i);
        this.map.getController().updateFeatureStroke(this);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "3", editorType = PropertyTypeConstants.PROPERTY_TYPE_HORIZONTAL_ALIGNMENT)
    public void AnchorHorizontal(@Options(HorizontalAlignment.class) int i) {
        HorizontalAlignment horizontalAlignmentFromUnderlyingValue = HorizontalAlignment.fromUnderlyingValue(Integer.valueOf(i));
        if (horizontalAlignmentFromUnderlyingValue == null) {
            this.container.$form().dispatchErrorOccurredEvent(this, "AnchorHorizontal", ErrorMessages.ERROR_INVALID_ANCHOR_HORIZONTAL, Integer.valueOf(i));
        } else {
            AnchorHorizontalAbstract(horizontalAlignmentFromUnderlyingValue);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(description = "The horizontal alignment property controls where the Marker's anchor is located relative to its width. The choices are: 1 = left aligned, 3 = horizontally centered, 2 = right aligned.")
    public int AnchorHorizontal() {
        return AnchorHorizontalAbstract().toUnderlyingValue().intValue();
    }

    public HorizontalAlignment AnchorHorizontalAbstract() {
        return this.anchorHAlign;
    }

    public void AnchorHorizontalAbstract(HorizontalAlignment horizontalAlignment) {
        if (horizontalAlignment != this.anchorHAlign) {
            this.anchorHAlign = horizontalAlignment;
            this.map.getController().updateFeaturePosition(this);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "3", editorType = PropertyTypeConstants.PROPERTY_TYPE_VERTICAL_ALIGNMENT)
    public void AnchorVertical(@Options(VerticalAlignment.class) int i) {
        VerticalAlignment verticalAlignmentFromUnderlyingValue = VerticalAlignment.fromUnderlyingValue(Integer.valueOf(i));
        if (verticalAlignmentFromUnderlyingValue == null) {
            this.container.$form().dispatchErrorOccurredEvent(this, "AnchorVertical", ErrorMessages.ERROR_INVALID_ANCHOR_VERTICAL, Integer.valueOf(i));
        } else {
            AnchorVerticalAbstract(verticalAlignmentFromUnderlyingValue);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty(description = "The vertical alignment property controls where the Marker's anchor is located relative to its height. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.")
    public int AnchorVertical() {
        return AnchorVerticalAbstract().toUnderlyingValue().intValue();
    }

    public VerticalAlignment AnchorVerticalAbstract() {
        return this.anchorVAlign;
    }

    public void AnchorVerticalAbstract(VerticalAlignment verticalAlignment) {
        if (verticalAlignment != null) {
            this.anchorVAlign = verticalAlignment;
            this.map.getController().updateFeaturePosition(this);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty
    public void Width(int i) {
        this.width = i;
        setNeedsUpdate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty
    public int Width() {
        int i = this.width;
        if (i == -2) {
            return this.map.getView().getWidth();
        }
        return i < -1000 ? (int) ((((-i) - 1000.0d) / 100.0d) * this.map.getView().getWidth()) : i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public void WidthPercent(int i) {
        this.width = (-1000) - i;
        setNeedsUpdate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty
    public void Height(int i) {
        this.height = i;
        setNeedsUpdate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleProperty
    public int Height() {
        int i = this.height;
        if (i == -2) {
            return this.map.getView().getHeight();
        }
        return i < -1000 ? (int) ((((-i) - 1000.0d) / 100.0d) * this.map.getView().getHeight()) : i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public void HeightPercent(int i) {
        this.height = (-1000) - i;
        setNeedsUpdate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    @SimpleFunction(description = "Set the location of the marker.")
    public void SetLocation(double d, double d2) {
        Log.d(TAG, "SetLocation");
        this.location.setCoords(d, d2);
        clearGeometry();
        this.map.getController().updateFeaturePosition(this);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase
    public double DistanceToPoint(double d, double d2, boolean z) {
        return DistanceToPoint(d, d2);
    }

    @SimpleFunction(description = "Compute the distance, in meters, between a Marker and a latitude, longitude point.")
    public double DistanceToPoint(double d, double d2) {
        return GeometryUtil.distanceBetween(this, new GeoPoint(d, d2));
    }

    @SimpleFunction(description = "Returns the bearing from the Marker to the given latitude and longitude, in degrees from due north.")
    public double BearingToPoint(double d, double d2) {
        return this.location.bearingTo(new GeoPoint(d, d2));
    }

    @SimpleFunction(description = "Returns the bearing from the Marker to the given map feature, in degrees from due north. If the centroids parameter is true, the bearing will be to the center of the map feature. Otherwise, the bearing will be computed to the point in the feature nearest the Marker.")
    public double BearingToFeature(MapFactory.MapFeature mapFeature, boolean z) {
        if (mapFeature == null) {
            return -1.0d;
        }
        return ((Double) mapFeature.accept(bearingComputation, this, Boolean.valueOf(z))).doubleValue();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    public IGeoPoint getLocation() {
        return this.location;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapMarker
    public void updateLocation(double d, double d2) {
        this.location = new GeoPoint(d, d2);
        clearGeometry();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeature
    public <T> T accept(MapFactory.MapFeatureVisitor<T> mapFeatureVisitor, Object... objArr) {
        return mapFeatureVisitor.visit(this, objArr);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureBase
    public Geometry computeGeometry() {
        return GeometryUtil.createGeometry(this.location);
    }

    private void setNeedsUpdate() {
        synchronized (this) {
            try {
                if (this.pendingUpdate) {
                    return;
                }
                this.pendingUpdate = true;
                this.handler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.Marker.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Marker.this.map.getController().updateFeatureImage(Marker.this);
                        synchronized (Marker.this) {
                            Marker.this.pendingUpdate = false;
                        }
                    }
                }, 1L);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.appinventor.components.runtime;

import android.util.Log;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.MapType;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.ScaleUnits;
import com.google.appinventor.components.runtime.LocationSensor;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.FileWriteOperation;
import com.google.appinventor.components.runtime.util.GeoJSONUtil;
import com.google.appinventor.components.runtime.util.GeometryUtil;
import com.google.appinventor.components.runtime.util.MapFactory;
import com.google.appinventor.components.runtime.util.ScopedFile;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.osmdroid.util.BoundingBox;

@SimpleObject
@UsesAssets(fileNames = "location.png, marker.svg")
@UsesPermissions({"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
@DesignerComponent(androidMinSdk = 8, category = ComponentCategory.MAPS, description = "<p>A two-dimensional container that renders map tiles in the background and allows for multiple Marker elements to identify points on the map. Map tiles are supplied by OpenStreetMap contributors and the United States Geological Survey.</p><p>The Map component provides three utilities for manipulating its boundaries within App Inventor. First, a locking mechanism is provided to allow the map to be moved relative to other components on the Screen. Second, when unlocked, the user can pan the Map to any location. At this new location, the &quot;Set Initial Boundary&quot; button can be pressed to save the current Map coordinates to its properties. Lastly, if the Map is moved to a different location, for example to add Markers off-screen, then the &quot;Reset Map to Initial Bounds&quot; button can be used to re-center the Map at the starting location.</p>", iconName = "images/map.png", version = 6)
@UsesLibraries(libraries = "osmdroid.aar, osmdroid.jar, androidsvg.jar, jts.jar")
/* loaded from: classes.dex */
public class Map extends MapFeatureContainerBase implements MapFactory.MapEventListener {
    private static final String ERROR_INVALID_NUMBER = "%s is not a valid number.";
    private static final String ERROR_LATITUDE_OUT_OF_BOUNDS = "Latitude %f is out of bounds.";
    private static final String ERROR_LONGITUDE_OUT_OF_BOUNDS = "Longitude %f is out of bounds.";
    private static final String TAG = "Map";
    private MapFactory.MapController mapController;
    private LocationSensor sensor;

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapFeatureContainer
    public Map getMap() {
        return this;
    }

    public Map(ComponentContainer componentContainer) throws NumberFormatException {
        super(componentContainer);
        this.mapController = null;
        this.sensor = null;
        Log.d(TAG, "Map.<init>");
        componentContainer.$add(this);
        Width(176);
        Height(144);
        CenterFromString("42.359144, -71.093612");
        ZoomLevel(13);
        EnableZoom(true);
        EnablePan(true);
        MapTypeAbstract(MapType.Road);
        ShowCompass(false);
        LocationSensor(new LocationSensor(componentContainer.$form(), false));
        ShowUser(false);
        ShowZoom(false);
        EnableRotation(false);
        ShowScale(false);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        if (this.mapController == null) {
            MapFactory.MapController mapControllerNewMap = MapFactory.newMap(this.container.$form());
            this.mapController = mapControllerNewMap;
            mapControllerNewMap.addEventListener(this);
        }
        return this.mapController.getView();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "<p>Set the initial center coordinate of the map. The value is specified as a comma-separated pair of decimal latitude and longitude coordinates, for example, <code>42.359144, -71.093612</code>.</p><p>In blocks code, it is recommended for performance reasons to use SetCenter with numerical latitude and longitude rather than convert to the string representation for use with this property.</p>")
    @DesignerProperty(defaultValue = "42.359144, -71.093612", editorType = PropertyTypeConstants.PROPERTY_TYPE_GEOGRAPHIC_POINT)
    public void CenterFromString(String str) throws NumberFormatException {
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length != 2) {
            Log.e(TAG, str.concat(" is not a valid point."));
            InvalidPoint(str.concat(" is not a valid point."));
            return;
        }
        try {
            double d = Double.parseDouble(strArrSplit[0].trim());
            try {
                double d2 = Double.parseDouble(strArrSplit[1].trim());
                if (d > 90.0d || d < -90.0d) {
                    InvalidPoint(String.format(ERROR_LATITUDE_OUT_OF_BOUNDS, Double.valueOf(d)));
                    return;
                }
                if (d2 > 180.0d || d2 < -180.0d) {
                    InvalidPoint(String.format(ERROR_LONGITUDE_OUT_OF_BOUNDS, Double.valueOf(d2)));
                    return;
                }
                Log.i(TAG, "Setting center to " + d + ", " + d2);
                this.mapController.setCenter(d, d2);
            } catch (NumberFormatException unused) {
                Log.e(TAG, strArrSplit[1] + " is not a valid number.");
                InvalidPoint(strArrSplit[1] + " is not a valid number.");
            }
        } catch (NumberFormatException unused2) {
            Log.e(TAG, strArrSplit[0] + " is not a valid number.");
            InvalidPoint(strArrSplit[0] + " is not a valid number.");
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The latitude of the center of the map.")
    public double Latitude() {
        return this.mapController.getLatitude();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The longitude of the center of the map.")
    public double Longitude() {
        return this.mapController.getLongitude();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "13", editorType = PropertyTypeConstants.PROPERTY_TYPE_MAP_ZOOM)
    public void ZoomLevel(int i) {
        this.mapController.setZoom(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The zoom level of the map. Valid values of ZoomLevel are dependent on the tile provider and the latitude and longitude of the map. For example, zoom levels are more constrained over oceans than dense city centers to conserve space for storing tiles, so valid values may be 1-7 over ocean and 1-18 over cities. Tile providers may send warning or error tiles if the zoom level is too great for the server to support.")
    public int ZoomLevel() {
        return this.mapController.getZoom();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnableZoom(boolean z) {
        this.mapController.setZoomEnabled(z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If this property is set to true, multitouch zoom gestures are allowed on the map. Otherwise, the map zoom cannot be changed by the user except via the zoom control buttons.")
    public boolean EnableZoom() {
        return this.mapController.isZoomEnabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void Rotation(float f) {
        this.mapController.setRotation(f);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets or gets the rotation of the map in decimal degrees if any")
    public float Rotation() {
        return this.mapController.getRotation();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_MAP_TYPE)
    public void MapType(@Options(MapType.class) int i) {
        MapType mapTypeFromUnderlyingValue = MapType.fromUnderlyingValue(Integer.valueOf(i));
        if (mapTypeFromUnderlyingValue != null) {
            MapTypeAbstract(mapTypeFromUnderlyingValue);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The type of tile layer to use as the base of the map. Valid values are: 1 (Roads), 2 (Aerial), 3 (Terrain)")
    public int MapType() {
        return MapTypeAbstract().toUnderlyingValue().intValue();
    }

    public MapType MapTypeAbstract() {
        return this.mapController.getMapTypeAbstract();
    }

    public void MapTypeAbstract(MapType mapType) {
        this.mapController.setMapTypeAbstract(mapType);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowCompass(boolean z) {
        this.mapController.setCompassEnabled(z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Show a compass icon rotated based on user orientation.")
    public boolean ShowCompass() {
        return this.mapController.isCompassEnabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowZoom(boolean z) {
        this.mapController.setZoomControlEnabled(z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Show zoom buttons on the map.")
    public boolean ShowZoom() {
        return this.mapController.isZoomControlEnabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowUser(boolean z) {
        this.mapController.setShowUserEnabled(z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Show the user's location on the map.")
    public boolean ShowUser() {
        return this.mapController.isShowUserEnabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnableRotation(boolean z) {
        this.mapController.setRotationEnabled(z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If set to true, the user can use multitouch gestures to rotate the map around its current center.")
    public boolean EnableRotation() {
        return this.mapController.isRotationEnabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnablePan(boolean z) {
        this.mapController.setPanEnabled(z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Enable two-finger panning of the Map")
    public boolean EnablePan() {
        return this.mapController.isPanEnabled();
    }

    @SimpleProperty
    public void BoundingBox(YailList yailList) {
        double dCoerceToDouble = GeometryUtil.coerceToDouble(((YailList) yailList.get(1)).get(1));
        double dCoerceToDouble2 = GeometryUtil.coerceToDouble(((YailList) yailList.get(1)).get(2));
        double dCoerceToDouble3 = GeometryUtil.coerceToDouble(((YailList) yailList.get(2)).get(1));
        this.mapController.setBoundingBox(new BoundingBox(dCoerceToDouble, GeometryUtil.coerceToDouble(((YailList) yailList.get(2)).get(2)), dCoerceToDouble3, dCoerceToDouble2));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Bounding box for the map stored as [[North, West], [South, East]].")
    public YailList BoundingBox() {
        BoundingBox boundingBox = this.mapController.getBoundingBox();
        return YailList.makeList(new YailList[]{YailList.makeList(new Double[]{Double.valueOf(boundingBox.getLatNorth()), Double.valueOf(boundingBox.getLonWest())}), YailList.makeList(new Double[]{Double.valueOf(boundingBox.getLatSouth()), Double.valueOf(boundingBox.getLonEast())})});
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase, com.google.appinventor.components.runtime.util.MapFactory.MapFeatureContainer
    @SimpleProperty
    public YailList Features() {
        return super.Features();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Uses the provided LocationSensor for user location data rather than the built-in location provider.")
    @DesignerProperty(editorType = "component:com.google.appinventor.components.runtime.LocationSensor")
    public void LocationSensor(LocationSensor locationSensor) {
        LocationSensor.LocationSensorListener locationListener = this.mapController.getLocationListener();
        LocationSensor locationSensor2 = this.sensor;
        if (locationSensor2 != null) {
            locationSensor2.removeListener(locationListener);
        }
        this.sensor = locationSensor;
        if (locationSensor != null) {
            locationSensor.addListener(locationListener);
        }
    }

    public LocationSensor LocationSensor() {
        return this.sensor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowScale(boolean z) {
        this.mapController.setScaleVisible(z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Shows a scale reference on the map.")
    public boolean ShowScale() {
        return this.mapController.isScaleVisible();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_MAP_UNIT_SYSTEM)
    public void ScaleUnits(@Options(ScaleUnits.class) int i) {
        ScaleUnits scaleUnitsFromUnderlyingValue = ScaleUnits.fromUnderlyingValue(Integer.valueOf(i));
        if (scaleUnitsFromUnderlyingValue == null) {
            $form().dispatchErrorOccurredEvent(this, "ScaleUnits", ErrorMessages.ERROR_INVALID_UNIT_SYSTEM, Integer.valueOf(i));
        } else {
            ScaleUnitsAbstract(scaleUnitsFromUnderlyingValue);
        }
    }

    @SimpleProperty
    public int ScaleUnits() {
        return ScaleUnitsAbstract().toUnderlyingValue().intValue();
    }

    public ScaleUnits ScaleUnitsAbstract() {
        return this.mapController.getScaleUnitsAbstract();
    }

    public void ScaleUnitsAbstract(ScaleUnits scaleUnits) {
        this.mapController.setScaleUnitsAbstract(scaleUnits);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the user's latitude if ShowUser is enabled.")
    public double UserLatitude() {
        LocationSensor locationSensor = this.sensor;
        if (locationSensor == null) {
            return -999.0d;
        }
        return locationSensor.Latitude();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the user's longitude if ShowUser is enabled.")
    public double UserLongitude() {
        LocationSensor locationSensor = this.sensor;
        if (locationSensor == null) {
            return -999.0d;
        }
        return locationSensor.Longitude();
    }

    @SimpleFunction(description = "Pans the map center to the given latitude and longitude and adjust the zoom level to the specified zoom.")
    public void PanTo(double d, double d2, int i) {
        this.mapController.panTo(d, d2, i, 1.0d);
    }

    @SimpleFunction(description = "Create a new marker with default properties at the specified latitude and longitude.")
    public Marker CreateMarker(double d, double d2) {
        Marker marker = new Marker(this);
        marker.SetLocation(d, d2);
        return marker;
    }

    @SimpleFunction(description = "Save the contents of the Map to the specified path.")
    public void Save(String str) {
        final ArrayList arrayList = new ArrayList(this.features);
        if (str.startsWith("/") || str.startsWith("file:/")) {
            final java.io.File file = str.startsWith("file:") ? new java.io.File(URI.create(str)) : new java.io.File(str);
            AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.1
                @Override // java.lang.Runnable
                public void run() {
                    Map.this.doSave(arrayList, file);
                }
            });
        } else {
            new FileWriteOperation($form(), this, "Save", str, $form().DefaultFileScope(), false, true) { // from class: com.google.appinventor.components.runtime.Map.2
                @Override // com.google.appinventor.components.runtime.util.FileStreamOperation, com.google.appinventor.components.runtime.util.SingleFileOperation
                public void processFile(ScopedFile scopedFile) {
                    Map.this.doSave(arrayList, new java.io.File(URI.create(FileUtil.resolveFileName(this.form, scopedFile))));
                }
            }.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSave(List<MapFactory.MapFeature> list, java.io.File file) {
        try {
            GeoJSONUtil.writeFeaturesAsGeoJSON(list, file.getAbsolutePath());
        } catch (IOException e) {
            $form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.3
                @Override // java.lang.Runnable
                public void run() {
                    Map.this.$form().dispatchErrorOccurredEvent(Map.this, "Save", ErrorMessages.ERROR_EXCEPTION_DURING_MAP_SAVE, e.getMessage());
                }
            });
        }
    }

    @SimpleEvent(description = "Map has been initialized and is ready for user interaction.")
    public void Ready() {
        EventDispatcher.dispatchEvent(this, "Ready", new Object[0]);
    }

    @SimpleEvent(description = "User has changed the map bounds by panning or zooming the map.")
    public void BoundsChange() {
        EventDispatcher.dispatchEvent(this, "BoundsChange", new Object[0]);
    }

    @SimpleEvent(description = "User has changed the zoom level of the map.")
    public void ZoomChange() {
        EventDispatcher.dispatchEvent(this, "ZoomChange", new Object[0]);
    }

    @SimpleEvent(description = "An invalid coordinate was supplied during a maps operation. The message parameter will have more details about the issue.")
    public void InvalidPoint(String str) {
        EventDispatcher.dispatchEvent(this, "InvalidPoint", str);
    }

    @SimpleEvent(description = "The user tapped at a point on the map.")
    public void TapAtPoint(double d, double d2) {
        EventDispatcher.dispatchEvent(this, "TapAtPoint", Double.valueOf(d), Double.valueOf(d2));
    }

    @SimpleEvent(description = "The user double-tapped at a point on the map. This event will be followed by a ZoomChanged event if zooming gestures are enabled and the map is not at the highest possible zoom level.")
    public void DoubleTapAtPoint(double d, double d2) {
        EventDispatcher.dispatchEvent(this, "DoubleTapAtPoint", Double.valueOf(d), Double.valueOf(d2));
    }

    @SimpleEvent(description = "The user long-pressed at a point on the map.")
    public void LongPressAtPoint(double d, double d2) {
        EventDispatcher.dispatchEvent(this, "LongPressAtPoint", Double.valueOf(d), Double.valueOf(d2));
    }

    public MapFactory.MapController getController() {
        return this.mapController;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onReady(MapFactory.MapController mapController) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.4
            @Override // java.lang.Runnable
            public void run() {
                Map.this.Ready();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onBoundsChanged() {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.5
            @Override // java.lang.Runnable
            public void run() {
                Map.this.BoundsChange();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onZoom() {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.6
            @Override // java.lang.Runnable
            public void run() {
                Map.this.ZoomChange();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onSingleTap(final double d, final double d2) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.7
            @Override // java.lang.Runnable
            public void run() {
                Map.this.TapAtPoint(d, d2);
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onDoubleTap(final double d, final double d2) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.8
            @Override // java.lang.Runnable
            public void run() {
                Map.this.DoubleTapAtPoint(d, d2);
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onLongPress(final double d, final double d2) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.9
            @Override // java.lang.Runnable
            public void run() {
                Map.this.LongPressAtPoint(d, d2);
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onFeatureClick(final MapFactory.MapFeature mapFeature) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.10
            @Override // java.lang.Runnable
            public void run() {
                mapFeature.Click();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onFeatureLongPress(final MapFactory.MapFeature mapFeature) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.11
            @Override // java.lang.Runnable
            public void run() {
                mapFeature.LongClick();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onFeatureStartDrag(final MapFactory.MapFeature mapFeature) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.12
            @Override // java.lang.Runnable
            public void run() {
                mapFeature.StartDrag();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onFeatureDrag(final MapFactory.MapFeature mapFeature) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.13
            @Override // java.lang.Runnable
            public void run() {
                mapFeature.Drag();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapEventListener
    public void onFeatureStopDrag(final MapFactory.MapFeature mapFeature) {
        this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Map.14
            @Override // java.lang.Runnable
            public void run() {
                mapFeature.StopDrag();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase
    public void addFeature(MapFactory.MapMarker mapMarker) {
        this.features.add(mapMarker);
        mapMarker.setMap(this);
        this.mapController.addFeature(mapMarker);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase
    public void addFeature(MapFactory.MapLineString mapLineString) {
        this.features.add(mapLineString);
        mapLineString.setMap(this);
        this.mapController.addFeature(mapLineString);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase
    public void addFeature(MapFactory.MapPolygon mapPolygon) {
        this.features.add(mapPolygon);
        mapPolygon.setMap(this);
        this.mapController.addFeature(mapPolygon);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase
    public void addFeature(MapFactory.MapRectangle mapRectangle) {
        this.features.add(mapRectangle);
        mapRectangle.setMap(this);
        this.mapController.addFeature(mapRectangle);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase
    public void addFeature(MapFactory.MapCircle mapCircle) {
        this.features.add(mapCircle);
        mapCircle.setMap(this);
        this.mapController.addFeature(mapCircle);
    }

    @Override // com.google.appinventor.components.runtime.MapFeatureContainerBase, com.google.appinventor.components.runtime.util.MapFactory.MapFeatureContainer
    public void removeFeature(MapFactory.MapFeature mapFeature) {
        this.features.remove(mapFeature);
        this.mapController.removeFeature(mapFeature);
    }
}

package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.caverock.androidsvg.SVG;
import com.google.appinventor.components.common.MapType;
import com.google.appinventor.components.common.ScaleUnits;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.LocationSensor;
import com.google.appinventor.components.runtime.util.MapFactory;
import com.google.appinventor.components.runtime.view.ZoomControlView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.config.Configuration;
import org.osmdroid.events.MapListener;
import org.osmdroid.events.ScrollEvent;
import org.osmdroid.events.ZoomEvent;
import org.osmdroid.tileprovider.MapTileProviderBase;
import org.osmdroid.tileprovider.MapTileProviderBasic;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;
import org.osmdroid.tileprovider.modules.IFilesystemCache;
import org.osmdroid.tileprovider.modules.MapTileFilesystemProvider;
import org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider;
import org.osmdroid.tileprovider.modules.TileWriter;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.tilesource.TileSourceFactory;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.CopyrightOverlay;
import org.osmdroid.views.overlay.Marker;
import org.osmdroid.views.overlay.Overlay;
import org.osmdroid.views.overlay.OverlayWithIW;
import org.osmdroid.views.overlay.OverlayWithIWVisitor;
import org.osmdroid.views.overlay.Polygon;
import org.osmdroid.views.overlay.Polyline;
import org.osmdroid.views.overlay.ScaleBarOverlay;
import org.osmdroid.views.overlay.compass.CompassOverlay;
import org.osmdroid.views.overlay.compass.IOrientationProvider;
import org.osmdroid.views.overlay.compass.InternalCompassOrientationProvider;
import org.osmdroid.views.overlay.gestures.RotationGestureOverlay;
import org.osmdroid.views.overlay.infowindow.OverlayInfoWindow;
import org.osmdroid.views.overlay.mylocation.IMyLocationConsumer;
import org.osmdroid.views.overlay.mylocation.IMyLocationProvider;
import org.osmdroid.views.overlay.mylocation.MyLocationNewOverlay;

/* loaded from: classes.dex */
class NativeOpenStreetMapController implements MapFactory.MapController, MapListener {
    private static final long SPECIFIED_FILL = 1;
    private static final long SPECIFIED_FILL_OPACITY = 4;
    private static final long SPECIFIED_STROKE = 8;
    private static final long SPECIFIED_STROKE_OPACITY = 16;
    private static final long SPECIFIED_STROKE_WIDTH = 32;
    private boolean caches;
    private RelativeLayout containerView;
    private OverlayInfoWindow defaultInfoWindow;
    private final Form form;
    private final AppInventorLocationSensorAdapter locationProvider;
    private ScaleBarOverlay scaleBar;
    private MapType tileType;
    private TouchOverlay touch;
    private final MyLocationNewOverlay userLocation;
    private MapView view;
    private boolean zoomControlEnabled;
    private ZoomControlView zoomControls;
    private boolean zoomEnabled;
    private static final String TAG = "NativeOpenStreetMapController";
    private static final float[] ANCHOR_HORIZONTAL = {Float.NaN, 0.0f, 1.0f, 0.5f};
    private static final float[] ANCHOR_VERTICAL = {Float.NaN, 0.0f, 0.5f, 1.0f};
    private CompassOverlay compass = null;
    private RotationGestureOverlay rotation = null;
    private Set<MapFactory.MapEventListener> eventListeners = new HashSet();
    private Map<MapFactory.MapFeature, OverlayWithIW> featureOverlays = new HashMap();
    private SVG defaultMarkerSVG = null;
    private boolean ready = false;
    private float lastAzimuth = Float.NaN;
    private Set<MapFactory.MapFeatureCollection> hiddenFeatureCollections = new HashSet();
    private Set<MapFactory.MapFeature> hiddenFeatures = new HashSet();

    public static class AppInventorLocationSensorAdapter implements IMyLocationProvider, LocationSensor.LocationSensorListener {
        private IMyLocationConsumer consumer;
        private boolean enabled;
        private Location lastLocation;
        private LocationSensor source;

        public /* synthetic */ AppInventorLocationSensorAdapter(int i) {
            this();
        }

        @Override // com.google.appinventor.components.runtime.LocationSensor.LocationSensorListener
        public void onDistanceIntervalChanged(int i) {
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        @Override // com.google.appinventor.components.runtime.LocationSensor.LocationSensorListener
        public void onTimeIntervalChanged(int i) {
        }

        private AppInventorLocationSensorAdapter() {
            this.enabled = false;
        }

        @Override // com.google.appinventor.components.runtime.LocationSensor.LocationSensorListener
        public void setSource(LocationSensor locationSensor) {
            LocationSensor locationSensor2 = this.source;
            if (locationSensor2 == locationSensor) {
                return;
            }
            if (locationSensor2 != null) {
                locationSensor2.Enabled(false);
            }
            this.source = locationSensor;
            if (locationSensor != null) {
                locationSensor.Enabled(this.enabled);
            }
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            this.lastLocation = location;
            IMyLocationConsumer iMyLocationConsumer = this.consumer;
            if (iMyLocationConsumer != null) {
                iMyLocationConsumer.onLocationChanged(location, this);
            }
        }

        public boolean startLocationProvider(IMyLocationConsumer iMyLocationConsumer) {
            this.consumer = iMyLocationConsumer;
            LocationSensor locationSensor = this.source;
            if (locationSensor != null) {
                locationSensor.Enabled(true);
                this.enabled = true;
            }
            return this.enabled;
        }

        public void stopLocationProvider() {
            LocationSensor locationSensor = this.source;
            if (locationSensor != null) {
                locationSensor.Enabled(false);
            }
            this.enabled = false;
        }

        public Location getLastKnownLocation() {
            return this.lastLocation;
        }

        public void destroy() {
            this.consumer = null;
        }
    }

    public class TouchOverlay extends Overlay {
        private boolean scrollEnabled;

        public /* synthetic */ TouchOverlay(NativeOpenStreetMapController nativeOpenStreetMapController, int i) {
            this();
        }

        public void draw(Canvas canvas, MapView mapView, boolean z) {
        }

        private TouchOverlay() {
            this.scrollEnabled = true;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, MapView mapView) {
            return !this.scrollEnabled;
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, MapView mapView) {
            return !this.scrollEnabled;
        }

        public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
            IGeoPoint iGeoPointFromPixels = mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
            double latitude = iGeoPointFromPixels.getLatitude();
            double longitude = iGeoPointFromPixels.getLongitude();
            Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
            while (it.hasNext()) {
                ((MapFactory.MapEventListener) it.next()).onLongPress(latitude, longitude);
            }
            return false;
        }
    }

    public class MapReadyHandler extends Handler {
        public /* synthetic */ MapReadyHandler(NativeOpenStreetMapController nativeOpenStreetMapController, int i) {
            this();
        }

        private MapReadyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            if (!NativeOpenStreetMapController.this.ready && NativeOpenStreetMapController.this.form.canDispatchEvent(null, "MapReady")) {
                NativeOpenStreetMapController.this.ready = true;
                NativeOpenStreetMapController.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.MapReadyHandler.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                        while (it.hasNext()) {
                            ((MapFactory.MapEventListener) it.next()).onReady(NativeOpenStreetMapController.this);
                        }
                    }
                });
            }
            NativeOpenStreetMapController.this.view.invalidate();
        }
    }

    public class CustomMapView extends MapView {
        public void onDetach() {
        }

        public CustomMapView(Context context) {
            super(context, (MapTileProviderBase) null, new MapReadyHandler(NativeOpenStreetMapController.this, 0));
        }

        public CustomMapView(Context context, MapTileProviderBase mapTileProviderBase) {
            super(context, mapTileProviderBase, new MapReadyHandler(NativeOpenStreetMapController.this, 0));
        }

        public void onSizeChanged(int i, int i2, int i3, int i4) {
            scrollTo(((i3 - i) / 2) + getScrollX(), ((i4 - i2) / 2) + getScrollY());
            super.onSizeChanged(i, i2, i3, i4);
        }
    }

    public static class CustomMapTileProviderBasic extends MapTileProviderBasic {
        public CustomMapTileProviderBasic(Context context, ITileSource iTileSource, IFilesystemCache iFilesystemCache) {
            super(context, iTileSource, iFilesystemCache);
            for (int i = 0; i < this.mTileProviderList.size(); i++) {
                if (this.mTileProviderList.get(i) instanceof MapTileSqlCacheProvider) {
                    this.mTileProviderList.set(i, new MapTileFilesystemProvider(this.mRegisterReceiver, iTileSource));
                }
            }
        }
    }

    public CustomMapView createCustomMapView(Context context) {
        return new CustomMapView(context, new CustomMapTileProviderBasic(context, TileSourceFactory.DEFAULT_TILE_SOURCE, new TileWriter()));
    }

    public NativeOpenStreetMapController(Form form) {
        this.touch = null;
        this.defaultInfoWindow = null;
        int i = 0;
        this.zoomControls = null;
        OpenStreetMapTileProviderConstants.setUserAgentValue(form.getApplication().getPackageName());
        File file = new File(form.getCacheDir(), "osmdroid");
        if (file.exists() || file.mkdirs()) {
            Configuration.getInstance().setOsmdroidBasePath(file);
            File file2 = new File(file, "tiles");
            if (file2.exists() || file2.mkdirs()) {
                Configuration.getInstance().setOsmdroidTileCache(file2);
                this.caches = true;
            }
        }
        this.form = form;
        this.touch = new TouchOverlay(this, i);
        this.view = createCustomMapView(form.getApplicationContext());
        AppInventorLocationSensorAdapter appInventorLocationSensorAdapter = new AppInventorLocationSensorAdapter(i);
        this.locationProvider = appInventorLocationSensorAdapter;
        this.defaultInfoWindow = new OverlayInfoWindow(this.view);
        this.view.setTilesScaledToDpi(true);
        this.view.setMapListener(this);
        this.view.getOverlayManager().add(new CopyrightOverlay(form));
        this.view.getOverlayManager().add(this.touch);
        this.view.addOnTapListener(new MapView.OnTapListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.1
            public void onSingleTap(MapView mapView, double d, double d2) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onSingleTap(d, d2);
                }
            }

            public void onDoubleTap(MapView mapView, double d, double d2) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onDoubleTap(d, d2);
                }
            }
        });
        this.zoomControls = new ZoomControlView(this.view);
        this.userLocation = new MyLocationNewOverlay(appInventorLocationSensorAdapter, this.view);
        ScaleBarOverlay scaleBarOverlay = new ScaleBarOverlay(this.view);
        this.scaleBar = scaleBarOverlay;
        scaleBarOverlay.setAlignBottom(true);
        this.scaleBar.setAlignRight(true);
        this.scaleBar.disableScaleBar();
        this.view.getOverlayManager().add(this.scaleBar);
        RelativeLayout relativeLayout = new RelativeLayout(form);
        this.containerView = relativeLayout;
        relativeLayout.setClipChildren(true);
        this.containerView.addView((View) this.view, (ViewGroup.LayoutParams) new RelativeLayout.LayoutParams(-1, -1));
        this.containerView.addView(this.zoomControls);
        this.zoomControls.setVisibility(8);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public View getView() {
        return this.containerView;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public double getLatitude() {
        return this.view.getMapCenter().getLatitude();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public double getLongitude() {
        return this.view.getMapCenter().getLongitude();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setCenter(double d, double d2) {
        this.view.getController().setCenter(new GeoPoint(d, d2));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setZoom(int i) {
        this.view.getController().setZoom(i);
        this.zoomControls.updateButtons();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public int getZoom() {
        return (int) this.view.getZoomLevel(true);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setZoomEnabled(boolean z) {
        this.zoomEnabled = z;
        this.view.setMultiTouchControls(z);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isZoomEnabled() {
        return this.zoomEnabled;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setMapType(MapFactory.MapType mapType) {
        MapType mapTypeFromUnderlyingValue = MapType.fromUnderlyingValue(Integer.valueOf(mapType.ordinal()));
        if (mapTypeFromUnderlyingValue != null) {
            setMapTypeAbstract(mapTypeFromUnderlyingValue);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public MapFactory.MapType getMapType() {
        return MapFactory.MapType.values()[this.tileType.toUnderlyingValue().intValue()];
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setMapTypeAbstract(MapType mapType) {
        this.tileType = mapType;
        int i = AnonymousClass14.$SwitchMap$com$google$appinventor$components$common$MapType[mapType.ordinal()];
        if (i == 1) {
            this.view.setTileSource(TileSourceFactory.MAPNIK);
        } else if (i == 2) {
            this.view.setTileSource(TileSourceFactory.USGS_SAT);
        } else {
            if (i != 3) {
                return;
            }
            this.view.setTileSource(TileSourceFactory.USGS_TOPO);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public MapType getMapTypeAbstract() {
        return this.tileType;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setCompassEnabled(boolean z) {
        if (z && this.compass == null) {
            this.compass = new CompassOverlay(this.view.getContext(), this.view);
            this.view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    NativeOpenStreetMapController.this.compass.setCompassCenter((NativeOpenStreetMapController.this.view.getMeasuredWidth() / NativeOpenStreetMapController.this.view.getContext().getResources().getDisplayMetrics().density) - 35.0f, 35.0f);
                    return true;
                }
            });
            this.view.getOverlayManager().add(this.compass);
        }
        CompassOverlay compassOverlay = this.compass;
        if (compassOverlay != null) {
            if (z) {
                if (compassOverlay.getOrientationProvider() != null) {
                    this.compass.enableCompass();
                } else {
                    this.compass.enableCompass(new InternalCompassOrientationProvider(this.view.getContext()));
                }
                this.compass.onOrientationChanged(this.lastAzimuth, (IOrientationProvider) null);
                return;
            }
            this.lastAzimuth = compassOverlay.getOrientation();
            this.compass.disableCompass();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isCompassEnabled() {
        CompassOverlay compassOverlay = this.compass;
        return compassOverlay != null && compassOverlay.isCompassEnabled();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setZoomControlEnabled(boolean z) {
        if (this.zoomControlEnabled != z) {
            this.zoomControls.setVisibility(z ? 0 : 8);
            this.zoomControlEnabled = z;
            this.containerView.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isZoomControlEnabled() {
        return this.zoomControlEnabled;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setShowUserEnabled(boolean z) {
        this.userLocation.setEnabled(z);
        if (z) {
            this.userLocation.enableMyLocation();
            this.view.getOverlayManager().add(this.userLocation);
        } else {
            this.userLocation.disableMyLocation();
            this.view.getOverlayManager().remove(this.userLocation);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isShowUserEnabled() {
        MyLocationNewOverlay myLocationNewOverlay = this.userLocation;
        return myLocationNewOverlay != null && myLocationNewOverlay.isEnabled();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setRotationEnabled(boolean z) {
        if (z && this.rotation == null) {
            this.rotation = new RotationGestureOverlay(this.view);
        }
        RotationGestureOverlay rotationGestureOverlay = this.rotation;
        if (rotationGestureOverlay != null) {
            rotationGestureOverlay.setEnabled(z);
            if (z) {
                this.view.getOverlayManager().add(this.rotation);
            } else {
                this.view.getOverlayManager().remove(this.rotation);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isRotationEnabled() {
        RotationGestureOverlay rotationGestureOverlay = this.rotation;
        return rotationGestureOverlay != null && rotationGestureOverlay.isEnabled();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setPanEnabled(boolean z) {
        this.touch.scrollEnabled = z;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isPanEnabled() {
        return this.touch.scrollEnabled;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void panTo(double d, double d2, int i, double d3) {
        Animation animation;
        this.view.getController().animateTo(new GeoPoint(d, d2));
        if (!this.view.getController().zoomTo(i) || (animation = this.view.getAnimation()) == null) {
            return;
        }
        animation.setDuration((long) (d3 * 1000.0d));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addEventListener(MapFactory.MapEventListener mapEventListener) {
        this.eventListeners.add(mapEventListener);
        if ((this.ready || ViewCompat.isAttachedToWindow(this.view)) && this.form.canDispatchEvent(null, "MapReady")) {
            this.ready = true;
            mapEventListener.onReady(this);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(final MapFactory.MapMarker mapMarker) throws IOException {
        createNativeMarker(mapMarker, new AsyncCallbackPair<Marker>() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.3
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                a.w("Unable to create marker: ", str, NativeOpenStreetMapController.TAG);
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(Marker marker) {
                marker.setOnMarkerClickListener(new Marker.OnMarkerClickListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.3.1
                    public boolean onMarkerClick(Marker marker2, MapView mapView) {
                        Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                        while (it.hasNext()) {
                            ((MapFactory.MapEventListener) it.next()).onFeatureClick(mapMarker);
                        }
                        if (!mapMarker.EnableInfobox()) {
                            return false;
                        }
                        marker2.showInfoWindow();
                        return false;
                    }

                    public boolean onMarkerLongPress(Marker marker2, MapView mapView) {
                        Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                        while (it.hasNext()) {
                            ((MapFactory.MapEventListener) it.next()).onFeatureLongPress(mapMarker);
                        }
                        return false;
                    }
                });
                marker.setOnMarkerDragListener(new Marker.OnMarkerDragListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.3.2
                    public void onMarkerDrag(Marker marker2) {
                        Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                        while (it.hasNext()) {
                            ((MapFactory.MapEventListener) it.next()).onFeatureDrag(mapMarker);
                        }
                    }

                    public void onMarkerDragEnd(Marker marker2) {
                        GeoPoint position = marker2.getPosition();
                        mapMarker.updateLocation(position.getLatitude(), position.getLongitude());
                        Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                        while (it.hasNext()) {
                            ((MapFactory.MapEventListener) it.next()).onFeatureStopDrag(mapMarker);
                        }
                    }

                    public void onMarkerDragStart(Marker marker2) {
                        Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                        while (it.hasNext()) {
                            ((MapFactory.MapEventListener) it.next()).onFeatureStartDrag(mapMarker);
                        }
                    }
                });
                if (mapMarker.Visible()) {
                    NativeOpenStreetMapController.this.showOverlay(marker);
                } else {
                    NativeOpenStreetMapController.this.hideOverlay(marker);
                }
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(final MapFactory.MapLineString mapLineString) {
        OverlayWithIW overlayWithIWCreateNativePolyline = createNativePolyline(mapLineString);
        this.featureOverlays.put(mapLineString, overlayWithIWCreateNativePolyline);
        overlayWithIWCreateNativePolyline.setOnClickListener(new Polyline.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.4
            public boolean onClick(Polyline polyline, MapView mapView, GeoPoint geoPoint) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureClick(mapLineString);
                }
                if (!mapLineString.EnableInfobox()) {
                    return true;
                }
                polyline.showInfoWindow(geoPoint);
                return true;
            }

            public boolean onLongClick(Polyline polyline, MapView mapView, GeoPoint geoPoint) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureLongPress(mapLineString);
                }
                return true;
            }
        });
        overlayWithIWCreateNativePolyline.setOnDragListener(new Polyline.OnDragListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.5
            public void onDragStart(Polyline polyline) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureStartDrag(mapLineString);
                }
            }

            public void onDrag(Polyline polyline) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureDrag(mapLineString);
                }
            }

            public void onDragEnd(Polyline polyline) {
                mapLineString.updatePoints(polyline.getPoints());
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureStopDrag(mapLineString);
                }
            }
        });
        if (mapLineString.Visible()) {
            showOverlay(overlayWithIWCreateNativePolyline);
        } else {
            hideOverlay(overlayWithIWCreateNativePolyline);
        }
    }

    private void configurePolygon(final MapFactory.MapFeature mapFeature, Polygon polygon) {
        this.featureOverlays.put(mapFeature, polygon);
        polygon.setOnClickListener(new Polygon.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.6
            public boolean onLongClick(Polygon polygon2, MapView mapView, GeoPoint geoPoint) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureLongPress(mapFeature);
                }
                return true;
            }

            public boolean onClick(Polygon polygon2, MapView mapView, GeoPoint geoPoint) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureClick(mapFeature);
                }
                if (!mapFeature.EnableInfobox()) {
                    return true;
                }
                polygon2.showInfoWindow(geoPoint);
                return true;
            }
        });
        polygon.setOnDragListener(new Polygon.OnDragListener() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.7
            public void onDragStart(Polygon polygon2) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureStartDrag(mapFeature);
                }
            }

            public void onDrag(Polygon polygon2) {
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureDrag(mapFeature);
                }
            }

            public void onDragEnd(Polygon polygon2) {
                MapFactory.MapFeature mapFeature2 = mapFeature;
                if (mapFeature2 instanceof MapFactory.MapCircle) {
                    int size = polygon2.getPoints().size();
                    double latitude = 0.0d;
                    double longitude = 0.0d;
                    for (GeoPoint geoPoint : polygon2.getPoints()) {
                        latitude += geoPoint.getLatitude();
                        longitude += geoPoint.getLongitude();
                    }
                    if (size > 0) {
                        double d = size;
                        ((MapFactory.MapCircle) mapFeature).updateCenter(latitude / d, longitude / d);
                    } else {
                        ((MapFactory.MapCircle) mapFeature).updateCenter(0.0d, 0.0d);
                    }
                } else if (mapFeature2 instanceof MapFactory.MapRectangle) {
                    double dMax = -180.0d;
                    double dMin = 90.0d;
                    double dMax2 = -90.0d;
                    double dMin2 = 180.0d;
                    for (GeoPoint geoPoint2 : polygon2.getPoints()) {
                        double latitude2 = geoPoint2.getLatitude();
                        double longitude2 = geoPoint2.getLongitude();
                        dMax2 = Math.max(dMax2, latitude2);
                        dMin = Math.min(dMin, latitude2);
                        dMax = Math.max(dMax, longitude2);
                        dMin2 = Math.min(dMin2, longitude2);
                    }
                    ((MapFactory.MapRectangle) mapFeature).updateBounds(dMax2, dMin2, dMin, dMax);
                } else {
                    MultiPolygon multiPolygon = (MultiPolygon) polygon2;
                    ((MapFactory.MapPolygon) mapFeature2).updatePoints(multiPolygon.getMultiPoints());
                    ((MapFactory.MapPolygon) mapFeature).updateHolePoints(multiPolygon.getMultiHoles());
                }
                Iterator it = NativeOpenStreetMapController.this.eventListeners.iterator();
                while (it.hasNext()) {
                    ((MapFactory.MapEventListener) it.next()).onFeatureStopDrag(mapFeature);
                }
            }
        });
        if (mapFeature.Visible()) {
            showOverlay(polygon);
        } else {
            hideOverlay(polygon);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapPolygon mapPolygon) {
        configurePolygon(mapPolygon, createNativePolygon(mapPolygon));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapCircle mapCircle) {
        configurePolygon(mapCircle, createNativeCircle(mapCircle));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void addFeature(MapFactory.MapRectangle mapRectangle) {
        configurePolygon(mapRectangle, createNativeRectangle(mapRectangle));
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void removeFeature(MapFactory.MapFeature mapFeature) {
        this.view.getOverlayManager().remove(this.featureOverlays.get(mapFeature));
        this.featureOverlays.remove(mapFeature);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapMarker mapMarker) {
        Marker marker = this.featureOverlays.get(mapMarker);
        if (marker != null) {
            marker.setAnchor(ANCHOR_HORIZONTAL[mapMarker.AnchorHorizontal()], ANCHOR_VERTICAL[mapMarker.AnchorVertical()]);
            marker.setPosition(new GeoPoint(mapMarker.Latitude(), mapMarker.Longitude()));
            this.view.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapLineString mapLineString) {
        Polyline polyline = this.featureOverlays.get(mapLineString);
        if (polyline != null) {
            polyline.setPoints(mapLineString.getPoints());
            this.view.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapPolygon mapPolygon) {
        MultiPolygon multiPolygon = this.featureOverlays.get(mapPolygon);
        if (multiPolygon != null) {
            multiPolygon.setMultiPoints(mapPolygon.getPoints());
            this.view.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureHoles(MapFactory.MapPolygon mapPolygon) {
        MultiPolygon multiPolygon = this.featureOverlays.get(mapPolygon);
        if (multiPolygon != null) {
            multiPolygon.setMultiHoles(mapPolygon.getHolePoints());
            this.view.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapCircle mapCircle) {
        GeoPoint geoPoint = new GeoPoint(mapCircle.Latitude(), mapCircle.Longitude());
        Polygon polygon = this.featureOverlays.get(mapCircle);
        if (polygon != null) {
            polygon.setPoints(Polygon.pointsAsCircle(geoPoint, mapCircle.Radius()));
            this.view.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeaturePosition(MapFactory.MapRectangle mapRectangle) {
        Polygon polygon = this.featureOverlays.get(mapRectangle);
        if (polygon != null) {
            polygon.setPoints(Polygon.pointsAsRect(new org.osmdroid.util.BoundingBox(mapRectangle.NorthLatitude(), mapRectangle.EastLongitude(), mapRectangle.SouthLatitude(), mapRectangle.WestLongitude())));
            this.view.invalidate();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureFill(final MapFactory.HasFill hasFill) {
        OverlayWithIW overlayWithIW = this.featureOverlays.get(hasFill);
        if (overlayWithIW == null) {
            return;
        }
        overlayWithIW.accept(new OverlayWithIWVisitor() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.8
            public void visit(Polyline polyline) {
            }

            public void visit(final Marker marker) throws IOException {
                NativeOpenStreetMapController.this.getMarkerDrawable((MapFactory.MapMarker) hasFill, new AsyncCallbackPair<Drawable>() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.8.1
                    @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
                    public void onFailure(String str) {
                        a.w("Unable to update fill color for marker: ", str, NativeOpenStreetMapController.TAG);
                    }

                    @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
                    public void onSuccess(Drawable drawable) {
                        marker.setIcon(drawable);
                        NativeOpenStreetMapController.this.view.invalidate();
                    }
                });
            }

            public void visit(Polygon polygon) {
                polygon.setFillColor(hasFill.FillColor());
                NativeOpenStreetMapController.this.view.invalidate();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureStroke(final MapFactory.HasStroke hasStroke) {
        OverlayWithIW overlayWithIW = this.featureOverlays.get(hasStroke);
        if (overlayWithIW == null) {
            return;
        }
        overlayWithIW.accept(new OverlayWithIWVisitor() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.9
            public void visit(final Marker marker) throws IOException {
                NativeOpenStreetMapController.this.getMarkerDrawable((MapFactory.MapMarker) hasStroke, new AsyncCallbackPair<Drawable>() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.9.1
                    @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
                    public void onFailure(String str) {
                        a.w("Unable to update stroke color for marker: ", str, NativeOpenStreetMapController.TAG);
                    }

                    @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
                    public void onSuccess(Drawable drawable) {
                        marker.setIcon(drawable);
                        NativeOpenStreetMapController.this.view.invalidate();
                    }
                });
            }

            public void visit(Polyline polyline) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                NativeOpenStreetMapController.this.form.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                polyline.setColor(hasStroke.StrokeColor());
                polyline.setWidth(hasStroke.StrokeWidth() * displayMetrics.density);
                NativeOpenStreetMapController.this.view.invalidate();
            }

            public void visit(Polygon polygon) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                NativeOpenStreetMapController.this.form.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                polygon.setStrokeColor(hasStroke.StrokeColor());
                polygon.setStrokeWidth(hasStroke.StrokeWidth() * displayMetrics.density);
                NativeOpenStreetMapController.this.view.invalidate();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureText(MapFactory.MapFeature mapFeature) {
        OverlayWithIW overlayWithIW = this.featureOverlays.get(mapFeature);
        if (overlayWithIW != null) {
            overlayWithIW.setTitle(mapFeature.Title());
            overlayWithIW.setSnippet(mapFeature.Description());
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureDraggable(MapFactory.MapFeature mapFeature) {
        OverlayWithIW overlayWithIW = this.featureOverlays.get(mapFeature);
        if (overlayWithIW != null) {
            overlayWithIW.setDraggable(mapFeature.Draggable());
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureImage(MapFactory.MapMarker mapMarker) throws IOException {
        final Marker marker = this.featureOverlays.get(mapMarker);
        if (marker == null) {
            return;
        }
        getMarkerDrawable(mapMarker, new AsyncCallbackPair<Drawable>() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.10
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                a.w("Unable to update feature image: ", str, NativeOpenStreetMapController.TAG);
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(Drawable drawable) {
                marker.setIcon(drawable);
                NativeOpenStreetMapController.this.view.invalidate();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void updateFeatureSize(MapFactory.MapMarker mapMarker) throws IOException {
        final Marker marker = this.featureOverlays.get(mapMarker);
        if (marker == null) {
            return;
        }
        getMarkerDrawable(mapMarker, new AsyncCallbackPair<Drawable>() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.11
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                Log.wtf(NativeOpenStreetMapController.TAG, "Cannot find default marker");
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(Drawable drawable) {
                marker.setIcon(drawable);
                NativeOpenStreetMapController.this.view.invalidate();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getMarkerDrawable(MapFactory.MapMarker mapMarker, AsyncCallbackPair<Drawable> asyncCallbackPair) throws IOException {
        String strImageAsset = mapMarker.ImageAsset();
        if (strImageAsset == null || strImageAsset.length() == 0 || strImageAsset.endsWith(".svg")) {
            getMarkerDrawableVector(mapMarker, asyncCallbackPair);
        } else {
            getMarkerDrawableRaster(mapMarker, asyncCallbackPair);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void getMarkerDrawableVector(com.google.appinventor.components.runtime.util.MapFactory.MapMarker r7, com.google.appinventor.components.runtime.util.AsyncCallbackPair<android.graphics.drawable.Drawable> r8) throws java.io.IOException {
        /*
            r6 = this;
            com.caverock.androidsvg.SVG r0 = r6.defaultMarkerSVG
            java.lang.String r1 = "Invalid SVG in Marker asset"
            java.lang.String r2 = "Unable to read Marker asset"
            if (r0 != 0) goto L3d
            org.osmdroid.views.MapView r0 = r6.view     // Catch: java.io.IOException -> L1b com.caverock.androidsvg.SVGParseException -> L1d
            android.content.Context r0 = r0.getContext()     // Catch: java.io.IOException -> L1b com.caverock.androidsvg.SVGParseException -> L1d
            android.content.res.AssetManager r0 = r0.getAssets()     // Catch: java.io.IOException -> L1b com.caverock.androidsvg.SVGParseException -> L1d
            java.lang.String r3 = "marker.svg"
            com.caverock.androidsvg.SVG r0 = com.caverock.androidsvg.SVG.getFromAsset(r0, r3)     // Catch: java.io.IOException -> L1b com.caverock.androidsvg.SVGParseException -> L1d
            r6.defaultMarkerSVG = r0     // Catch: java.io.IOException -> L1b com.caverock.androidsvg.SVGParseException -> L1d
            goto L2a
        L1b:
            r0 = move-exception
            goto L1f
        L1d:
            r0 = move-exception
            goto L25
        L1f:
            java.lang.String r3 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG
            android.util.Log.e(r3, r2, r0)
            goto L2a
        L25:
            java.lang.String r3 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG
            android.util.Log.e(r3, r1, r0)
        L2a:
            com.caverock.androidsvg.SVG r0 = r6.defaultMarkerSVG
            if (r0 == 0) goto L35
            com.caverock.androidsvg.SVG$Svg r0 = r0.getRootElement()
            if (r0 == 0) goto L35
            goto L3d
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Unable to load SVG from assets"
            r7.<init>(r8)
            throw r7
        L3d:
            java.lang.String r0 = r7.ImageAsset()
            r3 = 0
            if (r0 == 0) goto L9b
            int r4 = r0.length()
            if (r4 == 0) goto L9b
            org.osmdroid.views.MapView r4 = r6.view     // Catch: java.io.IOException -> L59 com.caverock.androidsvg.SVGParseException -> L5b
            android.content.Context r4 = r4.getContext()     // Catch: java.io.IOException -> L59 com.caverock.androidsvg.SVGParseException -> L5b
            android.content.res.AssetManager r4 = r4.getAssets()     // Catch: java.io.IOException -> L59 com.caverock.androidsvg.SVGParseException -> L5b
            com.caverock.androidsvg.SVG r4 = com.caverock.androidsvg.SVG.getFromAsset(r4, r0)     // Catch: java.io.IOException -> L59 com.caverock.androidsvg.SVGParseException -> L5b
            goto L69
        L59:
            r4 = move-exception
            goto L5d
        L5b:
            r4 = move-exception
            goto L63
        L5d:
            java.lang.String r5 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG
            android.util.Log.e(r5, r2, r4)
            goto L68
        L63:
            java.lang.String r5 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG
            android.util.Log.e(r5, r1, r4)
        L68:
            r4 = r3
        L69:
            if (r4 != 0) goto L9a
            com.google.appinventor.components.runtime.Form r5 = r6.form     // Catch: java.lang.Throwable -> L7c java.io.IOException -> L7e com.caverock.androidsvg.SVGParseException -> L80
            java.io.InputStream r3 = com.google.appinventor.components.runtime.util.MediaUtil.openMedia(r5, r0)     // Catch: java.lang.Throwable -> L7c java.io.IOException -> L7e com.caverock.androidsvg.SVGParseException -> L80
            com.caverock.androidsvg.SVG r0 = com.caverock.androidsvg.SVG.getFromInputStream(r3)     // Catch: java.lang.Throwable -> L7c java.io.IOException -> L7e com.caverock.androidsvg.SVGParseException -> L80
            java.lang.String r1 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG
            com.google.appinventor.components.runtime.util.IOUtils.closeQuietly(r1, r3)
            r3 = r0
            goto L9b
        L7c:
            r7 = move-exception
            goto L94
        L7e:
            r0 = move-exception
            goto L82
        L80:
            r0 = move-exception
            goto L8b
        L82:
            java.lang.String r1 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG     // Catch: java.lang.Throwable -> L7c
            android.util.Log.e(r1, r2, r0)     // Catch: java.lang.Throwable -> L7c
            com.google.appinventor.components.runtime.util.IOUtils.closeQuietly(r1, r3)
            goto L9a
        L8b:
            java.lang.String r2 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG     // Catch: java.lang.Throwable -> L7c
            android.util.Log.e(r2, r1, r0)     // Catch: java.lang.Throwable -> L7c
            com.google.appinventor.components.runtime.util.IOUtils.closeQuietly(r2, r3)
            goto L9a
        L94:
            java.lang.String r8 = com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.TAG
            com.google.appinventor.components.runtime.util.IOUtils.closeQuietly(r8, r3)
            throw r7
        L9a:
            r3 = r4
        L9b:
            if (r3 != 0) goto L9f
            com.caverock.androidsvg.SVG r3 = r6.defaultMarkerSVG
        L9f:
            android.graphics.drawable.Drawable r7 = r6.rasterizeSVG(r7, r3)     // Catch: java.lang.Exception -> La7
            r8.onSuccess(r7)     // Catch: java.lang.Exception -> La7
            goto Laf
        La7:
            r7 = move-exception
            java.lang.String r7 = r7.getMessage()
            r8.onFailure(r7)
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.getMarkerDrawableVector(com.google.appinventor.components.runtime.util.MapFactory$MapMarker, com.google.appinventor.components.runtime.util.AsyncCallbackPair):void");
    }

    private void getMarkerDrawableRaster(final MapFactory.MapMarker mapMarker, final AsyncCallbackPair<Drawable> asyncCallbackPair) {
        MediaUtil.getBitmapDrawableAsync(this.form, mapMarker.ImageAsset(), mapMarker.Width(), mapMarker.Height(), new AsyncCallbackPair<BitmapDrawable>() { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.12
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                asyncCallbackPair.onSuccess(NativeOpenStreetMapController.this.getDefaultMarkerDrawable(mapMarker));
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(BitmapDrawable bitmapDrawable) {
                bitmapDrawable.setAlpha(Math.round(mapMarker.FillOpacity() * 255.0f));
                asyncCallbackPair.onSuccess(bitmapDrawable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getDefaultMarkerDrawable(MapFactory.MapMarker mapMarker) {
        return rasterizeSVG(mapMarker, this.defaultMarkerSVG);
    }

    private static float getBestGuessWidth(SVG.Svg svg) {
        if (svg.width != null) {
            return svg.width.floatValue();
        }
        if (svg.viewBox != null) {
            return svg.viewBox.width;
        }
        return 30.0f;
    }

    private static float getBestGuessHeight(SVG.Svg svg) {
        if (svg.height != null) {
            return svg.height.floatValue();
        }
        if (svg.viewBox != null) {
            return svg.viewBox.height;
        }
        return 50.0f;
    }

    private Drawable rasterizeSVG(MapFactory.MapMarker mapMarker, SVG svg) {
        float f;
        SVG.Svg rootElement = svg.getRootElement();
        float f2 = this.view.getContext().getResources().getDisplayMetrics().density;
        float bestGuessHeight = mapMarker.Height() <= 0 ? getBestGuessHeight(rootElement) : mapMarker.Height();
        float bestGuessWidth = mapMarker.Width() <= 0 ? getBestGuessWidth(rootElement) : mapMarker.Width();
        float bestGuessHeight2 = bestGuessHeight / getBestGuessHeight(rootElement);
        float bestGuessWidth2 = bestGuessWidth / getBestGuessWidth(rootElement);
        float fSqrt = (float) Math.sqrt((bestGuessWidth2 * bestGuessWidth2) + (bestGuessHeight2 * bestGuessHeight2));
        Paint paint = new Paint();
        Paint paint2 = new Paint();
        PaintUtil.changePaint(paint, mapMarker.FillColor());
        PaintUtil.changePaint(paint2, mapMarker.StrokeColor());
        SVG.Length length = new SVG.Length(mapMarker.StrokeWidth() / fSqrt);
        for (SVG.SvgConditionalElement svgConditionalElement : rootElement.getChildren()) {
            if (svgConditionalElement instanceof SVG.SvgConditionalElement) {
                SVG.SvgConditionalElement svgConditionalElement2 = svgConditionalElement;
                svgConditionalElement2.baseStyle.fill = new SVG.Colour(paint.getColor());
                svgConditionalElement2.baseStyle.fillOpacity = Float.valueOf(paint.getAlpha() / 255.0f);
                svgConditionalElement2.baseStyle.stroke = new SVG.Colour(paint2.getColor());
                svgConditionalElement2.baseStyle.strokeOpacity = Float.valueOf(paint2.getAlpha() / 255.0f);
                svgConditionalElement2.baseStyle.strokeWidth = length;
                svgConditionalElement2.baseStyle.specifiedFlags = 61L;
                if (svgConditionalElement2.style != null) {
                    if ((svgConditionalElement2.style.specifiedFlags & SPECIFIED_FILL) == 0) {
                        f = 255.0f;
                        svgConditionalElement2.style.fill = new SVG.Colour(paint.getColor());
                        svgConditionalElement2.style.specifiedFlags |= SPECIFIED_FILL;
                    } else {
                        f = 255.0f;
                    }
                    if ((svgConditionalElement2.style.specifiedFlags & SPECIFIED_FILL_OPACITY) == 0) {
                        svgConditionalElement2.style.fillOpacity = Float.valueOf(paint.getAlpha() / f);
                        svgConditionalElement2.style.specifiedFlags |= SPECIFIED_FILL_OPACITY;
                    }
                    if ((svgConditionalElement2.style.specifiedFlags & SPECIFIED_STROKE) == 0) {
                        svgConditionalElement2.style.stroke = new SVG.Colour(paint2.getColor());
                        svgConditionalElement2.style.specifiedFlags |= SPECIFIED_STROKE;
                    }
                    if ((svgConditionalElement2.style.specifiedFlags & 16) == 0) {
                        svgConditionalElement2.style.strokeOpacity = Float.valueOf(paint2.getAlpha() / f);
                        svgConditionalElement2.style.specifiedFlags |= 16;
                    }
                    if ((svgConditionalElement2.style.specifiedFlags & SPECIFIED_STROKE_WIDTH) == 0) {
                        svgConditionalElement2.style.strokeWidth = length;
                        svgConditionalElement2.style.specifiedFlags |= SPECIFIED_STROKE_WIDTH;
                    }
                }
            }
        }
        Picture pictureRenderToPicture = svg.renderToPicture();
        Picture picture = new Picture();
        Canvas canvasBeginRecording = picture.beginRecording((int) (((mapMarker.StrokeWidth() * 2.0f) + bestGuessWidth) * f2), (int) (((mapMarker.StrokeWidth() * 2.0f) + bestGuessHeight) * f2));
        canvasBeginRecording.scale(bestGuessWidth2 * f2, f2 * bestGuessHeight2);
        canvasBeginRecording.translate(length.floatValue(), length.floatValue());
        pictureRenderToPicture.draw(canvasBeginRecording);
        picture.endRecording();
        return new PictureDrawable(picture);
    }

    private void createNativeMarker(MapFactory.MapMarker mapMarker, AsyncCallbackPair<Marker> asyncCallbackPair) throws IOException {
        final OverlayWithIW marker = new Marker(this.view);
        this.featureOverlays.put(mapMarker, marker);
        marker.setDraggable(mapMarker.Draggable());
        marker.setTitle(mapMarker.Title());
        marker.setSnippet(mapMarker.Description());
        marker.setPosition(new GeoPoint(mapMarker.Latitude(), mapMarker.Longitude()));
        marker.setAnchor(0.5f, 1.0f);
        getMarkerDrawable(mapMarker, new AsyncCallbackFacade<Drawable, Marker>(asyncCallbackPair) { // from class: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController.13
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackFacade, com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String str) {
                this.callback.onFailure(str);
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(Drawable drawable) {
                marker.setIcon(drawable);
                this.callback.onSuccess(marker);
            }
        });
    }

    private Polyline createNativePolyline(MapFactory.MapLineString mapLineString) {
        Polyline polyline = new Polyline();
        polyline.setDraggable(mapLineString.Draggable());
        polyline.setTitle(mapLineString.Title());
        polyline.setSnippet(mapLineString.Description());
        polyline.setPoints(mapLineString.getPoints());
        polyline.setColor(mapLineString.StrokeColor());
        polyline.setWidth(mapLineString.StrokeWidth());
        polyline.setInfoWindow(this.defaultInfoWindow);
        return polyline;
    }

    private void createPolygon(Polygon polygon, MapFactory.MapFeature mapFeature) {
        polygon.setDraggable(mapFeature.Draggable());
        polygon.setTitle(mapFeature.Title());
        polygon.setSnippet(mapFeature.Description());
        polygon.setStrokeColor(((MapFactory.HasStroke) mapFeature).StrokeColor());
        polygon.setStrokeWidth(r0.StrokeWidth());
        polygon.setFillColor(((MapFactory.HasFill) mapFeature).FillColor());
        polygon.setInfoWindow(this.defaultInfoWindow);
    }

    private MultiPolygon createNativePolygon(MapFactory.MapPolygon mapPolygon) {
        MultiPolygon multiPolygon = new MultiPolygon();
        createPolygon(multiPolygon, mapPolygon);
        multiPolygon.setMultiPoints(mapPolygon.getPoints());
        multiPolygon.setMultiHoles(mapPolygon.getHolePoints());
        return multiPolygon;
    }

    private Polygon createNativeCircle(MapFactory.MapCircle mapCircle) {
        Polygon polygon = new Polygon();
        createPolygon(polygon, mapCircle);
        polygon.setPoints(Polygon.pointsAsCircle(new GeoPoint(mapCircle.Latitude(), mapCircle.Longitude()), mapCircle.Radius()));
        return polygon;
    }

    private Polygon createNativeRectangle(MapFactory.MapRectangle mapRectangle) {
        org.osmdroid.util.BoundingBox boundingBox = new org.osmdroid.util.BoundingBox(mapRectangle.NorthLatitude(), mapRectangle.EastLongitude(), mapRectangle.SouthLatitude(), mapRectangle.WestLongitude());
        Polygon polygon = new Polygon();
        createPolygon(polygon, mapRectangle);
        polygon.setPoints(new ArrayList(Polygon.pointsAsRect(boundingBox)));
        return polygon;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void showFeature(MapFactory.MapFeature mapFeature) {
        if (this.hiddenFeatures.contains(mapFeature)) {
            return;
        }
        showOverlay(this.featureOverlays.get(mapFeature));
    }

    public void showOverlay(OverlayWithIW overlayWithIW) {
        this.view.getOverlayManager().add(overlayWithIW);
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void hideFeature(MapFactory.MapFeature mapFeature) {
        hideOverlay(this.featureOverlays.get(mapFeature));
    }

    public void hideOverlay(OverlayWithIW overlayWithIW) {
        this.view.getOverlayManager().remove(overlayWithIW);
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isFeatureVisible(MapFactory.MapFeature mapFeature) {
        OverlayWithIW overlayWithIW = this.featureOverlays.get(mapFeature);
        return overlayWithIW != null && this.view.getOverlayManager().contains(overlayWithIW);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isFeatureCollectionVisible(MapFactory.MapFeatureCollection mapFeatureCollection) {
        return !this.hiddenFeatureCollections.contains(mapFeatureCollection);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setFeatureCollectionVisible(MapFactory.MapFeatureCollection mapFeatureCollection, boolean z) {
        if (z || !this.hiddenFeatureCollections.contains(mapFeatureCollection)) {
            if (!z || this.hiddenFeatureCollections.contains(mapFeatureCollection)) {
                if (z) {
                    this.hiddenFeatureCollections.remove(mapFeatureCollection);
                    for (MapFactory.MapFeature mapFeature : mapFeatureCollection) {
                        this.hiddenFeatures.remove(mapFeature);
                        if (mapFeature.Visible()) {
                            showFeature(mapFeature);
                        }
                    }
                    return;
                }
                this.hiddenFeatureCollections.add(mapFeatureCollection);
                for (MapFactory.MapFeature mapFeature2 : mapFeatureCollection) {
                    this.hiddenFeatures.add(mapFeature2);
                    hideFeature(mapFeature2);
                }
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void showInfobox(MapFactory.MapFeature mapFeature) {
        Polyline polyline = (OverlayWithIW) this.featureOverlays.get(mapFeature);
        if (polyline instanceof Marker) {
            polyline.showInfoWindow();
        } else if (polyline instanceof Polyline) {
            polyline.showInfoWindow(mapFeature.getCentroid());
        } else {
            ((Polygon) polyline).showInfoWindow(mapFeature.getCentroid());
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void hideInfobox(MapFactory.MapFeature mapFeature) {
        this.featureOverlays.get(mapFeature).closeInfoWindow();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isInfoboxVisible(MapFactory.MapFeature mapFeature) {
        OverlayWithIW overlayWithIW = this.featureOverlays.get(mapFeature);
        return overlayWithIW != null && overlayWithIW.isInfoWindowOpen();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public org.osmdroid.util.BoundingBox getBoundingBox() {
        return this.view.getBoundingBox();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setBoundingBox(org.osmdroid.util.BoundingBox boundingBox) {
        this.view.getController().setCenter(boundingBox.getCenter());
        this.view.getController().zoomToSpan(boundingBox.getLatitudeSpan(), boundingBox.getLongitudeSpan());
    }

    public boolean onScroll(ScrollEvent scrollEvent) {
        Iterator<MapFactory.MapEventListener> it = this.eventListeners.iterator();
        while (it.hasNext()) {
            it.next().onBoundsChanged();
        }
        return true;
    }

    public boolean onZoom(ZoomEvent zoomEvent) {
        this.zoomControls.updateButtons();
        Iterator<MapFactory.MapEventListener> it = this.eventListeners.iterator();
        while (it.hasNext()) {
            it.next().onZoom();
        }
        return true;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public LocationSensor.LocationSensorListener getLocationListener() {
        return this.locationProvider;
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public int getOverlayCount() {
        System.err.println(this.view.getOverlays());
        return this.view.getOverlays().size();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setRotation(float f) {
        this.view.setMapOrientation(f);
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public float getRotation() {
        return this.view.getMapOrientation();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setScaleVisible(boolean z) {
        this.scaleBar.setEnabled(z);
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public boolean isScaleVisible() {
        return this.scaleBar.isEnabled();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setScaleUnits(MapFactory.MapScaleUnits mapScaleUnits) {
        int i = AnonymousClass14.$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits[mapScaleUnits.ordinal()];
        if (i == 1) {
            this.scaleBar.setUnitsOfMeasure(ScaleBarOverlay.UnitsOfMeasure.metric);
        } else if (i == 2) {
            this.scaleBar.setUnitsOfMeasure(ScaleBarOverlay.UnitsOfMeasure.imperial);
        } else {
            throw new IllegalArgumentException("Unallowable unit system: " + mapScaleUnits);
        }
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public MapFactory.MapScaleUnits getScaleUnits() {
        int i = AnonymousClass14.$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure[this.scaleBar.getUnitsOfMeasure().ordinal()];
        if (i == 1) {
            return MapFactory.MapScaleUnits.IMPERIAL;
        }
        if (i == 2) {
            return MapFactory.MapScaleUnits.METRIC;
        }
        throw new IllegalStateException("Somehow we have an unallowed unit system");
    }

    /* renamed from: com.google.appinventor.components.runtime.util.NativeOpenStreetMapController$14, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass14 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$MapType;
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$ScaleUnits;
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits;
        static final /* synthetic */ int[] $SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure;

        static {
            int[] iArr = new int[ScaleUnits.values().length];
            $SwitchMap$com$google$appinventor$components$common$ScaleUnits = iArr;
            try {
                iArr[ScaleUnits.Metric.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ScaleUnits[ScaleUnits.Imperial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ScaleBarOverlay.UnitsOfMeasure.values().length];
            $SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure = iArr2;
            try {
                iArr2[ScaleBarOverlay.UnitsOfMeasure.imperial.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure[ScaleBarOverlay.UnitsOfMeasure.metric.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[MapFactory.MapScaleUnits.values().length];
            $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits = iArr3;
            try {
                iArr3[MapFactory.MapScaleUnits.METRIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits[MapFactory.MapScaleUnits.IMPERIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr4 = new int[MapType.values().length];
            $SwitchMap$com$google$appinventor$components$common$MapType = iArr4;
            try {
                iArr4[MapType.Road.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$MapType[MapType.Aerial.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$MapType[MapType.Terrain.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public void setScaleUnitsAbstract(ScaleUnits scaleUnits) {
        int i = AnonymousClass14.$SwitchMap$com$google$appinventor$components$common$ScaleUnits[scaleUnits.ordinal()];
        if (i == 1) {
            this.scaleBar.setUnitsOfMeasure(ScaleBarOverlay.UnitsOfMeasure.metric);
        } else if (i == 2) {
            this.scaleBar.setUnitsOfMeasure(ScaleBarOverlay.UnitsOfMeasure.imperial);
        }
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.util.MapFactory.MapController
    public ScaleUnits getScaleUnitsAbstract() {
        int i = AnonymousClass14.$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure[this.scaleBar.getUnitsOfMeasure().ordinal()];
        if (i == 1) {
            return ScaleUnits.Imperial;
        }
        if (i == 2) {
            return ScaleUnits.Metric;
        }
        throw new IllegalStateException("Somehow we have an unallowed unit system");
    }

    public static class MultiPolygon extends Polygon {
        private List<Polygon> children = new ArrayList();
        private Polygon.OnClickListener clickListener;
        private Polygon.OnDragListener dragListener;
        private boolean draggable;

        public void showInfoWindow() {
            if (this.children.size() > 0) {
                this.children.get(0).showInfoWindow();
            }
        }

        public void draw(Canvas canvas, MapView mapView, boolean z) {
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().draw(canvas, mapView, z);
            }
        }

        public List<List<GeoPoint>> getMultiPoints() {
            ArrayList arrayList = new ArrayList();
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getPoints());
            }
            return arrayList;
        }

        public void setMultiPoints(List<List<GeoPoint>> list) {
            Iterator<Polygon> it = this.children.iterator();
            Iterator<List<GeoPoint>> it2 = list.iterator();
            while (it.hasNext() && it2.hasNext()) {
                it.next().setPoints(it2.next());
            }
            while (it.hasNext()) {
                it.next();
                it.remove();
            }
            while (it2.hasNext()) {
                Polygon polygon = new Polygon();
                polygon.setPoints(it2.next());
                polygon.setStrokeColor(getStrokeColor());
                polygon.setFillColor(getFillColor());
                polygon.setStrokeWidth(getStrokeWidth());
                polygon.setInfoWindow(getInfoWindow());
                polygon.setDraggable(this.draggable);
                polygon.setOnClickListener(this.clickListener);
                polygon.setOnDragListener(this.dragListener);
                this.children.add(polygon);
            }
        }

        public List<List<List<GeoPoint>>> getMultiHoles() {
            ArrayList arrayList = new ArrayList();
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getHoles());
            }
            return arrayList;
        }

        public void setMultiHoles(List<List<List<GeoPoint>>> list) {
            if (list == null || list.isEmpty()) {
                Iterator<Polygon> it = this.children.iterator();
                while (it.hasNext()) {
                    it.next().setHoles(Collections.EMPTY_LIST);
                }
            } else {
                if (list.size() != this.children.size()) {
                    throw new IllegalArgumentException("Holes and points are not of the same arity.");
                }
                Iterator<Polygon> it2 = this.children.iterator();
                Iterator<List<List<GeoPoint>>> it3 = list.iterator();
                while (it2.hasNext() && it3.hasNext()) {
                    it2.next().setHoles(it3.next());
                }
            }
        }

        public void setDraggable(boolean z) {
            super.setDraggable(z);
            this.draggable = z;
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setDraggable(z);
            }
        }

        public void setOnClickListener(Polygon.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
            this.clickListener = onClickListener;
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setOnClickListener(onClickListener);
            }
        }

        public void setOnDragListener(Polygon.OnDragListener onDragListener) {
            super.setOnDragListener(onDragListener);
            this.dragListener = onDragListener;
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setOnDragListener(onDragListener);
            }
        }

        public void setStrokeWidth(float f) {
            super.setStrokeWidth(f);
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setStrokeWidth(f);
            }
        }

        public void setStrokeColor(int i) {
            super.setStrokeColor(i);
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setStrokeColor(i);
            }
        }

        public void setFillColor(int i) {
            super.setFillColor(i);
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setFillColor(i);
            }
        }

        public void setTitle(String str) {
            super.setTitle(str);
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setTitle(str);
            }
        }

        public void setSnippet(String str) {
            super.setSnippet(str);
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setSnippet(str);
            }
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                if (it.next().onSingleTapConfirmed(motionEvent, mapView)) {
                    return true;
                }
            }
            return false;
        }

        public boolean contains(MotionEvent motionEvent) {
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                if (it.next().contains(motionEvent)) {
                    return true;
                }
            }
            return false;
        }

        public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
            boolean zContains = contains(motionEvent);
            if (zContains) {
                if (this.mDraggable) {
                    this.mIsDragged = true;
                    closeInfoWindow();
                    this.mDragStartPoint = motionEvent;
                    if (this.mOnDragListener != null) {
                        this.mOnDragListener.onDragStart(this);
                    }
                    moveToEventPosition(motionEvent, this.mDragStartPoint, mapView);
                    return zContains;
                }
                if (this.mOnClickListener != null) {
                    this.mOnClickListener.onLongClick(this, mapView, mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY()));
                }
            }
            return zContains;
        }

        public void moveToEventPosition(MotionEvent motionEvent, MotionEvent motionEvent2, MapView mapView) {
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().moveToEventPosition(motionEvent, motionEvent2, mapView);
            }
        }

        public void finishMove(MotionEvent motionEvent, MotionEvent motionEvent2, MapView mapView) {
            Iterator<Polygon> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().finishMove(motionEvent, motionEvent2, mapView);
            }
        }

        public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
            if (this.mDraggable && this.mIsDragged) {
                if (motionEvent.getAction() == 1) {
                    this.mIsDragged = false;
                    finishMove(this.mDragStartPoint, motionEvent, mapView);
                    if (this.mOnDragListener != null) {
                        this.mOnDragListener.onDragEnd(this);
                    }
                    return true;
                }
                if (motionEvent.getAction() == 2) {
                    moveToEventPosition(motionEvent, this.mDragStartPoint, mapView);
                    if (this.mOnDragListener != null) {
                        this.mOnDragListener.onDrag(this);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}

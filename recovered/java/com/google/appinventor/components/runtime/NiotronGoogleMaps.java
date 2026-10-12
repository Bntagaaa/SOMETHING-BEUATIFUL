package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import androidx.lifecycle.CoroutineLiveDataKt;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.UrlTileProvider;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.OnInitializeListener;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION, com.google.android.providers.gsf.permission.READ_GSERVICES, android.permission.WRITE_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.MAPS, description = "Visible component that show information on Google map.", version = 1)
@UsesLibraries(libraries = "play-services-maps.aar, play-services-maps.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, play-services-location.aar, play-services-location.jar, gson.jar")
/* loaded from: classes.dex */
public class NiotronGoogleMaps extends AndroidViewComponent implements OnResumeListener, OnInitializeListener, OnPauseListener, GoogleMap.OnMarkerClickListener, GoogleMap.OnInfoWindowClickListener, GoogleMap.OnMarkerDragListener, GoogleMap.OnMapClickListener, GoogleMap.OnMapLongClickListener, GoogleMap.OnCameraChangeListener, LocationListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, OnMapReadyCallback {
    private static final double DEFAULT_RADIUS = 1000000.0d;
    public static final double RADIUS_OF_EARTH_METERS = 6371009.0d;
    private static final String TAG = "NiotronGoogleMaps";
    private final String MAP_FRAGMENT_TAG;
    private final Handler androidUIHandler;
    private HashMap<Object, Integer> circles;
    private boolean compassEnabled;
    private final Activity context;
    private boolean enableCameraChangeListener;
    private boolean enableMapClickListener;
    private boolean enableMapLongClickListener;
    private final Form form;
    private GoogleMap googleMap;
    private boolean isMapReady;
    private boolean isRunning;
    private int mAlpha;
    private List<DraggableCircle> mCircles;
    private int mColorHue;
    private int mFillColor;
    private GoogleApiClient mGoogleApiClient;
    private GoogleMap mMap;
    private MapFragment mMapFragment;
    private int mMarkerColor;
    private boolean mMarkerDraggable;
    private int mStrokeColor;
    private float mStrokeWidth;
    private UiSettings mUiSettings;
    private int mapType;
    private HashMap<com.google.android.gms.maps.model.Marker, Integer> markers;
    private YailList markersList;
    private boolean myLocationEnabled;
    private HashMap<com.google.android.gms.maps.model.Polygon, Integer> polygons;
    private boolean rotateEnabled;
    private Bundle savedInstanceState;
    private boolean scrollEnabled;
    private android.widget.LinearLayout viewLayout;
    private boolean zoomControlEnabled;
    private boolean zoomGesturesEnabled;
    private static final AtomicInteger snextCircleId = new AtomicInteger(1);
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
    private static final AtomicInteger snextMarkerId = new AtomicInteger(1);
    private static final LocationRequest REQUEST = LocationRequest.create().setInterval(CoroutineLiveDataKt.DEFAULT_TIMEOUT).setFastestInterval(16).setPriority(100);

    public void onConnectionFailed(ConnectionResult connectionResult) {
    }

    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.appinventor.components.runtime.util.OnInitializeListener
    public void onInitialize() {
    }

    public NiotronGoogleMaps(ComponentContainer componentContainer) throws PackageManager.NameNotFoundException, IOException {
        super(componentContainer);
        this.markers = new HashMap<>();
        this.mapType = 1;
        this.myLocationEnabled = false;
        this.compassEnabled = true;
        this.rotateEnabled = true;
        this.scrollEnabled = true;
        this.zoomControlEnabled = true;
        this.zoomGesturesEnabled = true;
        this.mMarkerColor = Component.COLOR_BLUE;
        this.mMarkerDraggable = false;
        this.enableMapClickListener = false;
        this.enableMapLongClickListener = false;
        this.enableCameraChangeListener = false;
        this.circles = new HashMap<>();
        this.mCircles = new ArrayList(1);
        this.polygons = new HashMap<>();
        this.mStrokeWidth = 2.0f;
        this.mStrokeColor = -16777216;
        this.mColorHue = 0;
        this.mAlpha = 20;
        this.mFillColor = Color.HSVToColor(20, new float[]{0, 1.0f, 1.0f});
        this.androidUIHandler = new Handler();
        this.isMapReady = false;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        Form form$form = componentContainer.$form();
        this.form = form$form;
        this.savedInstanceState = form$form.getOnCreateBundle();
        this.mGoogleApiClient = new GoogleApiClient.Builder(activity$context, this, this).addApi(LocationServices.API).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
        this.viewLayout = new android.widget.LinearLayout(activity$context);
        this.viewLayout.setId(generateViewId());
        String strG = _COROUTINE.a.g("map_", System.currentTimeMillis());
        this.MAP_FRAGMENT_TAG = strG;
        _COROUTINE.a.C("map_tag:", strG, TAG);
        checkGooglePlayServiceSDK();
        checkGoogleMapInstalled();
        MapFragment mapFragmentFindFragmentByTag = form$form.getFragmentManager().findFragmentByTag(strG);
        this.mMapFragment = mapFragmentFindFragmentByTag;
        if (mapFragmentFindFragmentByTag == null) {
            this.mMapFragment = MapFragment.newInstance();
            FragmentTransaction fragmentTransactionBeginTransaction = form$form.getFragmentManager().beginTransaction();
            Log.i(TAG, "here before adding fragment");
            fragmentTransactionBeginTransaction.replace(this.viewLayout.getId(), this.mMapFragment, strG);
            if (!componentContainer.$context().isFinishing()) {
                fragmentTransactionBeginTransaction.commit();
            }
        }
        setUpMapIfNeeded();
        componentContainer.$add(this);
        Width(-2);
        Height(-2);
        form$form.registerForOnInitialize(this);
        form$form.registerForOnResume(this);
        form$form.registerForOnPause(this);
    }

    private static int generateViewId() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        do {
            atomicInteger = sNextGeneratedId;
            i = atomicInteger.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets the google map width")
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets the google map height")
    public void Height(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Height(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpMapIfNeeded() {
        if (this.mMap == null) {
            this.isMapReady = false;
            Log.i(TAG, "setUpMapIfNeeded. mMap is null");
            this.mMapFragment.getMapAsync(this);
            return;
        }
        this.isMapReady = true;
    }

    public void onMapReady(GoogleMap googleMap) {
        Log.i(TAG, "Yes, we have a google map...");
        this.isMapReady = true;
        this.mMap = googleMap;
        setUpMap();
    }

    private void setUpLocationClientIfNeeded() {
        if (this.mGoogleApiClient == null) {
            this.mGoogleApiClient = new GoogleApiClient.Builder(this.context, this, this).addApi(LocationServices.API).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
        }
    }

    private void setUpMap() {
        Log.i(TAG, "in setUpMap()");
        this.mMap.setOnMarkerClickListener(this);
        this.mMap.setOnInfoWindowClickListener(this);
        this.mMap.setOnMarkerDragListener(this);
        setupUiSettings();
        MapIsReady();
    }

    private void setupUiSettings() {
        GoogleMap googleMap;
        if (this.mUiSettings != null || (googleMap = this.mMap) == null) {
            return;
        }
        UiSettings uiSettings = googleMap.getUiSettings();
        this.mUiSettings = uiSettings;
        uiSettings.setCompassEnabled(this.compassEnabled);
        this.mUiSettings.setRotateGesturesEnabled(this.rotateEnabled);
        this.mUiSettings.setScrollGesturesEnabled(this.scrollEnabled);
        this.mUiSettings.setZoomControlsEnabled(this.zoomControlEnabled);
        this.mUiSettings.setZoomGesturesEnabled(this.zoomGesturesEnabled);
    }

    @SimpleFunction(description = "Enables/disables the compass widget on the map's ui. Call this only after event \"MapIsReady\" is received")
    public void EnableCompass(boolean z) {
        if (this.isMapReady) {
            if (this.mUiSettings == null) {
                setupUiSettings();
            }
            this.compassEnabled = z;
            this.mUiSettings.setCompassEnabled(z);
        }
    }

    @SimpleProperty(description = "Indicates whether the compass widget is currently enabled in the map ui")
    public boolean CompassEnabled() {
        return this.mUiSettings.isCompassEnabled();
    }

    @SimpleFunction(description = "Enables/disables the capability to rotate a map on the ui. Call this only after the event \"MapIsReady\" is received.")
    public void EnableRotate(boolean z) {
        if (this.isMapReady) {
            if (this.mUiSettings == null) {
                setupUiSettings();
            }
            this.rotateEnabled = z;
            this.mUiSettings.setRotateGesturesEnabled(z);
        }
    }

    @SimpleProperty(description = "Indicates whether the capability to rotate a map on the ui is currently enabled")
    public boolean RotateEnabled() {
        return this.mUiSettings.isRotateGesturesEnabled();
    }

    @SimpleFunction(description = "Enables/disables the capability to scroll a map on the ui. Call this only after the event \"MapIsReady\" is received")
    public void EnableScroll(boolean z) {
        if (this.isMapReady) {
            if (this.mUiSettings == null) {
                setupUiSettings();
            }
            this.scrollEnabled = z;
            this.mUiSettings.setScrollGesturesEnabled(z);
        }
    }

    @SimpleProperty(description = "Indicates whether the capability to scroll a map on the ui is currently enabled")
    public boolean ScrollEnabled() {
        return this.mUiSettings.isScrollGesturesEnabled();
    }

    @SimpleFunction(description = "Enables/disables the zoom widget on the map's ui. Call this only after the event \"MapIsReady\" is received")
    public void EnableZoomControl(boolean z) {
        if (this.mUiSettings == null) {
            setupUiSettings();
        }
        this.zoomControlEnabled = z;
        this.mUiSettings.setZoomControlsEnabled(z);
    }

    @SimpleProperty(description = "Indicates whether the zoom widget on the map ui is currently enabled")
    public boolean ZoomControlEnabled() {
        return this.mUiSettings.isZoomControlsEnabled();
    }

    @SimpleFunction(description = "Enables/disables zoom gesture on the map ui. Call this only after the event  \"MapIsReady\" is received. ")
    public void EnableZoomGesture(boolean z) {
        if (this.isMapReady) {
            if (this.mUiSettings == null) {
                setupUiSettings();
            }
            this.zoomGesturesEnabled = z;
            this.mUiSettings.setZoomGesturesEnabled(z);
        }
    }

    @SimpleProperty(description = "Indicates whether the zoom gesture is currently enabled")
    public boolean ZoomGestureEnabled() {
        return this.mUiSettings.isZoomGesturesEnabled();
    }

    @SimpleEvent(description = "Indicates that the map has been rendered and ready for adding markers or changing other settings. Please add or updating markers within this event")
    public void MapIsReady() {
        Log.i(TAG, "Map is ready for adding markers and other setting");
        this.isMapReady = true;
        EventDispatcher.dispatchEvent(this, "MapIsReady", new Object[0]);
    }

    private void checkGooglePlayServiceSDK() {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(this.context);
        Log.i(TAG, "googlePlayServicesAvailable:" + iIsGooglePlayServicesAvailable);
        if (iIsGooglePlayServicesAvailable == 1) {
            this.form.dispatchErrorOccurredEvent(this, "checkGooglePlayServiceSDK", ErrorMessages.ERROR_GOOGLE_PLAY_NOT_INSTALLED, new Object[0]);
            return;
        }
        if (iIsGooglePlayServicesAvailable == 2) {
            this.form.dispatchErrorOccurredEvent(this, "checkGooglePlayServiceSDK", ErrorMessages.ERROR_GOOGLE_PLAY_SERVICE_UPDATE_REQUIRED, new Object[0]);
        } else if (iIsGooglePlayServicesAvailable == 3) {
            this.form.dispatchErrorOccurredEvent(this, "checkGooglePlayServiceSDK", ErrorMessages.ERROR_GOOGLE_PLAY_DISABLED, new Object[0]);
        } else {
            if (iIsGooglePlayServicesAvailable != 9) {
                return;
            }
            this.form.dispatchErrorOccurredEvent(this, "checkGooglePlayServiceSDK", ErrorMessages.ERROR_GOOGLE_PLAY_INVALID, new Object[0]);
        }
    }

    private void checkGoogleMapInstalled() throws PackageManager.NameNotFoundException {
        try {
            this.context.getPackageManager().getApplicationInfo("com.google.android.apps.maps", 0);
        } catch (PackageManager.NameNotFoundException unused) {
            this.form.dispatchErrorOccurredEvent(this, "checkGoogleMapInstalled", ErrorMessages.ERROR_GOOGLE_MAP_NOT_INSTALLED, new Object[0]);
        }
    }

    @SimpleFunction(description = "Create a circle overlay on the map UI with specified latitude and longitude for center. \"hue\" (min 0, max 360) and \"alpha\" (min 0, max 255) are used to set color and transparency level of the circle, \"strokeWidth\" and \"strokeColor\" are for the perimeter of the circle. Returning a unique id of the circle for future reference to events raised by moving this circle. If the circle isset to be draggable, two default markers will appear on the map: one in the center of the circle, another on the perimeter.")
    public int AddCircle(double d, double d2, double d3, int i, float f, float f2, int i2, boolean z) {
        int iGenerateCircleId = generateCircleId();
        int iHSVToColor = Color.HSVToColor(i, new float[]{f, 1.0f, 1.0f});
        if (z) {
            DraggableCircle draggableCircle = new DraggableCircle(new LatLng(d, d2), d3, f2, i2, iHSVToColor);
            this.mCircles.add(draggableCircle);
            this.circles.put(draggableCircle, Integer.valueOf(iGenerateCircleId));
            return iGenerateCircleId;
        }
        this.circles.put(this.mMap.addCircle(new CircleOptions().center(new LatLng(d, d2)).radius(d3).strokeWidth(f2).strokeColor(i2).fillColor(iHSVToColor)), Integer.valueOf(iGenerateCircleId));
        return iGenerateCircleId;
    }

    private Object getCircleIfExisted(int i) {
        Object keyByValue = getKeyByValue(this.circles, Integer.valueOf(i));
        if (keyByValue != null) {
            return keyByValue;
        }
        this.form.dispatchErrorOccurredEvent(this, "getCircleIfExisted", ErrorMessages.ERROR_GOOGLE_MAP_CIRCLE_NOT_EXIST, Integer.toString(i));
        return null;
    }

    @SimpleFunction(description = "Remove a circle for the map. Returns true if successfully removed, false if the circle does not exist with the specified id")
    public boolean RemoveCircle(int i) {
        Object keyByValue = getKeyByValue(this.circles, Integer.valueOf(i));
        if (keyByValue == null) {
            return false;
        }
        if (keyByValue instanceof DraggableCircle) {
            ((DraggableCircle) keyByValue).removeFromMap();
            this.mCircles.remove(keyByValue);
        }
        if (keyByValue instanceof com.google.android.gms.maps.model.Circle) {
            ((com.google.android.gms.maps.model.Circle) keyByValue).remove();
        }
        this.circles.remove(keyByValue);
        return true;
    }

    @SimpleFunction(description = "Set the property of an existing circle. Properties include: \"alpha\"(number, value ranging from 0~255), \"color\" (nimber, hue value ranging 0~360), \"radius\"(number in meters)")
    public void UpdateCircle(int i, String str, Object obj) throws NumberFormatException {
        Log.i(TAG, "inputs: " + i + "," + str + ", " + obj);
        float[] fArr = new float[3];
        Object circleIfExisted = getCircleIfExisted(i);
        if (circleIfExisted != null) {
            com.google.android.gms.maps.model.Circle circle = circleIfExisted instanceof DraggableCircle ? ((DraggableCircle) circleIfExisted).getCircle() : null;
            if (circleIfExisted instanceof com.google.android.gms.maps.model.Circle) {
                circle = (com.google.android.gms.maps.model.Circle) circleIfExisted;
            }
            try {
                float f = Float.parseFloat(obj.toString());
                Float fValueOf = Float.valueOf(f);
                if (str.equals("alpha")) {
                    Color.colorToHSV(circle.getFillColor(), fArr);
                    circle.setFillColor(Color.HSVToColor(fValueOf.intValue(), fArr));
                }
                if (str.equals(PropertyTypeConstants.PROPERTY_TYPE_COLOR)) {
                    circle.setFillColor(Color.HSVToColor(Color.alpha(circle.getFillColor()), new float[]{f, 1.0f, 1.0f}));
                }
                if (str.equals("radius")) {
                    double d = f;
                    circle.setRadius(d);
                    if (circleIfExisted instanceof DraggableCircle) {
                        com.google.android.gms.maps.model.Marker centerMarker = ((DraggableCircle) circleIfExisted).getCenterMarker();
                        ((DraggableCircle) circleIfExisted).getRadiusMarker().remove();
                        ((DraggableCircle) circleIfExisted).setRadiusMarker(this.mMap.addMarker(new MarkerOptions().position(toRadiusLatLng(centerMarker.getPosition(), d)).draggable(true).icon(BitmapDescriptorFactory.defaultMarker(210.0f))));
                        return;
                    }
                    return;
                }
                return;
            } catch (NumberFormatException unused) {
                this.form.dispatchErrorOccurredEvent(this, "UpdateCircle", ErrorMessages.ERROR_GOOGLE_MAP_INVALID_INPUT, obj.toString());
                return;
            }
        }
        this.form.dispatchErrorOccurredEvent(this, "UpdateCircle", ErrorMessages.ERROR_GOOGLE_MAP_CIRCLE_NOT_EXIST, Integer.valueOf(i));
    }

    @SimpleFunction(description = "Get all circles Ids. A short cut to get all the references for the eixisting circles")
    public YailList GetAllCircleIDs() {
        return YailList.makeList(this.circles.values());
    }

    @SimpleEvent(description = "Event been raised after the action of moving a draggable circle is finished. Possible a user drag the center of the circle or drag the radius marker of the circle")
    public void FinishedDraggingCircle(final int i, final double d, final double d2, final double d3) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.1
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "a draggable circle:" + i + "finished been dragged");
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "FinishedDraggingCircle", Integer.valueOf(i), Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3));
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.viewLayout;
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        Log.i(TAG, "in onResume...Google Map redraw");
        if (this.myLocationEnabled) {
            setUpLocationClientIfNeeded();
            this.mGoogleApiClient.connect();
        }
        setUpMapIfNeeded();
        this.isRunning = true;
    }

    private void prepareFragmentView() {
        this.mMapFragment = MapFragment.newInstance();
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.2
            @Override // java.lang.Runnable
            public void run() {
                if (NiotronGoogleMaps.this.mMapFragment != null) {
                    FragmentTransaction fragmentTransactionBeginTransaction = NiotronGoogleMaps.this.form.getFragmentManager().beginTransaction();
                    fragmentTransactionBeginTransaction.add(NiotronGoogleMaps.this.viewLayout.getId(), NiotronGoogleMaps.this.mMapFragment, NiotronGoogleMaps.this.MAP_FRAGMENT_TAG);
                    fragmentTransactionBeginTransaction.commit();
                    NiotronGoogleMaps.this.setUpMapIfNeeded();
                    return;
                }
                NiotronGoogleMaps.this.androidUIHandler.post(this);
            }
        });
    }

    @SimpleFunction(description = "Enable or disable my location widget control for Google Map. One can call \"")
    public void EnableMyLocation(boolean z) {
        Log.i(TAG, "@EnableMyLocation:" + z);
        if (this.myLocationEnabled != z) {
            this.myLocationEnabled = z;
        }
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.setMyLocationEnabled(z);
            if (z) {
                setUpLocationClientIfNeeded();
                this.mGoogleApiClient.connect();
            } else {
                this.mGoogleApiClient.disconnect();
            }
        }
    }

    @SimpleProperty(description = "Indicates whether my locaiton UI control is currently enabled for the Google map.")
    public boolean MyLocationEnabled() {
        return this.myLocationEnabled;
    }

    @SimpleFunction(description = "Get current location using Google Map Service. Return a YailList with first item beingthe latitude, the second item being the longitude, and last time being the accuracy of the reading.")
    public YailList GetMyLocation() {
        ArrayList arrayList = new ArrayList();
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient != null && googleApiClient.isConnected()) {
            Log.i(TAG, "client is connected");
            Location lastLocation = LocationServices.FusedLocationApi.getLastLocation(this.mGoogleApiClient);
            arrayList.add(Double.valueOf(lastLocation.getLatitude()));
            arrayList.add(Double.valueOf(lastLocation.getLongitude()));
            arrayList.add(Float.valueOf(lastLocation.getAccuracy()));
        }
        return YailList.makeList((List) arrayList);
    }

    @SimpleFunction(description = "Set the layer of Google map. Default layer is \"normal\", other choices including \"hybrid\",\"satellite\", and \"terrain\" ")
    public void SetMapType(String str) {
        if (str.equals("normal")) {
            this.mapType = 1;
        } else if (str.equals("hybrid")) {
            this.mapType = 4;
        } else if (str.equals("satellite")) {
            this.mapType = 2;
        } else if (str.equals("terrain")) {
            this.mapType = 3;
        } else {
            Log.i(TAG, "Error setting layer with name ".concat(str));
            this.form.dispatchErrorOccurredEvent(this, "SetMapType", ErrorMessages.ERROR_GOOGLE_MAP_INVALID_INPUT, str.concat(" is not the correct type"));
        }
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.setMapType(this.mapType);
        }
    }

    @SimpleFunction(description = "Enable/Disable to listen to map's click event")
    public void EnableMapClickListener(boolean z) {
        Log.i(TAG, "@EnableMapClickListener:" + z);
        if (this.enableMapClickListener != z) {
            this.enableMapClickListener = z;
        }
        if (this.mMap != null) {
            Log.i(TAG, "enable map listener?: " + z);
            this.mMap.setOnMapClickListener(z ? this : null);
        }
    }

    @SimpleProperty(description = "Indicates if the mapClick event listener is currently enabled")
    public boolean MapClickListenerEnabled() {
        return this.enableMapClickListener;
    }

    @SimpleFunction(description = "Enable/disable to listen to map's long click event")
    public void EnableMapLongClickListener(boolean z) {
        Log.i(TAG, "@EnableMapLongClickListener:" + z);
        if (this.enableMapLongClickListener != z) {
            this.enableMapLongClickListener = z;
        }
        if (this.mMap != null) {
            Log.i(TAG, "enable long click listener?:" + z);
            this.mMap.setOnMapLongClickListener(z ? this : null);
        }
    }

    @SimpleProperty(description = "Indicates if the map longClick listener is currently enabled")
    public boolean MapLongClickListenerEnabled() {
        return this.enableMapLongClickListener;
    }

    @SimpleFunction(description = "Enable/Disable to listen to map's camera position changed event")
    public void EnableMapCameraPosChangeListener(boolean z) {
        Log.i(TAG, "@EnableMapCameraPosChangeListener:" + z);
        if (this.enableCameraChangeListener != z) {
            this.enableCameraChangeListener = z;
        }
        if (this.mMap != null) {
            Log.i(TAG, "enable cameraChangedListener?:" + z);
            this.mMap.setOnCameraChangeListener(z ? this : null);
        }
    }

    @SimpleProperty(description = "Indicates if the map camera's position changed listener is currently enabled")
    public boolean MapCameraChangedListenerEnabled() {
        return this.enableCameraChangeListener;
    }

    @SimpleProperty(description = "Indicates the current map type")
    public String MapType() {
        int i = this.mapType;
        if (i == 1) {
            return "normal";
        }
        if (i == 2) {
            return "satellite";
        }
        if (i == 3) {
            return "terrain";
        }
        if (i != 4) {
            return null;
        }
        return "hybrid";
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0201  */
    @com.google.appinventor.components.annotations.SimpleFunction(description = "Adding a list of YailLists for markers. The representation of a maker in the inner YailList is composed of: lat(double) [required], long(double) [required], Color, title(String), snippet(String), draggable(boolean). Return a list of unqiue ids for the added  markers. Note that the markers ids are not meant to persist after  the app is closed, but for temporary references to the markers within the program only. Return an empty list if any error happen in the input")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.appinventor.components.runtime.util.YailList AddMarkers(com.google.appinventor.components.runtime.util.YailList r21) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.NiotronGoogleMaps.AddMarkers(com.google.appinventor.components.runtime.util.YailList):com.google.appinventor.components.runtime.util.YailList");
    }

    private static int generateMarkerId() {
        return snextMarkerId.incrementAndGet();
    }

    private static int generateCircleId() {
        return snextCircleId.incrementAndGet();
    }

    private int addMarkerToMap(Double d, Double d2, int i, float f, String str, String str2, boolean z) {
        Log.i(TAG, "@addMarkerToMap");
        LatLng latLng = new LatLng(d.doubleValue(), d2.doubleValue());
        if (this.mMap == null) {
            setUpMapIfNeeded();
        }
        com.google.android.gms.maps.model.Marker markerAddMarker = this.mMap.addMarker(new MarkerOptions().position(latLng).icon(BitmapDescriptorFactory.defaultMarker(f)));
        if (!str.isEmpty()) {
            markerAddMarker.setTitle(str);
        }
        if (!str2.isEmpty()) {
            markerAddMarker.setSnippet(str2);
        }
        markerAddMarker.setDraggable(z);
        this.markers.put(markerAddMarker, Integer.valueOf(i));
        return i;
    }

    @SimpleFunction(description = "Add a list of markers composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)")
    public YailList GetMarkers() {
        return this.markersList;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0169 A[Catch: JsonSyntaxException -> 0x00f9, TRY_ENTER, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0192 A[Catch: JsonSyntaxException -> 0x00f9, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a7 A[Catch: JsonSyntaxException -> 0x00f9, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b8 A[Catch: JsonSyntaxException -> 0x00f9, TRY_ENTER, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01cd A[Catch: JsonSyntaxException -> 0x00f9, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01dc A[Catch: JsonSyntaxException -> 0x00f9, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01df A[Catch: JsonSyntaxException -> 0x00f9, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e9 A[Catch: JsonSyntaxException -> 0x00f9, TRY_LEAVE, TryCatch #7 {JsonSyntaxException -> 0x00f9, blocks: (B:29:0x00e3, B:58:0x0184, B:67:0x01ad, B:72:0x01c0, B:76:0x01d6, B:78:0x01dc, B:81:0x01e9, B:86:0x022b, B:79:0x01df, B:75:0x01cd, B:71:0x01b8, B:66:0x01a7, B:61:0x0192, B:57:0x0169, B:45:0x0130, B:46:0x0138, B:94:0x025a), top: B:119:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023b  */
    @com.google.appinventor.components.annotations.SimpleFunction(description = "Adding a list of markers that are represented as JsonArray.  The inner JsonObject represents a markerand is composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void AddMarkersFromJson(java.lang.String r27) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.NiotronGoogleMaps.AddMarkersFromJson(java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0242 A[SYNTHETIC] */
    @com.google.appinventor.components.annotations.SimpleFunction(description = "Adding a list of YailList for markers. The inner YailList represents a marker and is composed of lat(Double) [required], long(Double) [required], color(int)[in hue value ranging from 0-360], title(String), snippet(String), draggable(boolean). Return a list of unique ids for the markers that are added")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.appinventor.components.runtime.util.YailList AddMarkersHue(com.google.appinventor.components.runtime.util.YailList r24) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.NiotronGoogleMaps.AddMarkersHue(com.google.appinventor.components.runtime.util.YailList):com.google.appinventor.components.runtime.util.YailList");
    }

    @SimpleFunction(description = "Set the property of a marker, note that the marker has to be added first or else will throw an exception! Properties include: \"color\"(hue value ranging from 0~360), \"title\", \"snippet\", \"draggable\"(give either true or false as the value).")
    public void UpdateMarker(int i, String str, Object obj) throws NumberFormatException {
        String strTrim = str.trim();
        String strTrim2 = obj.toString().trim();
        Log.i(TAG, "@UpdateMarker");
        Log.i(TAG, "markerId:" + i);
        Log.i(TAG, "prop:".concat(str));
        Log.i(TAG, "value:" + obj);
        com.google.android.gms.maps.model.Marker markerIfExisted = getMarkerIfExisted(i);
        Log.i(TAG, "marker?:" + markerIfExisted);
        if (markerIfExisted != null) {
            if (strTrim.equals(PropertyTypeConstants.PROPERTY_TYPE_COLOR)) {
                Log.i(TAG, "we are changing color");
                Float fValueOf = Float.valueOf(strTrim2);
                if (fValueOf.floatValue() < 0.0f || fValueOf.floatValue() > 360.0f) {
                    this.form.dispatchErrorOccurredEvent(this, "UpdateMarker", ErrorMessages.ERROR_GOOGLE_MAP_INVALID_INPUT, fValueOf.toString());
                } else {
                    markerIfExisted.setIcon(BitmapDescriptorFactory.defaultMarker(Float.valueOf(strTrim2).floatValue()));
                }
            }
            if (strTrim.equals("title")) {
                Log.i(TAG, "we are changing title");
                markerIfExisted.setTitle(strTrim2);
            }
            if (strTrim.equals("snippet")) {
                Log.i(TAG, "we are changing snippet");
                markerIfExisted.setSnippet(strTrim2);
            }
            if (strTrim.equals("draggable")) {
                Log.i(TAG, "we are changing draggable");
                markerIfExisted.setDraggable(Boolean.valueOf(strTrim2).booleanValue());
            }
        }
    }

    @SimpleFunction(description = "Get all the existing markers's Ids")
    public YailList GetAllMarkerID() {
        return YailList.makeList(this.markers.values());
    }

    private com.google.android.gms.maps.model.Marker getMarkerIfExisted(int i) {
        com.google.android.gms.maps.model.Marker marker = (com.google.android.gms.maps.model.Marker) getKeyByValue(this.markers, Integer.valueOf(i));
        if (marker.equals((Object) null)) {
            this.form.dispatchErrorOccurredEvent(this, "getMarkerIfExisted", ErrorMessages.ERROR_GOOGLE_MAP_MARKER_NOT_EXIST, Integer.toString(i));
        }
        return marker;
    }

    @SimpleFunction(description = "Remove a marker from the map")
    public void RemoveMarker(int i) {
        com.google.android.gms.maps.model.Marker markerIfExisted = getMarkerIfExisted(i);
        if (markerIfExisted != null) {
            this.markers.remove(markerIfExisted);
            markerIfExisted.remove();
        }
    }

    public void onMarkerDrag(com.google.android.gms.maps.model.Marker marker) {
        NiotronGoogleMaps niotronGoogleMaps;
        Log.i(TAG, "Dragging M:" + marker);
        Integer num = this.markers.get(marker);
        if (num != null) {
            LatLng position = marker.getPosition();
            niotronGoogleMaps = this;
            niotronGoogleMaps.OnMarkerDrag(num.intValue(), position.latitude, position.longitude);
        } else {
            niotronGoogleMaps = this;
        }
        for (DraggableCircle draggableCircle : niotronGoogleMaps.mCircles) {
            if (draggableCircle.getCenterMarker().equals(marker) || draggableCircle.getRadiusMarker().equals(marker)) {
                draggableCircle.onMarkerMoved(marker);
            }
        }
    }

    public void onMarkerDragEnd(com.google.android.gms.maps.model.Marker marker) {
        Integer num = this.markers.get(marker);
        if (num != null) {
            LatLng position = marker.getPosition();
            OnMarkerDragEnd(num.intValue(), position.latitude, position.longitude);
        }
        for (DraggableCircle draggableCircle : this.mCircles) {
            if (draggableCircle.getCenterMarker().equals(marker) || draggableCircle.getRadiusMarker().equals(marker)) {
                draggableCircle.onMarkerMoved(marker);
                int iIntValue = this.circles.get(draggableCircle).intValue();
                LatLng position2 = draggableCircle.getCenterMarker().getPosition();
                FinishedDraggingCircle(iIntValue, position2.latitude, position2.longitude, draggableCircle.getRadius().doubleValue());
            }
        }
    }

    public void onMarkerDragStart(com.google.android.gms.maps.model.Marker marker) {
        NiotronGoogleMaps niotronGoogleMaps;
        Integer num = this.markers.get(marker);
        if (num != null) {
            LatLng position = marker.getPosition();
            niotronGoogleMaps = this;
            niotronGoogleMaps.OnMarkerDragStart(num.intValue(), position.latitude, position.longitude);
        } else {
            niotronGoogleMaps = this;
        }
        for (DraggableCircle draggableCircle : niotronGoogleMaps.mCircles) {
            if (draggableCircle.getCenterMarker().equals(marker) || draggableCircle.getRadiusMarker().equals(marker)) {
                draggableCircle.onMarkerMoved(marker);
            }
        }
    }

    @SimpleEvent(description = "When a marker starts been dragged")
    public void OnMarkerDragStart(final int i, final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.3
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "a marker:" + i + "starts been dragged");
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnMarkerDragStart", Integer.valueOf(i), Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    @SimpleEvent(description = "When a marker is been dragged")
    public void OnMarkerDrag(final int i, final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.4
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "a marker:" + i + "is been dragged");
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnMarkerDrag", Integer.valueOf(i), Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    @SimpleEvent(description = "When the user drags a marker and finish the action, returning marker's id and it's latest position")
    public void OnMarkerDragEnd(final int i, final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.5
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "a marker:" + i + "finishes been dragged");
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnMarkerDragEnd", Integer.valueOf(i), Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    @SimpleEvent(description = "When a marker is clicked")
    public void OnMarkerClick(final int i, final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.6
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "a marker:" + i + "is clicked");
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnMarkerClick", Integer.valueOf(i), Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    @SimpleEvent(description = "When the marker's infowindow is clicked, returning marker's id")
    public void InfoWindowClicked(final int i) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.7
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "A marker: " + i + " its info window is clicked");
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "InfoWindowClicked", Integer.valueOf(i));
            }
        });
    }

    public void onInfoWindowClick(com.google.android.gms.maps.model.Marker marker) {
        InfoWindowClicked(this.markers.get(marker).intValue());
    }

    public boolean onMarkerClick(com.google.android.gms.maps.model.Marker marker) {
        Integer num = this.markers.get(marker);
        LatLng position = marker.getPosition();
        OnMarkerClick(num.intValue(), position.latitude, position.longitude);
        return false;
    }

    private <T, E> T getKeyByValue(java.util.Map<T, E> map, E e) {
        for (Map.Entry<T, E> entry : map.entrySet()) {
            if (e.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    public void onCameraChange(CameraPosition cameraPosition) {
        CameraPositionChanged(cameraPosition.target.latitude, cameraPosition.target.longitude, cameraPosition.bearing, cameraPosition.tilt, cameraPosition.zoom);
    }

    @SimpleEvent(description = "Called after the camera position of a map has changed.")
    public void CameraPositionChanged(final double d, final double d2, final float f, final float f2, final float f3) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.8
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "Camera's position has changed:" + d + ", " + d2 + ", " + f + "," + f2 + ", " + f3);
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "CameraPositionChanged", Double.valueOf(d), Double.valueOf(d2), Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3));
            }
        });
    }

    public void onMapLongClick(LatLng latLng) {
        OnMapLongClick(latLng.latitude, latLng.longitude);
    }

    @SimpleEvent(description = "Called when the user makes a long-press gesture on the map")
    public void OnMapLongClick(final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.9
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "Map is longclicked at:" + d + ", " + d2);
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnMapLongClick", Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    public void onMapClick(LatLng latLng) {
        Log.i(TAG, "receive google maps's onMapClick");
        OnMapClick(latLng.latitude, latLng.longitude);
    }

    @SimpleEvent(description = "Called when the user makes a tap gesture on the map")
    public void OnMapClick(final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.10
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "map is clicked at:" + d + ", " + d2);
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnMapClick", Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    @SimpleFunction(description = "Move the map's camera to the specified position and zoom level")
    public void MoveCamera(double d, double d2, float f) {
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(d, d2), f));
        }
    }

    @SimpleFunction(description = "Transforms the camera such that the specified latitude/longitude bounds are centered on screen at the greatest possible zoom level. Need to specify both latitudes and longitudes for both northeast location and southwest location of the bounding box")
    public void BoundCamera(double d, double d2, double d3, double d4) {
        this.mMap.moveCamera(CameraUpdateFactory.newLatLngBounds(new LatLngBounds(new LatLng(d, d2), new LatLng(d3, d4)), 0));
    }

    public class DraggableCircle {
        private final com.google.android.gms.maps.model.Marker centerMarker;
        private final com.google.android.gms.maps.model.Circle circle;
        private double radius;
        private com.google.android.gms.maps.model.Marker radiusMarker;

        public DraggableCircle(LatLng latLng, double d, float f, int i, int i2) {
            this.radius = d;
            this.centerMarker = NiotronGoogleMaps.this.mMap.addMarker(new MarkerOptions().position(latLng).draggable(true));
            this.radiusMarker = NiotronGoogleMaps.this.mMap.addMarker(new MarkerOptions().position(NiotronGoogleMaps.toRadiusLatLng(latLng, d)).draggable(true).icon(BitmapDescriptorFactory.defaultMarker(210.0f)));
            this.circle = NiotronGoogleMaps.this.mMap.addCircle(new CircleOptions().center(latLng).radius(d).strokeWidth(f).strokeColor(i).fillColor(i2));
        }

        public DraggableCircle(LatLng latLng, LatLng latLng2, float f, int i, int i2) {
            this.radius = NiotronGoogleMaps.toRadiusMeters(latLng, latLng2);
            this.centerMarker = NiotronGoogleMaps.this.mMap.addMarker(new MarkerOptions().position(latLng).draggable(true));
            this.radiusMarker = NiotronGoogleMaps.this.mMap.addMarker(new MarkerOptions().position(latLng2).draggable(true).icon(BitmapDescriptorFactory.defaultMarker(210.0f)));
            this.circle = NiotronGoogleMaps.this.mMap.addCircle(new CircleOptions().center(latLng).radius(this.radius).strokeWidth(f).strokeColor(i).fillColor(i2));
        }

        public DraggableCircle(com.google.android.gms.maps.model.Marker marker, com.google.android.gms.maps.model.Marker marker2, float f, int i, int i2) {
            this.radius = NiotronGoogleMaps.toRadiusMeters(marker.getPosition(), marker2.getPosition());
            this.centerMarker = marker;
            this.radiusMarker = marker2;
            this.circle = NiotronGoogleMaps.this.mMap.addCircle(new CircleOptions().center(marker.getPosition()).radius(this.radius).strokeWidth(f).strokeColor(i).fillColor(i2));
        }

        public boolean onMarkerMoved(com.google.android.gms.maps.model.Marker marker) {
            if (marker.equals(this.centerMarker)) {
                this.circle.setCenter(marker.getPosition());
                this.radiusMarker.setPosition(NiotronGoogleMaps.toRadiusLatLng(marker.getPosition(), this.radius));
                return true;
            }
            if (!marker.equals(this.radiusMarker)) {
                return false;
            }
            double radiusMeters = NiotronGoogleMaps.toRadiusMeters(this.centerMarker.getPosition(), this.radiusMarker.getPosition());
            this.radius = radiusMeters;
            this.circle.setRadius(radiusMeters);
            return true;
        }

        public void removeFromMap() {
            this.circle.remove();
            this.centerMarker.remove();
            this.radiusMarker.remove();
        }

        public com.google.android.gms.maps.model.Marker getCenterMarker() {
            return this.centerMarker;
        }

        public com.google.android.gms.maps.model.Marker getRadiusMarker() {
            return this.radiusMarker;
        }

        public com.google.android.gms.maps.model.Circle getCircle() {
            return this.circle;
        }

        public Double getRadius() {
            return Double.valueOf(this.radius);
        }

        public void setRadiusMarker(com.google.android.gms.maps.model.Marker marker) {
            this.radiusMarker = marker;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LatLng toRadiusLatLng(LatLng latLng, double d) {
        return new LatLng(latLng.latitude, latLng.longitude + (Math.toDegrees(d / 6371009.0d) / Math.cos(Math.toRadians(latLng.latitude))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double toRadiusMeters(LatLng latLng, LatLng latLng2) {
        Location.distanceBetween(latLng.latitude, latLng.longitude, latLng2.latitude, latLng2.longitude, new float[1]);
        return r9[0];
    }

    public void onConnected(Bundle bundle) {
        Log.i(TAG, "onConnected to location listener.....");
        LocationServices.FusedLocationApi.requestLocationUpdates(this.mGoogleApiClient, REQUEST, this);
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient != null) {
            googleApiClient.disconnect();
        }
        this.isRunning = false;
    }

    public void onLocationChanged(Location location) {
        OnLocationChanged(location.getLatitude(), location.getLongitude());
    }

    @SimpleEvent(description = "Triggers this event when user location has changed. Only works when EnableMylocation is set to true")
    public void OnLocationChanged(final double d, final double d2) {
        this.context.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.11
            @Override // java.lang.Runnable
            public void run() {
                Log.i(NiotronGoogleMaps.TAG, "location changed" + d + d2);
                EventDispatcher.dispatchEvent(NiotronGoogleMaps.this, "OnLocationChanged", Double.valueOf(d), Double.valueOf(d2));
            }
        });
    }

    @SimpleFunction(description = "Adds polygon")
    public void addPolygon(double d, double d2, double d3, double d4) {
        this.polygons.put(this.mMap.addPolygon(new PolygonOptions().add(new LatLng[]{new LatLng(d, d4), new LatLng(d2, d4), new LatLng(d2, d3), new LatLng(d, d3), new LatLng(d, d4)})), 1);
    }

    @SimpleFunction(description = "Clears all the polygons")
    public void clearAllPolygons() {
        Iterator<com.google.android.gms.maps.model.Polygon> it = this.polygons.keySet().iterator();
        while (it.hasNext()) {
            it.next().remove();
        }
    }

    @SimpleFunction(description = "Draw a central square")
    public void drawCentralSquare() throws NumberFormatException {
        LatLngBounds latLngBounds = this.mMap.getProjection().getVisibleRegion().latLngBounds;
        LatLng latLng = latLngBounds.northeast;
        LatLng latLng2 = latLngBounds.southwest;
        double d = latLng.latitude;
        double d2 = latLng.latitude;
        double d3 = latLng2.latitude;
        double d4 = latLng2.longitude;
        double d5 = this.mMap.getCameraPosition().target.latitude;
        double d6 = this.mMap.getCameraPosition().target.longitude;
        double d7 = (d5 - d3) * 0.5d;
        double d8 = (d6 - d4) * 0.5d;
        AddMarkersFromJson("[{lat:" + d5 + ",lng:" + d6 + "}]");
        double d9 = d5 + d7;
        double d10 = d6 + d8;
        double d11 = d5 - d7;
        double d12 = d6 - d8;
        this.polygons.put(this.mMap.addPolygon(new PolygonOptions().add(new LatLng[]{new LatLng(d9, d10), new LatLng(d11, d10), new LatLng(d11, d12), new LatLng(d9, d12), new LatLng(d9, d10)})), 1);
    }

    @SimpleFunction(description = "Gets blonding box")
    public String getBoundingBox(double d, double d2, double d3) {
        double radians = Math.toRadians(d);
        double radians2 = Math.toRadians(d2);
        double d4 = 1000.0d * d3;
        double dCos = Math.cos(radians) * 4.0680631590769E13d;
        double dSin = Math.sin(radians) * 4.040829980355529E13d;
        double dCos2 = Math.cos(radians) * 6378137.0d;
        double dSin2 = Math.sin(radians) * 6356752.3d;
        double dSqrt = Math.sqrt(((dSin * dSin) + (dCos * dCos)) / ((dSin2 * dSin2) + (dCos2 * dCos2)));
        double dCos3 = Math.cos(radians) * dSqrt;
        double d5 = d4 / dSqrt;
        double d6 = radians - d5;
        double d7 = radians + d5;
        double d8 = d4 / dCos3;
        double d9 = radians2 - d8;
        double d10 = radians2 + d8;
        return Math.toDegrees(d6) + "," + Math.toDegrees(d9) + "," + Math.toDegrees(d7) + "," + Math.toDegrees(d10);
    }

    @SimpleFunction(description = "Adds a overlay")
    public void addOverlay() {
        this.mMap.addGroundOverlay(new GroundOverlayOptions().position(new LatLng(40.714086d, -74.228697d), 8600.0f, 6500.0f));
    }

    @SimpleFunction(description = "Add title overlay")
    public void addTileOverlay() {
        int i = 256;
        this.mMap.addTileOverlay(new TileOverlayOptions().tileProvider(new UrlTileProvider(i, i) { // from class: com.google.appinventor.components.runtime.NiotronGoogleMaps.12
            private boolean checkTileExists(int i2, int i3, int i4) {
                return i4 >= 12 && i4 <= 16;
            }

            public URL getTileUrl(int i2, int i3, int i4) {
                String str = String.format("http://my.image.server/images/%d/%d/%d.png", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (!checkTileExists(i2, i3, i4)) {
                    return null;
                }
                try {
                    return new URL(str);
                } catch (MalformedURLException e) {
                    throw new AssertionError(e);
                }
            }
        }));
    }

    @SimpleFunction(description = "Gets map center")
    public String getMapCenter() {
        return this.mMap.getCameraPosition().target.toString();
    }

    @SimpleFunction(description = "Gets zoom level info")
    public float getZoomLevelInfo() {
        return this.mMap.getCameraPosition().zoom;
    }
}

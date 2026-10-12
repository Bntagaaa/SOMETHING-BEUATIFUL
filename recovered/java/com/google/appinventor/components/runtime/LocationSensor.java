package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.location.Address;
import android.location.Criteria;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.BulkPermissionRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS")
@DesignerComponent(category = ComponentCategory.SENSORS, description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You'll have to wait a short time for a location provider to be found and used, or wait for the LocationChanged event", iconName = "images/locationSensor.png", nonVisible = true, version = 3)
/* loaded from: classes.dex */
public class LocationSensor extends AndroidNonvisibleComponent implements Component, OnStopListener, OnResumeListener, Deleteable, RealTimeDataSource<String, Float> {
    private static final String LOG_TAG = "LocationSensor";
    public static final int UNKNOWN_VALUE = 0;
    private List<String> allProviders;
    private double altitude;
    private final Handler androidUIHandler;
    private Set<DataSourceChangeListener> dataSourceObservers;
    private int distanceInterval;
    private boolean enabled;
    private Geocoder geocoder;
    private final Handler handler;
    private boolean hasAltitude;
    private boolean hasLocationData;
    private boolean havePermission;
    private boolean initialized;
    private Location lastLocation;
    private double latitude;
    private final Set<LocationSensorListener> listeners;
    private boolean listening;
    private final Criteria locationCriteria;
    private final LocationManager locationManager;
    private LocationProvider locationProvider;
    private double longitude;
    private MyLocationListener myLocationListener;
    private boolean providerLocked;
    private String providerName;
    private float speed;
    private int timeInterval;

    public interface LocationSensorListener extends LocationListener {
        void onDistanceIntervalChanged(int i);

        void onTimeIntervalChanged(int i);

        void setSource(LocationSensor locationSensor);
    }

    public class MyLocationListener implements LocationListener {
        public /* synthetic */ MyLocationListener(LocationSensor locationSensor, int i) {
            this();
        }

        private MyLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            LocationSensor.this.lastLocation = location;
            LocationSensor.this.longitude = location.getLongitude();
            LocationSensor.this.latitude = location.getLatitude();
            LocationSensor.this.speed = location.getSpeed();
            if (location.hasAltitude()) {
                LocationSensor.this.hasAltitude = true;
                LocationSensor.this.altitude = location.getAltitude();
            }
            if (LocationSensor.this.longitude == 0.0d && LocationSensor.this.latitude == 0.0d) {
                return;
            }
            LocationSensor.this.hasLocationData = true;
            final double d = LocationSensor.this.latitude;
            final double d2 = LocationSensor.this.longitude;
            final double d3 = LocationSensor.this.altitude;
            final float f = LocationSensor.this.speed;
            LocationSensor.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationSensor.MyLocationListener.1
                @Override // java.lang.Runnable
                public void run() {
                    LocationSensor.this.LocationChanged(d, d2, d3, f);
                    Iterator it = LocationSensor.this.listeners.iterator();
                    while (it.hasNext()) {
                        ((LocationSensorListener) it.next()).onLocationChanged(location);
                    }
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            LocationSensor.this.StatusChanged(str, "Disabled");
            LocationSensor.this.stopListening();
            if (LocationSensor.this.enabled) {
                LocationSensor.this.RefreshProvider("onProviderDisabled");
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            LocationSensor.this.StatusChanged(str, "Enabled");
            LocationSensor.this.RefreshProvider("onProviderEnabled");
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            if (i == 0) {
                LocationSensor.this.StatusChanged(str, "OUT_OF_SERVICE");
                if (str.equals(LocationSensor.this.providerName)) {
                    LocationSensor.this.stopListening();
                    LocationSensor.this.RefreshProvider("onStatusChanged");
                    return;
                }
                return;
            }
            if (i == 1) {
                LocationSensor.this.StatusChanged(str, "TEMPORARILY_UNAVAILABLE");
                return;
            }
            if (i != 2) {
                return;
            }
            LocationSensor.this.StatusChanged(str, "AVAILABLE");
            if (str.equals(LocationSensor.this.providerName) || LocationSensor.this.allProviders.contains(str)) {
                return;
            }
            LocationSensor.this.RefreshProvider("onStatusChanged");
        }
    }

    public LocationSensor(ComponentContainer componentContainer) {
        this(componentContainer, true);
    }

    public LocationSensor(ComponentContainer componentContainer, boolean z) {
        super(componentContainer.$form());
        this.dataSourceObservers = new HashSet();
        this.listeners = new HashSet();
        this.providerLocked = false;
        this.initialized = false;
        this.listening = false;
        this.longitude = 0.0d;
        this.latitude = 0.0d;
        this.altitude = 0.0d;
        this.speed = 0.0f;
        this.hasLocationData = false;
        this.hasAltitude = false;
        this.androidUIHandler = new Handler();
        this.havePermission = false;
        this.enabled = z;
        this.handler = new Handler();
        this.form.registerForOnResume(this);
        this.form.registerForOnStop(this);
        this.timeInterval = 60000;
        this.distanceInterval = 5;
        Activity activity$context = componentContainer.$context();
        this.geocoder = new Geocoder(activity$context);
        this.locationManager = (LocationManager) activity$context.getSystemService("location");
        this.locationCriteria = new Criteria();
        this.myLocationListener = new MyLocationListener(this, 0);
        this.allProviders = new ArrayList();
        Enabled(z);
    }

    public void Initialize() {
        this.initialized = true;
        Enabled(this.enabled);
    }

    @SimpleEvent(description = "Indicates that a new location has been detected.")
    public void LocationChanged(double d, double d2, double d3, float f) {
        notifyDataObservers(PropertyTypeConstants.PROPERTY_TYPE_LATITUDE, (Object) Double.valueOf(d));
        notifyDataObservers(PropertyTypeConstants.PROPERTY_TYPE_LONGITUDE, (Object) Double.valueOf(d2));
        notifyDataObservers("altitude", (Object) Double.valueOf(d3));
        notifyDataObservers("speed", (Object) Float.valueOf(f));
        EventDispatcher.dispatchEvent(this, "LocationChanged", Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3), Float.valueOf(f));
    }

    @SimpleEvent
    public void StatusChanged(String str, String str2) {
        if (this.enabled) {
            EventDispatcher.dispatchEvent(this, "StatusChanged", str, str2);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ProviderName() {
        String str = this.providerName;
        return str == null ? "NO PROVIDER" : str;
    }

    @SimpleProperty
    public void ProviderName(String str) {
        this.providerName = str;
        if (empty(str) || !startProvider(str)) {
            RefreshProvider("ProviderName");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean ProviderLocked() {
        return this.providerLocked;
    }

    @SimpleProperty
    public void ProviderLocked(boolean z) {
        this.providerLocked = z;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "60000", editorType = PropertyTypeConstants.PROPERTY_TYPE_SENSOR_TIME_INTERVAL)
    public void TimeInterval(int i) {
        if (i < 0 || i > 1000000) {
            return;
        }
        this.timeInterval = i;
        if (this.enabled) {
            RefreshProvider("TimeInterval");
        }
        Iterator<LocationSensorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTimeIntervalChanged(this.timeInterval);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after.")
    public int TimeInterval() {
        return this.timeInterval;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_SENSOR_DIST_INTERVAL)
    public void DistanceInterval(int i) {
        if (i < 0 || i > 1000) {
            return;
        }
        this.distanceInterval = i;
        if (this.enabled) {
            RefreshProvider("DistanceInterval");
        }
        Iterator<LocationSensorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDistanceIntervalChanged(this.distanceInterval);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance.")
    public int DistanceInterval() {
        return this.distanceInterval;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HasLongitudeLatitude() {
        return this.hasLocationData && this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HasAltitude() {
        return this.hasAltitude && this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HasAccuracy() {
        return Accuracy() != 0.0d && this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public double Longitude() {
        return this.longitude;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public double Latitude() {
        return this.latitude;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The most recently available altitude value, in meters.  If no value is available, 0 will be returned.")
    public double Altitude() {
        return this.altitude;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The most recent measure of accuracy, in meters.  If no value is available, 0 will be returned.")
    public double Accuracy() {
        Location location = this.lastLocation;
        if (location != null && location.hasAccuracy()) {
            return this.lastLocation.getAccuracy();
        }
        if (this.locationProvider != null) {
            return r0.getAccuracy();
        }
        return 0.0d;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.enabled = z;
        if (this.initialized) {
            if (!z) {
                stopListening();
            } else {
                RefreshProvider("Enabled");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    @com.google.appinventor.components.annotations.SimpleProperty(category = com.google.appinventor.components.annotations.PropertyCategory.BEHAVIOR, description = "Provides a textual representation of the current address or \"No address available\".")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String CurrentAddress() throws java.io.IOException {
        /*
            r11 = this;
            boolean r0 = r11.hasLocationData
            if (r0 == 0) goto L23
            double r0 = r11.latitude
            r2 = 4636033603912859648(0x4056800000000000, double:90.0)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 > 0) goto L23
            r2 = -4587338432941916160(0xc056800000000000, double:-90.0)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 < 0) goto L23
            double r0 = r11.longitude
            r2 = 4640537203540230144(0x4066800000000000, double:180.0)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L2e
        L23:
            double r0 = r11.longitude
            r2 = -4582834833314545664(0xc066800000000000, double:-180.0)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 < 0) goto L90
        L2e:
            android.location.Geocoder r5 = r11.geocoder     // Catch: java.lang.Exception -> L65
            double r6 = r11.latitude     // Catch: java.lang.Exception -> L65
            double r8 = r11.longitude     // Catch: java.lang.Exception -> L65
            r10 = 1
            java.util.List r0 = r5.getFromLocation(r6, r8, r10)     // Catch: java.lang.Exception -> L65
            if (r0 == 0) goto L90
            int r1 = r0.size()     // Catch: java.lang.Exception -> L65
            r2 = 1
            if (r1 != r2) goto L90
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L65
            android.location.Address r0 = (android.location.Address) r0     // Catch: java.lang.Exception -> L65
            if (r0 == 0) goto L90
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L65
            r2.<init>()     // Catch: java.lang.Exception -> L65
        L50:
            int r3 = r0.getMaxAddressLineIndex()     // Catch: java.lang.Exception -> L65
            if (r1 > r3) goto L67
            java.lang.String r3 = r0.getAddressLine(r1)     // Catch: java.lang.Exception -> L65
            r2.append(r3)     // Catch: java.lang.Exception -> L65
            java.lang.String r3 = "\n"
            r2.append(r3)     // Catch: java.lang.Exception -> L65
            int r1 = r1 + 1
            goto L50
        L65:
            r0 = move-exception
            goto L6c
        L67:
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Exception -> L65
            return r0
        L6c:
            boolean r1 = r0 instanceof java.lang.IllegalArgumentException
            if (r1 != 0) goto L85
            boolean r1 = r0 instanceof java.io.IOException
            if (r1 != 0) goto L85
            boolean r1 = r0 instanceof java.lang.IndexOutOfBoundsException
            if (r1 == 0) goto L79
            goto L85
        L79:
            java.lang.String r1 = com.google.appinventor.components.runtime.LocationSensor.LOG_TAG
            java.lang.String r0 = r0.getMessage()
            java.lang.String r2 = "Unexpected exception thrown by getting current address "
            _COROUTINE.a.w(r2, r0, r1)
            goto L90
        L85:
            java.lang.String r1 = com.google.appinventor.components.runtime.LocationSensor.LOG_TAG
            java.lang.String r0 = r0.getMessage()
            java.lang.String r2 = "Exception thrown by getting current address "
            _COROUTINE.a.w(r2, r0, r1)
        L90:
            java.lang.String r0 = "No address available"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.LocationSensor.CurrentAddress():java.lang.String");
    }

    @SimpleFunction(description = "Derives latitude of given address")
    public double LatitudeFromAddress(String str) throws IOException {
        try {
            List<Address> fromLocationName = this.geocoder.getFromLocationName(str, 1);
            Log.i(LOG_TAG, "latitude addressObjs size is " + fromLocationName.size() + " for " + str);
            if (fromLocationName.size() == 0) {
                throw new IOException("");
            }
            return fromLocationName.get(0).getLatitude();
        } catch (IOException unused) {
            this.form.dispatchErrorOccurredEvent(this, "LatitudeFromAddress", 101, str);
            return 0.0d;
        }
    }

    @SimpleFunction(description = "Derives longitude of given address")
    public double LongitudeFromAddress(String str) throws IOException {
        try {
            List<Address> fromLocationName = this.geocoder.getFromLocationName(str, 1);
            Log.i(LOG_TAG, "longitude addressObjs size is " + fromLocationName.size() + " for " + str);
            if (fromLocationName.size() == 0) {
                throw new IOException("");
            }
            return fromLocationName.get(0).getLongitude();
        } catch (IOException unused) {
            this.form.dispatchErrorOccurredEvent(this, "LongitudeFromAddress", 102, str);
            return 0.0d;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public List<String> AvailableProviders() {
        return this.allProviders;
    }

    public void RefreshProvider(final String str) {
        if (this.initialized) {
            stopListening();
            if (!this.havePermission) {
                this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationSensor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LocationSensor locationSensor = this;
                        locationSensor.form.askPermission(new BulkPermissionRequest(locationSensor, "RefreshProvider", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION") { // from class: com.google.appinventor.components.runtime.LocationSensor.1.1
                            @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                            public void onGranted() {
                                this.havePermission = true;
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                this.RefreshProvider(str);
                                Log.d(LocationSensor.LOG_TAG, "Permission Granted");
                            }
                        });
                    }
                });
            }
            if (this.providerLocked && !empty(this.providerName)) {
                this.listening = startProvider(this.providerName);
                return;
            }
            this.allProviders = this.locationManager.getProviders(true);
            String bestProvider = this.locationManager.getBestProvider(this.locationCriteria, true);
            if (bestProvider != null && !bestProvider.equals(this.allProviders.get(0))) {
                this.allProviders.add(0, bestProvider);
            }
            for (String str2 : this.allProviders) {
                boolean zStartProvider = startProvider(str2);
                this.listening = zStartProvider;
                if (zStartProvider) {
                    if (this.providerLocked) {
                        return;
                    }
                    this.providerName = str2;
                    return;
                }
            }
        }
    }

    private boolean startProvider(String str) {
        this.providerName = str;
        LocationProvider provider = this.locationManager.getProvider(str);
        if (provider == null) {
            Log.d(LOG_TAG, "getProvider(" + str + ") returned null");
            return false;
        }
        stopListening();
        this.locationProvider = provider;
        this.locationManager.requestLocationUpdates(str, this.timeInterval, this.distanceInterval, this.myLocationListener);
        this.listening = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopListening() {
        if (this.listening) {
            this.locationManager.removeUpdates(this.myLocationListener);
            this.locationProvider = null;
            this.listening = false;
        }
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.enabled) {
            RefreshProvider("onResume");
        }
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        stopListening();
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        stopListening();
    }

    public void addListener(LocationSensorListener locationSensorListener) {
        locationSensorListener.setSource(this);
        this.listeners.add(locationSensorListener);
    }

    public void removeListener(LocationSensorListener locationSensorListener) {
        this.listeners.remove(locationSensorListener);
        locationSensorListener.setSource(null);
    }

    private boolean empty(String str) {
        return str == null || str.length() == 0;
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.add(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(String str, Object obj) {
        Iterator<DataSourceChangeListener> it = this.dataSourceObservers.iterator();
        while (it.hasNext()) {
            it.next().onReceiveValue(this, str, obj);
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public Float getDataValue(String str) {
        str.getClass();
        switch (str) {
            case "latitude":
                return Float.valueOf((float) this.latitude);
            case "speed":
                return Float.valueOf(this.speed);
            case "longitude":
                return Float.valueOf((float) this.longitude);
            case "altitude":
                return Float.valueOf((float) this.altitude);
            default:
                return Float.valueOf(0.0f);
        }
    }
}

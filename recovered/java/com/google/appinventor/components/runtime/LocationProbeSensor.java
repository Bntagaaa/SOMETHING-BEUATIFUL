package com.google.appinventor.components.runtime;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.SimpleLocationProbe;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "<p>Similar compoment to LocationSensor that provides location information, including longitude, latitude, altitude (if supported by the device).  </p>The \"probe\" can be scheduled to periodically receive location information. In addition, LocationProbeSensor filters the verbose location set for the most accurate location within a max wait time (default 2 mins), ending early if it finds a location that has at most the goodEnoughAccuracy.The default max_wait_time is 2 mins and the default goodEnoughAccuracy is 80. Useful for sparse polling of location to limit battery usage.", iconName = "images/marker.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class LocationProbeSensor extends ProbeBase {
    public static final int UNKNOWN_VALUE = 0;
    private final int GOOD_ENOUGHT_ACCURACY;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    protected final String SIMPLE_LOCATION_PROBE;
    private final String TAG;
    private int goodEnoughAccurary;
    private Probe.DataListener listener;
    private float mAccuracy;
    private double mLatitude;
    private double mLongitude;
    private String mProvider;
    final Handler myHandler;
    private SimpleLocationProbe probe;
    private long timestamp;
    private boolean useCache;
    private boolean useGPS;
    private boolean useNetwork;

    @SimpleProperty(description = "The default duration (in seconds) of each scan for this probe")
    public float DefaultDuration() {
        return 60.0f;
    }

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 1800.0f;
    }

    public LocationProbeSensor(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "LocationProbeSensor";
        this.SIMPLE_LOCATION_PROBE = "edu.mit.media.funf.probe.builtin.SimpleLocationProbe";
        this.mLatitude = 0.0d;
        this.mLongitude = 0.0d;
        this.mAccuracy = 0.0f;
        this.mProvider = "";
        this.SCHEDULE_INTERVAL = 1800;
        this.SCHEDULE_DURATION = 60;
        this.GOOD_ENOUGHT_ACCURACY = 80;
        this.useGPS = true;
        this.useNetwork = true;
        this.useCache = false;
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.LocationProbeSensor.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("LocationProbeSensor", "Update component's varibles.....");
                LocationProbeSensor.this.mLatitude = iJsonObject.get("mLatitude").getAsDouble();
                LocationProbeSensor.this.mLongitude = iJsonObject.get("mLongitude").getAsDouble();
                LocationProbeSensor.this.mAccuracy = iJsonObject.get("mAccuracy").getAsFloat();
                LocationProbeSensor.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                LocationProbeSensor.this.mProvider = iJsonObject.get("mProvider").getAsString();
                Log.i("LocationProbeSensor", " before call LocationInfoReceived();");
                LocationProbeSensor locationProbeSensor = LocationProbeSensor.this;
                locationProbeSensor.LocationInfoReceived(locationProbeSensor.timestamp, LocationProbeSensor.this.mLatitude, LocationProbeSensor.this.mLongitude, LocationProbeSensor.this.mAccuracy, LocationProbeSensor.this.mProvider);
                Log.i("LocationProbeSensor", " after call LocationInfoReceived();");
            }
        };
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.LocationProbeSensor.4
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
                LocationProbeSensor.this.LocationUpdateComplete();
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("LocationProbeSensor", "receive data");
                Log.i("LocationProbeSensor", "mLatitude:" + iJsonObject2.get("mLatitude").getAsDouble());
                Log.i("LocationProbeSensor", "mLongitude:" + iJsonObject2.get("mLongitude").getAsDouble());
                Log.i("LocationProbeSensor", "mAccuracy:" + iJsonObject2.get("mAccuracy").getAsFloat());
                _COROUTINE.a.C("mProvider:", iJsonObject2.get("mProvider").getAsString(), "LocationProbeSensor");
                Log.i("LocationProbeSensor", "timestamp:" + iJsonObject2.get("timestamp").getAsLong());
                LocationProbeSensor locationProbeSensor = LocationProbeSensor.this;
                if (locationProbeSensor.enabledSaveToDB) {
                    locationProbeSensor.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = LocationProbeSensor.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                LocationProbeSensor.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("LocationProbeSensor", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.interval = 1800;
        this.duration = 60;
        this.goodEnoughAccurary = 80;
    }

    @SimpleEvent
    public void LocationInfoReceived(final long j, final double d, final double d2, final float f, final String str) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationProbeSensor.2
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("LocationProbeSensor", "LocationInfoReceived() is called");
                    EventDispatcher.dispatchEvent(LocationProbeSensor.this, "LocationInfoReceived", Long.valueOf(j), Double.valueOf(d), Double.valueOf(d2), Float.valueOf(f), str);
                }
            });
        }
    }

    @SimpleEvent
    public void LocationUpdateComplete() {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationProbeSensor.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("LocationProbeSensor", "LocationUpdateComplete() is called");
                    EventDispatcher.dispatchEvent(LocationProbeSensor.this, "LocationUpdateComplete", new Object[0]);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable location probe to run once and receive location")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            JsonObject jsonObjectCreateNewConfig = createNewConfig(this.useGPS, this.useNetwork, this.goodEnoughAccurary);
            SimpleLocationProbe simpleLocationProbe = (SimpleLocationProbe) this.gson.fromJson(jsonObjectCreateNewConfig, SimpleLocationProbe.class);
            this.probe = simpleLocationProbe;
            simpleLocationProbe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("LocationProbeSensor", "register location listener for run-once");
            Log.i("LocationProbeSensor", "run-once config:" + jsonObjectCreateNewConfig);
            return;
        }
        this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
        Log.i("LocationProbeSensor", "unregister location run-once listener");
    }

    private JsonObject createNewConfig(boolean z, boolean z2, int i) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("goodEnoughAccuracy", Integer.valueOf(i));
        jsonObject.addProperty("useGPS", Boolean.valueOf(z));
        jsonObject.addProperty("useNetwork", Boolean.valueOf(z2));
        jsonObject.addProperty("useCache", Boolean.valueOf(this.useCache));
        return jsonObject;
    }

    @SimpleProperty(description = "Set whether the location info will use the last known location without acquring a new location either through GPC or Network fix")
    @DesignerProperty(defaultValue = "Fsocalse", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseCache(boolean z) {
        if (this.useCache != z) {
            this.useCache = z;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean UseCache() {
        return this.useCache;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "80", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void GoodEnoughAccuracy(int i) {
        if (this.goodEnoughAccurary != i) {
            this.goodEnoughAccurary = i;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public int GoodEnoughAccuracy() {
        return this.goodEnoughAccurary;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseGPS(boolean z) {
        if (this.useGPS != z) {
            this.useGPS = z;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean UseGPS() {
        return this.useGPS;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseNetwork(boolean z) {
        if (this.useNetwork != z) {
            this.useNetwork = z;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean UseNetwork() {
        return this.useNetwork;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("LocationProbeSensor", "Registering location data requests.");
        JsonObject dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.SimpleLocationProbe");
        JsonObject jsonObject = dataRequest;
        jsonObject.addProperty("goodEnoughAccurary", Integer.valueOf(this.goodEnoughAccurary));
        jsonObject.addProperty("useGPS", Boolean.valueOf(this.useGPS));
        jsonObject.addProperty("useNetwork", Boolean.valueOf(this.useNetwork));
        jsonObject.addProperty("useCache", Boolean.valueOf(this.useCache));
        _COROUTINE.a.C("Location Data request: ", dataRequest.toString(), "LocationProbeSensor");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("LocationProbeSensor", "Unregistering location data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("LocationProbeSensor", "After Unregistering location data requests.");
    }
}

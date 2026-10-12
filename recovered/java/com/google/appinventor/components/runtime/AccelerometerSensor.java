package com.google.appinventor.components.runtime;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.util.Log;
import android.view.WindowManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.Sensitivity;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul>\n<li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li>\n <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li>\n <li> <strong>zAccel</strong>: Equal to -9.8 (earth's gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpendicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul>", iconName = "images/accelerometersensor.png", nonVisible = true, version = 5)
@SimpleObject
/* loaded from: classes.dex */
public class AccelerometerSensor extends AndroidNonvisibleComponent implements OnPauseListener, OnResumeListener, SensorComponent, SensorEventListener, Deleteable, RealTimeDataSource<String, Float> {
    private static final boolean DEBUG = true;
    private static final String LOG_TAG = "AccelerometerSensor";
    private static final int SENSOR_CACHE_SIZE = 10;
    private static final double moderateShakeThreshold = 13.0d;
    private static final double strongShakeThreshold = 20.0d;
    private static final double weakShakeThreshold = 5.0d;
    private final Queue<Float> X_CACHE;
    private final Queue<Float> Y_CACHE;
    private final Queue<Float> Z_CACHE;
    private Sensor accelerometerSensor;
    private int accuracy;
    private final Handler androidUIHandler;
    private final Set<DataSourceChangeListener> dataSourceObservers;
    private volatile int deviceDefaultOrientation;
    private boolean enabled;
    private boolean legacyMode;
    private int minimumInterval;
    private final Resources resources;
    private Sensitivity sensitivity;
    private final SensorManager sensorManager;
    private long timeLastShook;
    private final WindowManager windowManager;
    private float xAccel;
    private float yAccel;
    private float zAccel;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public AccelerometerSensor(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.X_CACHE = new LinkedList();
        this.Y_CACHE = new LinkedList();
        this.Z_CACHE = new LinkedList();
        this.legacyMode = false;
        this.dataSourceObservers = new HashSet();
        this.form.registerForOnResume(this);
        this.form.registerForOnPause(this);
        this.enabled = true;
        this.resources = componentContainer.$context().getResources();
        this.windowManager = (WindowManager) componentContainer.$context().getSystemService("window");
        SensorManager sensorManager = (SensorManager) componentContainer.$context().getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.accelerometerSensor = sensorManager.getDefaultSensor(1);
        this.androidUIHandler = new Handler();
        startListening();
        MinimumInterval(400);
        SensitivityAbstract(Sensitivity.Moderate);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The minimum interval, in milliseconds, between phone shakes")
    public int MinimumInterval() {
        return this.minimumInterval;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "400", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void MinimumInterval(int i) {
        this.minimumInterval = i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A number that encodes how sensitive the accelerometer is. The choices are: 1 = weak, 2 = moderate,  3 = strong.")
    public int Sensitivity() {
        return this.sensitivity.toUnderlyingValue().intValue();
    }

    public Sensitivity SensitivityAbstract() {
        return this.sensitivity;
    }

    public void SensitivityAbstract(Sensitivity sensitivity) {
        this.sensitivity = sensitivity;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "2", editorType = PropertyTypeConstants.PROPERTY_TYPE_ACCELEROMETER_SENSITIVITY)
    public void Sensitivity(@Options(Sensitivity.class) int i) {
        Sensitivity sensitivityFromUnderlyingValue = Sensitivity.fromUnderlyingValue(Integer.valueOf(i));
        if (sensitivityFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "Sensitivity", ErrorMessages.ERROR_BAD_VALUE_FOR_ACCELEROMETER_SENSITIVITY, Integer.valueOf(i));
        } else {
            SensitivityAbstract(sensitivityFromUnderlyingValue);
        }
    }

    @SimpleEvent
    public void AccelerationChanged(float f, float f2, float f3) {
        this.xAccel = f;
        this.yAccel = f2;
        this.zAccel = f3;
        addToSensorCache(this.X_CACHE, f);
        addToSensorCache(this.Y_CACHE, f2);
        addToSensorCache(this.Z_CACHE, f3);
        notifyDataObservers("X", (Object) Float.valueOf(f));
        notifyDataObservers("Y", (Object) Float.valueOf(f2));
        notifyDataObservers("Z", (Object) Float.valueOf(f3));
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (isShaking(this.X_CACHE, f) || isShaking(this.Y_CACHE, f2) || isShaking(this.Z_CACHE, f3)) {
            long j = this.timeLastShook;
            if (j == 0 || jCurrentTimeMillis >= j + this.minimumInterval) {
                this.timeLastShook = jCurrentTimeMillis;
                Shaking();
            }
        }
        EventDispatcher.dispatchEvent(this, "AccelerationChanged", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3));
    }

    public int getDeviceDefaultOrientation() {
        Configuration configuration = this.resources.getConfiguration();
        int rotation = this.windowManager.getDefaultDisplay().getRotation();
        Log.d(LOG_TAG, "rotation = " + rotation);
        Log.d(LOG_TAG, "config.orientation = " + configuration.orientation);
        return (((rotation == 0 || rotation == 2) && configuration.orientation == 2) || ((rotation == 1 || rotation == 3) && configuration.orientation == 1)) ? 2 : 1;
    }

    @SimpleEvent
    public void Shaking() {
        EventDispatcher.dispatchEvent(this, "Shaking", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns whether the accelerometer is available on the device.")
    public boolean Available() {
        return this.sensorManager.getSensorList(1).size() > 0;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.enabled;
    }

    private void startListening() {
        this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.AccelerometerSensor.1
            @Override // java.lang.Runnable
            public void run() {
                AccelerometerSensor accelerometerSensor = AccelerometerSensor.this;
                accelerometerSensor.deviceDefaultOrientation = accelerometerSensor.getDeviceDefaultOrientation();
                Log.d(AccelerometerSensor.LOG_TAG, "deviceDefaultOrientation = " + AccelerometerSensor.this.deviceDefaultOrientation);
                Log.d(AccelerometerSensor.LOG_TAG, "Configuration.ORIENTATION_LANDSCAPE = 2");
                Log.d(AccelerometerSensor.LOG_TAG, "Configuration.ORIENTATION_PORTRAIT = 1");
            }
        }, 32L);
        this.sensorManager.registerListener(this, this.accelerometerSensor, 1);
    }

    private void stopListening() {
        this.sensorManager.unregisterListener(this);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        if (z) {
            startListening();
        } else {
            stopListening();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public float XAccel() {
        return this.xAccel;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public float YAccel() {
        return this.yAccel;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public float ZAccel() {
        return this.zAccel;
    }

    private void addToSensorCache(Queue<Float> queue, float f) {
        if (queue.size() >= 10) {
            queue.remove();
        }
        queue.add(Float.valueOf(f));
    }

    private boolean isShaking(Queue<Float> queue, float f) {
        Iterator<Float> it = queue.iterator();
        float fFloatValue = 0.0f;
        while (it.hasNext()) {
            fFloatValue += it.next().floatValue();
        }
        float fAbs = Math.abs((fFloatValue / queue.size()) - f);
        int i = AnonymousClass2.$SwitchMap$com$google$appinventor$components$common$Sensitivity[this.sensitivity.ordinal()];
        if (i == 1) {
            return ((double) fAbs) > strongShakeThreshold;
        }
        if (i == 2) {
            double d = fAbs;
            return d > moderateShakeThreshold && d < strongShakeThreshold;
        }
        if (i != 3) {
            return false;
        }
        double d2 = fAbs;
        return d2 > weakShakeThreshold && d2 < moderateShakeThreshold;
    }

    /* renamed from: com.google.appinventor.components.runtime.AccelerometerSensor$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$Sensitivity;

        static {
            int[] iArr = new int[Sensitivity.values().length];
            $SwitchMap$com$google$appinventor$components$common$Sensitivity = iArr;
            try {
                iArr[Sensitivity.Weak.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$Sensitivity[Sensitivity.Moderate.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$Sensitivity[Sensitivity.Strong.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Prior to the release that added this property the AccelerometerSensor component passed through sensor values directly as received from the Android system. However these values do not compensate for tablets that default to Landscape mode, requiring the MIT App Inventor programmer to compensate. However compensating would result in incorrect results in Portrait mode devices such as phones. We now detect Landscape mode tablets and perform the compensation. However if your project is already compensating for the change, you will now get incorrect results. Although our preferred solution is for you to update your project, you can also just set this property to “true” and our compensation code will be deactivated. Note: We recommend that you update your project as we may remove this property in a future release.", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LegacyMode(boolean z) {
        this.legacyMode = z;
    }

    public boolean LegacyMode() {
        return this.legacyMode;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.enabled) {
            float[] fArr = sensorEvent.values;
            if (this.deviceDefaultOrientation == 2 && !this.legacyMode) {
                this.xAccel = fArr[1];
                this.yAccel = -fArr[0];
            } else {
                this.xAccel = fArr[0];
                this.yAccel = fArr[1];
            }
            float f = fArr[2];
            this.zAccel = f;
            this.accuracy = sensorEvent.accuracy;
            AccelerationChanged(this.xAccel, this.yAccel, f);
        }
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.enabled) {
            startListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        if (this.enabled) {
            stopListening();
        }
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        if (this.enabled) {
            stopListening();
        }
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
            case "X":
                return Float.valueOf(this.xAccel);
            case "Y":
                return Float.valueOf(this.yAccel);
            case "Z":
                return Float.valueOf(this.zAccel);
            default:
                return Float.valueOf(0.0f);
        }
    }
}

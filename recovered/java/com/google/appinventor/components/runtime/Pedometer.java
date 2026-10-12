package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "A Component that acts like a Pedometer. It senses motion via the Accelerometer and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. ", iconName = "images/pedometer.png", nonVisible = true, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public class Pedometer extends AndroidNonvisibleComponent implements Component, SensorEventListener, Deleteable, RealTimeDataSource<String, Float> {
    private static final int INTERVAL_VARIATION = 250;
    private static final int NUM_INTERVALS = 2;
    private static final float PEAK_VALLEY_RANGE = 40.0f;
    private static final String PREFS_NAME = "PedometerPrefs";
    private static final float STRIDE_LENGTH = 0.73f;
    private static final String TAG = "Pedometer";
    private static final int WIN_SIZE = 100;
    private int avgPos;
    private float[] avgWindow;
    private final Context context;
    private Set<DataSourceChangeListener> dataSourceObservers;
    private boolean foundNonStep;
    private boolean foundValley;
    private int intervalPos;
    private float lastValley;
    private float[] lastValues;
    private int numStepsRaw;
    private int numStepsWithFilter;
    private boolean pedometerPaused;
    private long prevStopClockTime;
    private final SensorManager sensorManager;
    private boolean startPeaking;
    private long startTime;
    private long[] stepInterval;
    private long stepTimestamp;
    private int stopDetectionTimeout;
    private float strideLength;
    private float totalDistance;
    private int winPos;

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "This property has been deprecated.")
    @Deprecated
    public void CalibrateStrideLength(boolean z) {
    }

    @SimpleProperty(description = "This property has been deprecated.")
    @Deprecated
    public boolean CalibrateStrideLength() {
        return false;
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void CalibrationFailed() {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void GPSAvailable() {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void GPSLost() {
    }

    @SimpleProperty(description = "This property has been deprecated.")
    @Deprecated
    public boolean Moving() {
        return false;
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void StartedMoving() {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void StoppedMoving() {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "This property has been deprecated.")
    @Deprecated
    public void UseGPS(boolean z) {
    }

    public Pedometer(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.stopDetectionTimeout = 2000;
        this.winPos = 0;
        this.intervalPos = 0;
        this.numStepsWithFilter = 0;
        this.numStepsRaw = 0;
        this.lastValley = 0.0f;
        this.lastValues = new float[100];
        this.strideLength = STRIDE_LENGTH;
        this.totalDistance = 0.0f;
        this.stepInterval = new long[2];
        this.stepTimestamp = 0L;
        this.startTime = 0L;
        this.prevStopClockTime = 0L;
        this.foundValley = false;
        this.startPeaking = false;
        this.foundNonStep = true;
        this.pedometerPaused = true;
        this.avgWindow = new float[10];
        this.avgPos = 0;
        this.dataSourceObservers = new HashSet();
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.winPos = 0;
        this.startPeaking = false;
        this.numStepsWithFilter = 0;
        this.numStepsRaw = 0;
        this.foundValley = true;
        this.lastValley = 0.0f;
        this.sensorManager = (SensorManager) activity$context.getSystemService("sensor");
        SharedPreferences sharedPreferences = activity$context.getSharedPreferences(PREFS_NAME, 0);
        this.strideLength = sharedPreferences.getFloat("Pedometer.stridelength", STRIDE_LENGTH);
        this.totalDistance = sharedPreferences.getFloat("Pedometer.distance", 0.0f);
        this.numStepsRaw = sharedPreferences.getInt("Pedometer.prevStepCount", 0);
        this.prevStopClockTime = sharedPreferences.getLong("Pedometer.clockTime", 0L);
        this.numStepsWithFilter = this.numStepsRaw;
        this.startTime = System.currentTimeMillis();
        Log.d(TAG, "Pedometer Created");
    }

    @SimpleFunction(description = "Start counting steps")
    public void Start() {
        if (this.pedometerPaused) {
            this.pedometerPaused = false;
            SensorManager sensorManager = this.sensorManager;
            sensorManager.registerListener(this, sensorManager.getSensorList(1).get(0), 0);
            this.startTime = System.currentTimeMillis();
        }
    }

    @SimpleFunction(description = "Stop counting steps")
    public void Stop() {
        if (this.pedometerPaused) {
            return;
        }
        this.pedometerPaused = true;
        this.sensorManager.unregisterListener(this);
        Log.d(TAG, "Unregistered listener on pause");
        this.prevStopClockTime = (System.currentTimeMillis() - this.startTime) + this.prevStopClockTime;
    }

    @SimpleFunction(description = "Resets the step counter, distance measure and time running.")
    public void Reset() {
        this.numStepsWithFilter = 0;
        this.numStepsRaw = 0;
        this.totalDistance = 0.0f;
        this.prevStopClockTime = 0L;
        this.startTime = System.currentTimeMillis();
    }

    @SimpleFunction(description = "Resumes counting, synonym of Start.")
    @Deprecated
    public void Resume() {
        Start();
    }

    @SimpleFunction(description = "Pause counting of steps and distance.")
    @Deprecated
    public void Pause() {
        Stop();
    }

    @SimpleFunction(description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state.")
    public void Save() {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.putFloat("Pedometer.stridelength", this.strideLength);
        editorEdit.putFloat("Pedometer.distance", this.totalDistance);
        editorEdit.putInt("Pedometer.prevStepCount", this.numStepsRaw);
        if (this.pedometerPaused) {
            editorEdit.putLong("Pedometer.clockTime", this.prevStopClockTime);
        } else {
            editorEdit.putLong("Pedometer.clockTime", (System.currentTimeMillis() - this.startTime) + this.prevStopClockTime);
        }
        editorEdit.putLong("Pedometer.closeTime", System.currentTimeMillis());
        editorEdit.commit();
        Log.d(TAG, "Pedometer state saved.");
    }

    @SimpleEvent(description = "This event is run when a raw step is detected.")
    public void SimpleStep(int i, float f) {
        notifyDataObservers("SimpleSteps", (Object) Integer.valueOf(i));
        notifyDataObservers("Distance", (Object) Float.valueOf(f));
        EventDispatcher.dispatchEvent(this, "SimpleStep", Integer.valueOf(i), Float.valueOf(f));
    }

    @SimpleEvent(description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion.")
    public void WalkStep(int i, float f) {
        notifyDataObservers("WalkSteps", (Object) Integer.valueOf(i));
        notifyDataObservers("Distance", (Object) Float.valueOf(f));
        EventDispatcher.dispatchEvent(this, "WalkStep", Integer.valueOf(i), Float.valueOf(f));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the average stride length in meters.")
    @DesignerProperty(defaultValue = "0.73", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void StrideLength(float f) {
        this.strideLength = f;
    }

    @SimpleProperty
    public float StrideLength() {
        return this.strideLength;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state")
    @DesignerProperty(defaultValue = "2000", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void StopDetectionTimeout(int i) {
        this.stopDetectionTimeout = i;
    }

    @SimpleProperty
    public int StopDetectionTimeout() {
        return this.stopDetectionTimeout;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The approximate distance traveled in meters.")
    public float Distance() {
        return this.totalDistance;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Time elapsed in milliseconds since the pedometer was started.")
    public long ElapsedTime() {
        if (this.pedometerPaused) {
            return this.prevStopClockTime;
        }
        return (System.currentTimeMillis() - this.startTime) + this.prevStopClockTime;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The number of simple steps taken since the pedometer has started.")
    public int SimpleSteps() {
        return this.numStepsRaw;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "the number of walk steps taken since the pedometer has started.")
    public int WalkSteps() {
        return this.numStepsWithFilter;
    }

    private boolean areStepsEquallySpaced() {
        float f = 0.0f;
        int i = 0;
        for (long j : this.stepInterval) {
            if (j > 0) {
                i++;
                f += j;
            }
        }
        float f2 = f / i;
        int length = this.stepInterval.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (Math.abs(r0[i2] - f2) > 250.0f) {
                return false;
            }
        }
        return true;
    }

    private boolean isPeak() {
        int i = (this.winPos + 50) % 100;
        for (int i2 = 0; i2 < 100; i2++) {
            if (i2 != i) {
                float[] fArr = this.lastValues;
                if (fArr[i2] > fArr[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean isValley() {
        int i = (this.winPos + 50) % 100;
        for (int i2 = 0; i2 < 100; i2++) {
            if (i2 != i) {
                float[] fArr = this.lastValues;
                if (fArr[i2] < fArr[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
        Log.d(TAG, "Accelerometer accuracy changed.");
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            return;
        }
        float f = 0.0f;
        for (float f2 : sensorEvent.values) {
            f += f2 * f2;
        }
        int i = (this.winPos + 50) % 100;
        if (this.startPeaking && isPeak() && this.foundValley && this.lastValues[i] - this.lastValley > PEAK_VALLEY_RANGE) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long[] jArr = this.stepInterval;
            int i2 = this.intervalPos;
            jArr[i2] = jCurrentTimeMillis - this.stepTimestamp;
            this.intervalPos = (i2 + 1) % 2;
            this.stepTimestamp = jCurrentTimeMillis;
            if (areStepsEquallySpaced()) {
                if (this.foundNonStep) {
                    this.numStepsWithFilter += 2;
                    this.totalDistance = (this.strideLength * 2.0f) + this.totalDistance;
                    this.foundNonStep = false;
                }
                int i3 = this.numStepsWithFilter + 1;
                this.numStepsWithFilter = i3;
                WalkStep(i3, this.totalDistance);
                this.totalDistance += this.strideLength;
            } else {
                this.foundNonStep = true;
            }
            int i4 = this.numStepsRaw + 1;
            this.numStepsRaw = i4;
            SimpleStep(i4, this.totalDistance);
            this.foundValley = false;
        }
        if (this.startPeaking && isValley()) {
            this.foundValley = true;
            this.lastValley = this.lastValues[i];
        }
        float[] fArr = this.avgWindow;
        int i5 = this.avgPos;
        fArr[i5] = f;
        this.avgPos = (i5 + 1) % fArr.length;
        this.lastValues[this.winPos] = 0.0f;
        for (float f3 : fArr) {
            float[] fArr2 = this.lastValues;
            int i6 = this.winPos;
            fArr2[i6] = fArr2[i6] + f3;
        }
        float[] fArr3 = this.lastValues;
        int i7 = this.winPos;
        float length = fArr3[i7] / this.avgWindow.length;
        fArr3[i7] = length;
        boolean z = this.startPeaking;
        if (z || i7 > 1) {
            int i8 = i7 - 1;
            if (i8 < 0) {
                i8 = i7 + 99;
            }
            float f4 = (fArr3[i8] * 2.0f) + length;
            fArr3[i7] = f4;
            int i9 = i8 - 1;
            if (i9 < 0) {
                i9 = i8 + 99;
            }
            float f5 = f4 + fArr3[i9];
            fArr3[i7] = f5;
            fArr3[i7] = f5 / 4.0f;
        } else if (!z && i7 == 1) {
            fArr3[1] = (fArr3[1] + fArr3[0]) / 2.0f;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (jCurrentTimeMillis2 - this.stepTimestamp > this.stopDetectionTimeout) {
            this.stepTimestamp = jCurrentTimeMillis2;
        }
        int i10 = this.winPos;
        if (i10 == 99 && !this.startPeaking) {
            this.startPeaking = true;
        }
        this.winPos = (i10 + 1) % 100;
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.sensorManager.unregisterListener(this);
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
            case "WalkSteps":
                return Float.valueOf(this.numStepsWithFilter);
            case "SimpleSteps":
                return Float.valueOf(this.numStepsRaw);
            case "Distance":
                return Float.valueOf(this.totalDistance);
            default:
                return Float.valueOf(0.0f);
        }
    }
}

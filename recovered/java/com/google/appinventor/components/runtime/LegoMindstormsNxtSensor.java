package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.NxtSensorPort;
import com.google.appinventor.components.runtime.util.ErrorMessages;

@SimpleObject
/* loaded from: classes.dex */
public abstract class LegoMindstormsNxtSensor extends LegoMindstormsNxtBase {
    protected NxtSensorPort port;

    public abstract void SensorPort(String str);

    public abstract void initializeSensor(String str);

    public static class SensorValue<T> {
        final boolean valid;
        final T value;

        public SensorValue(boolean z, T t) {
            this.valid = z;
            this.value = t;
        }
    }

    public LegoMindstormsNxtSensor(ComponentContainer componentContainer, String str) {
        super(componentContainer, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The sensor port that the sensor is connected to.", userVisible = false)
    public String SensorPort() {
        return this.port.toUnderlyingValue();
    }

    public final void setSensorPort(String str) {
        NxtSensorPort nxtSensorPortFromUnderlyingValue = NxtSensorPort.fromUnderlyingValue(str);
        if (nxtSensorPortFromUnderlyingValue == null) {
            this.form.dispatchErrorOccurredEvent(this, "SensorPort", ErrorMessages.ERROR_NXT_INVALID_SENSOR_PORT, str);
            return;
        }
        this.port = nxtSensorPortFromUnderlyingValue;
        BluetoothClient bluetoothClient = this.bluetooth;
        if (bluetoothClient == null || !bluetoothClient.IsConnected()) {
            return;
        }
        initializeSensor("SensorPort");
    }

    @Override // com.google.appinventor.components.runtime.LegoMindstormsNxtBase, com.google.appinventor.components.runtime.BluetoothConnectionListener
    public void afterConnect(BluetoothConnectionBase bluetoothConnectionBase) {
        initializeSensor("Connect");
    }
}

package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "A sensor component that can measure the ambient air pressure.", iconName = "images/barometer.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Barometer extends SingleValueSensor {
    public Barometer(ComponentContainer componentContainer) {
        super(componentContainer.$form(), 6);
    }

    @Override // com.google.appinventor.components.runtime.SingleValueSensor
    public void onValueChanged(float f) {
        AirPressureChanged(f);
    }

    @SimpleEvent
    public void AirPressureChanged(float f) {
        EventDispatcher.dispatchEvent(this, "AirPressureChanged", Float.valueOf(f));
    }

    @SimpleProperty(description = "The air pressure in hPa (millibar), if the sensor is available and enabled.")
    public float AirPressure() {
        return getValue();
    }
}

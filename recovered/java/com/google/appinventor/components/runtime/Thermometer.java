package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.SENSORS, description = "A sensor component that can measure the ambient (external) temperature. Most Android devices do not have this sensor.", iconName = "images/thermometer.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Thermometer extends SingleValueSensor {
    public Thermometer(ComponentContainer componentContainer) {
        super(componentContainer.$form(), 13);
    }

    @Override // com.google.appinventor.components.runtime.SingleValueSensor
    public void onValueChanged(float f) {
        TemperatureChanged(f);
    }

    @SimpleEvent(description = "Called when a change is detected in the temperature (in degrees Celsius).")
    public void TemperatureChanged(float f) {
        EventDispatcher.dispatchEvent(this, "TemperatureChanged", Float.valueOf(f));
    }

    @SimpleProperty(description = "The temperature in degrees Celsius, if the sensor is available and enabled")
    public float Temperature() {
        return getValue();
    }
}

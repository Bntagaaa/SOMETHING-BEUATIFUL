package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.Ev3BinaryParser;
import java.io.IOException;

@SimpleObject
/* loaded from: classes.dex */
public class LegoMindstormsEv3Sensor extends LegoMindstormsEv3Base {
    protected static final String DEFAULT_SENSOR_PORT = "1";
    protected int sensorPortNumber;

    public LegoMindstormsEv3Sensor(ComponentContainer componentContainer, String str) {
        super(componentContainer, str);
        SensorPort("1");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The sensor port that the sensor is connected to.", userVisible = false)
    public String SensorPort() {
        return portNumberToSensorPortLetter(this.sensorPortNumber);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_LEGO_EV3_SENSOR_PORT)
    public void SensorPort(String str) {
        setSensorPort("SensorPort", str);
    }

    public final void setSensorPort(String str, String str2) {
        try {
            this.sensorPortNumber = sensorPortLetterToPortNumber(str2);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_EV3_ILLEGAL_SENSOR_PORT, str2);
        }
    }

    public final int readInputPercentage(String str, int i, int i2, int i3, int i4) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 3 || i4 < -1 || i4 > 7) {
            throw new IllegalArgumentException();
        }
        byte[] bArrSendCommand = sendCommand(str, Ev3BinaryParser.encodeDirectCommand((byte) -103, true, 1, 0, "ccccccg", (byte) 27, Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) i3), Byte.valueOf((byte) i4), (byte) 1, (byte) 0), true);
        if (bArrSendCommand != null && bArrSendCommand.length == 2 && bArrSendCommand[0] == 2) {
            return bArrSendCommand[1];
        }
        return -1;
    }

    public final double readInputSI(String str, int i, int i2, int i3, int i4) throws IOException, IllegalArgumentException {
        if (i < 0 || i > 3 || i2 < 0 || i2 > 3 || i4 < -1 || i4 > 7) {
            throw new IllegalArgumentException();
        }
        byte[] bArrSendCommand = sendCommand(str, Ev3BinaryParser.encodeDirectCommand((byte) -103, true, 4, 0, "ccccccg", (byte) 29, Byte.valueOf((byte) i), Byte.valueOf((byte) i2), Byte.valueOf((byte) i3), Byte.valueOf((byte) i4), (byte) 1, (byte) 0), true);
        if (bArrSendCommand != null && bArrSendCommand.length == 5 && bArrSendCommand[0] == 2) {
            return ((Float) Ev3BinaryParser.unpack("xf", bArrSendCommand)[0]).floatValue();
        }
        this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_EV3_INVALID_REPLY, new Object[0]);
        return -1.0d;
    }
}

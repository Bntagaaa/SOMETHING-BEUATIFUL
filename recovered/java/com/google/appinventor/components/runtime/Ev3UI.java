package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.Ev3BinaryParser;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.LEGOMINDSTORMS, description = "A component that provides a high-level interface to a LEGO MINDSTORMS EV3 robot, with functions to draw graphs on EV3 screen.", iconName = "images/legoMindstormsEv3.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Ev3UI extends LegoMindstormsEv3Base {
    public Ev3UI(ComponentContainer componentContainer) {
        super(componentContainer, "Ev3UI");
    }

    @SimpleFunction(description = "Draw a point on the screen.")
    public void DrawPoint(int i, int i2, int i3) throws IOException, IllegalArgumentException {
        if (i != 0 && i != 1) {
            this.form.dispatchErrorOccurredEvent(this, "DrawPoint", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "DrawPoint");
        } else {
            sendCommand("DrawPoint", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "cccc", (byte) 2, Byte.valueOf((byte) i), Short.valueOf((short) i2), Short.valueOf((short) i3)), false);
            sendCommand("DrawPoint", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "c", (byte) 0), false);
        }
    }

    @SimpleFunction(description = "Draw a built-in icon on screen.")
    public void DrawIcon(int i, int i2, int i3, int i4, int i5) throws IOException, IllegalArgumentException {
        if (i != 0 && i != 1) {
            this.form.dispatchErrorOccurredEvent(this, "DrawIcon", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "DrawIcon");
        } else {
            sendCommand("DrawIcon", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "cccccc", (byte) 6, Byte.valueOf((byte) i), Short.valueOf((short) i2), Short.valueOf((short) i3), Integer.valueOf(i4), Integer.valueOf(i5)), false);
            sendCommand("DrawIcon", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "c", (byte) 0), false);
        }
    }

    @SimpleFunction(description = "Draw a line on the screen.")
    public void DrawLine(int i, int i2, int i3, int i4, int i5) throws IOException, IllegalArgumentException {
        if (i != 0 && i != 1) {
            this.form.dispatchErrorOccurredEvent(this, "DrawLine", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "DrawLine");
        } else {
            sendCommand("DrawLine", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "cccccc", (byte) 3, Byte.valueOf((byte) i), Short.valueOf((short) i2), Short.valueOf((short) i3), Short.valueOf((short) i4), Short.valueOf((short) i5)), false);
            sendCommand("DrawLine", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "c", (byte) 0), false);
        }
    }

    @SimpleFunction(description = "Draw a rectangle on the screen.")
    public void DrawRect(int i, int i2, int i3, int i4, int i5, boolean z) throws IOException, IllegalArgumentException {
        if (i != 0 && i != 1) {
            this.form.dispatchErrorOccurredEvent(this, "DrawRect", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "DrawRect");
        } else {
            sendCommand("DrawRect", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "cccccc", Byte.valueOf(z ? (byte) 9 : (byte) 10), Byte.valueOf((byte) i), Short.valueOf((short) i2), Short.valueOf((short) i3), Short.valueOf((short) i4), Short.valueOf((short) i5)), false);
            sendCommand("DrawRect", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "c", (byte) 0), false);
        }
    }

    @SimpleFunction(description = "Draw a circle on the screen.")
    public void DrawCircle(int i, int i2, int i3, int i4, boolean z) throws IOException, IllegalArgumentException {
        if ((i != 0 && i != 1) || i4 < 0) {
            this.form.dispatchErrorOccurredEvent(this, "DrawCircle", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "DrawCircle");
        } else {
            sendCommand("DrawCircle", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "ccccc", Byte.valueOf(z ? (byte) 24 : (byte) 4), Byte.valueOf((byte) i), Short.valueOf((short) i2), Short.valueOf((short) i3), Short.valueOf((short) i4)), false);
            sendCommand("DrawCircle", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "c", (byte) 0), false);
        }
    }

    @SimpleFunction(description = "Fill the screen with a color.")
    public void FillScreen(int i) throws IOException, IllegalArgumentException {
        if (i != 0 && i != 1) {
            this.form.dispatchErrorOccurredEvent(this, "FillScreen", ErrorMessages.ERROR_EV3_ILLEGAL_ARGUMENT, "FillScreen");
        } else {
            sendCommand("FillScreen", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "cccc", (byte) 19, Byte.valueOf((byte) i), (short) 0, (short) 0), false);
            sendCommand("FillScreen", Ev3BinaryParser.encodeDirectCommand(Ev3Constants.Opcode.UI_DRAW, false, 0, 0, "c", (byte) 0), false);
        }
    }
}

package com.google.appinventor.components.runtime;

import android.graphics.Paint;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.PaintUtil;

@DesignerComponent(category = ComponentCategory.ANIMATION, description = "<p>A round 'sprite' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.</p><p>The difference between a <code>Ball</code> and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a <code>Ball</code>'s appearance can be changed only by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>", iconName = "images/ball.png", version = 8)
@SimpleObject
/* loaded from: classes.dex */
public final class Ball extends Sprite {
    static final int DEFAULT_RADIUS = 5;
    private Paint paint;
    private int paintColor;
    private int radius;

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public void Height(int i) {
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public void HeightPercent(int i) {
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public void Width(int i) {
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public void WidthPercent(int i) {
    }

    public Ball(ComponentContainer componentContainer) {
        super(componentContainer);
        this.paint = new Paint();
        PaintColor(-16777216);
        Radius(5);
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    public void onDraw(android.graphics.Canvas canvas) {
        if (this.visible) {
            float fDeviceDensity = (float) (this.xLeft * this.form.deviceDensity());
            float fDeviceDensity2 = (float) (this.yTop * this.form.deviceDensity());
            float fDeviceDensity3 = this.form.deviceDensity() * this.radius;
            canvas.drawCircle(fDeviceDensity + fDeviceDensity3, fDeviceDensity2 + fDeviceDensity3, fDeviceDensity3, this.paint);
        }
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public int Height() {
        return this.radius * 2;
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public int Width() {
        return this.radius * 2;
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    public boolean containsPoint(double d, double d2) {
        double d3 = this.xCenter;
        double d4 = (d - d3) * (d - d3);
        double d5 = this.yCenter;
        double d6 = ((d2 - d5) * (d2 - d5)) + d4;
        int i = this.radius;
        return d6 <= ((double) (i * i));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The distance from the edge of the Ball to its center.")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Radius(int i) {
        int i2 = i - this.radius;
        if (this.originAtCenter) {
            double d = i2;
            this.xLeft -= d;
            this.yTop -= d;
        }
        this.radius = i;
        registerChange();
    }

    @SimpleProperty
    public int Radius() {
        return this.radius;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the Ball.")
    public int PaintColor() {
        return this.paintColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void PaintColor(int i) {
        this.paintColor = i;
        if (i != 0) {
            PaintUtil.changePaint(this.paint, i);
        } else {
            PaintUtil.changePaint(this.paint, -16777216);
        }
        registerChange();
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the x- and y-coordinates should represent the center of the Ball (true) or its left and top edges (false).", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void OriginAtCenter(boolean z) {
        super.OriginAtCenter(z);
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleProperty(description = "The horizontal coordinate of the Ball, increasing as the Ball moves right. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the leftmost point of the Ball.")
    public double X() {
        return super.X();
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleProperty(description = "The vertical coordinate of the Ball, increasing as the Ball moves down. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the uppermost point of the Ball.")
    public double Y() {
        return super.Y();
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleFunction(description = "Sets the x and y coordinates of the Ball. If CenterAtOrigin is true, the center of the Ball will be placed here. Otherwise, the top left edge of the Ball will be placed at the specified coordinates.")
    public void MoveTo(double d, double d2) {
        super.MoveTo(d, d2);
    }
}

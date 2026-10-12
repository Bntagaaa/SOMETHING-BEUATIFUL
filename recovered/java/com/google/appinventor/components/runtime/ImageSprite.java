package com.google.appinventor.components.runtime;

import android.graphics.drawable.BitmapDrawable;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.ANIMATION, description = "<p>A 'sprite' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>).</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  A sprite whose <code>Rotates</code> property is <code>True</code> will rotate its image as the sprite's <code>Heading</code> changes.  Checking for collisions with a rotated sprite currently checks the sprite's unrotated position so that collision checking will be inaccurate for tall narrow or short wide sprites that are rotated.  Any of the sprite properties can be changed at any time under program control.</p> ", iconName = "images/imageSprite.png", version = 8)
@SimpleObject
/* loaded from: classes.dex */
public class ImageSprite extends Sprite {
    private BitmapDrawable drawable;
    private final Form form;
    private int heightHint;
    private String picturePath;
    private boolean rotates;
    private int widthHint;

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public void HeightPercent(int i) {
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    public void WidthPercent(int i) {
    }

    public ImageSprite(ComponentContainer componentContainer) {
        super(componentContainer);
        this.widthHint = -1;
        this.heightHint = -1;
        this.picturePath = "";
        this.form = componentContainer.$form();
        this.rotates = true;
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    public void onDraw(android.graphics.Canvas canvas) {
        if (this.drawable == null || !this.visible) {
            return;
        }
        int iDeviceDensity = (int) (this.form.deviceDensity() * Math.round(this.xLeft));
        int iDeviceDensity2 = (int) (this.form.deviceDensity() * Math.round(this.yTop));
        this.drawable.setBounds(iDeviceDensity, iDeviceDensity2, iDeviceDensity + ((int) (this.form.deviceDensity() * Width())), iDeviceDensity2 + ((int) (this.form.deviceDensity() * Height())));
        if (!this.rotates) {
            this.drawable.draw(canvas);
            return;
        }
        canvas.save();
        canvas.rotate((float) (-Heading()), (r2 / 2) + iDeviceDensity, (r3 / 2) + iDeviceDensity2);
        this.drawable.draw(canvas);
        canvas.restore();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The picture that determines the ImageSprite's appearance.")
    public String Picture() {
        return this.picturePath;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Picture(@Asset String str) {
        if (str == null) {
            str = "";
        }
        this.picturePath = str;
        try {
            this.drawable = MediaUtil.getBitmapDrawable(this.form, str);
        } catch (IOException unused) {
            _COROUTINE.a.w("Unable to load ", this.picturePath, "ImageSprite");
            this.drawable = null;
        }
        registerChange();
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "The height of the ImageSprite in pixels.")
    public int Height() {
        int i = this.heightHint;
        if (i != -1 && i != -2 && i > -1000) {
            return i;
        }
        if (this.drawable == null) {
            return 0;
        }
        return (int) (r0.getBitmap().getHeight() / this.form.deviceDensity());
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        this.heightHint = i;
        registerChange();
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "The width of the ImageSprite in pixels.")
    public int Width() {
        int i = this.widthHint;
        if (i != -1 && i != -2 && i > -1000) {
            return i;
        }
        if (this.drawable == null) {
            return 0;
        }
        return (int) (r0.getBitmap().getWidth() / this.form.deviceDensity());
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        this.widthHint = i;
        registerChange();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the image should rotate to match the ImageSprite's heading. The sprite rotates around its centerpoint.")
    public boolean Rotates() {
        return this.rotates;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Rotates(boolean z) {
        this.rotates = z;
        registerChange();
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleProperty(description = "The horizontal coordinate of the left edge of the ImageSprite, increasing as the ImageSprite moves right.")
    public double X() {
        return super.X();
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleProperty(description = "The vertical coordinate of the top edge of the ImageSprite, increasing as the ImageSprite moves down.")
    public double Y() {
        return super.Y();
    }

    @Override // com.google.appinventor.components.runtime.Sprite
    @SimpleFunction(description = "Moves the ImageSprite so that its left top corner is at the specified x and y coordinates.")
    public void MoveTo(double d, double d2) {
        super.MoveTo(d, d2);
    }
}

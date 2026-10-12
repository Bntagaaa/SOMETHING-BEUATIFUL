package com.google.appinventor.components.runtime;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.IllegalArgumentError;
import com.google.appinventor.components.runtime.util.AnimationUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.HoneycombUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.TiramisuUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Component for displaying images.  The picture to display, and other aspects of the Image's appearance, can be specified in the Designer or in the Blocks Editor.", iconName = "images/image.png", version = 6)
@SimpleObject
/* loaded from: classes.dex */
public final class Image extends AndroidViewComponent {
    private boolean clickable;
    private boolean longclickable;
    private String picturePath;
    private double rotationAngle;
    private int scalingMode;
    private final ImageView view;

    public Image(ComponentContainer componentContainer) {
        super(componentContainer);
        this.picturePath = "";
        this.rotationAngle = 0.0d;
        this.scalingMode = 0;
        this.clickable = false;
        this.longclickable = false;
        ImageView imageView = new ImageView(componentContainer.$context()) { // from class: com.google.appinventor.components.runtime.Image.1
            @Override // android.widget.ImageView, android.view.View
            public boolean verifyDrawable(Drawable drawable) {
                super.verifyDrawable(drawable);
                return true;
            }
        };
        this.view = imageView;
        imageView.setFocusable(true);
        componentContainer.$add(this);
    }

    public Image(ComponentContainer componentContainer, ImageView imageView) {
        super(componentContainer);
        this.picturePath = "";
        this.rotationAngle = 0.0d;
        this.scalingMode = 0;
        this.clickable = false;
        this.longclickable = false;
        this.view = imageView;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "A written description of what the image looks like.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void AlternateText(String str) {
        this.view.setContentDescription(str);
    }

    @SimpleEvent(description = "An event that occurs when an image is clicked.")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleProperty(description = "Specifies whether the image should be clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Clickable(boolean z) {
        this.clickable = z;
        this.view.setClickable(z);
        if (this.clickable) {
            this.view.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.Image.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Image.this.Click();
                }
            });
        } else {
            this.view.setOnClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be clickable or not.")
    public boolean Clickable() {
        return this.clickable;
    }

    @SimpleEvent(description = "Triggers when image long clicked")
    public void LongClick() {
        EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }

    @SimpleProperty(description = "Specifies whether the image should be long clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LongClickable(boolean z) {
        this.longclickable = z;
        this.view.setLongClickable(z);
        if (this.longclickable) {
            this.view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.Image.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    Image.this.LongClick();
                    return true;
                }
            });
        } else {
            this.view.setOnLongClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be long clickable or not.")
    public boolean LongClickable() {
        return this.longclickable;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Picture() {
        return this.picturePath;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Picture(@Asset String str) {
        BitmapDrawable bitmapDrawable;
        final String str2 = str == null ? "" : str;
        if (TiramisuUtil.requestImagePermissions(this.container.$form(), str, new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Image.4
            @Override // com.google.appinventor.components.runtime.PermissionResultHandler
            public void HandlePermissionResponse(String str3, boolean z) {
                if (z) {
                    Image.this.Picture(str2);
                } else {
                    Image.this.container.$form().dispatchPermissionDeniedEvent(Image.this, "Picture", str3);
                }
            }
        })) {
            return;
        }
        this.picturePath = str2;
        try {
            bitmapDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), this.picturePath);
        } catch (IOException unused) {
            _COROUTINE.a.w("Unable to load ", this.picturePath, Component.LISTVIEW_KEY_IMAGE);
            bitmapDrawable = null;
        }
        ViewUtil.setImage(this.view, bitmapDrawable);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void RotationAngle(double d) {
        if (this.rotationAngle == d) {
            return;
        }
        if (SdkLevel.getLevel() < 11) {
            this.container.$form().dispatchErrorOccurredEvent(this, "RotationAngle", ErrorMessages.ERROR_IMAGE_CANNOT_ROTATE, new Object[0]);
        } else {
            HoneycombUtil.viewSetRotate(this.view, d);
            this.rotationAngle = d;
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The angle at which the image picture appears rotated. This rotation does not appear on the designer screen, only on the device.")
    public double RotationAngle() {
        return this.rotationAngle;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be resized to match the size of the ImageView.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ScalePictureToFit(boolean z) {
        if (z) {
            this.view.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            this.view.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "This is a limited form of animation that can attach a small number of motion types to images.  The allowable motions are ScrollRightSlow, ScrollRight, ScrollRightFast, ScrollLeftSlow, ScrollLeft, ScrollLeftFast, and Stop")
    public void Animation(String str) {
        AnimationUtil.ApplyAnimation(this.view, str);
    }

    @SimpleProperty(description = "This property determines how the picture scales according to the Height or Width of the Image. Scale proportionally (0) preserves the picture aspect ratio. Scale to fit (1) matches the Image area, even if the aspect ratio changes.")
    @Deprecated
    public void Scaling(int i) {
        if (i == 0) {
            this.view.setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            if (i != 1) {
                throw new IllegalArgumentError(_COROUTINE.a.d(i, "Illegal scaling mode: "));
            }
            this.view.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        this.scalingMode = i;
    }

    @SimpleProperty
    public int Scaling() {
        return this.scalingMode;
    }
}

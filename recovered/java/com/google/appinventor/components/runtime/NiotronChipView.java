package com.google.appinventor.components.runtime;

import android.content.res.ColorStateList;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "A new component ", iconName = "images/niotronChipView.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChipView extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronChipView";
    private Chip chip;
    private String chipType;
    private String closeIcon;
    private ColorStateList closeIconColorStateList;
    private int closeIconPaddingEnd;
    private int closeIconPaddingStart;
    private String icon;
    private ColorStateList iconColorStateList;
    private int iconPaddingEnd;
    private int iconPaddingStart;
    private float iconSize;
    private float radius;
    private int rid;
    private ColorStateList strokeColorStateList;
    private float strokeSize;
    private String text;
    private ColorStateList textColorStateList;

    public NiotronChipView(ComponentContainer componentContainer) throws IllegalAccessException, IllegalArgumentException {
        super(componentContainer);
        this.rid = 0;
        this.chipType = "1";
        LayoutInflater layoutInflater = (LayoutInflater) componentContainer.$context().getSystemService("layout_inflater");
        try {
            int i = R.layout.class.getField("niotronchip1").getInt(null);
            this.rid = i;
            this.chip = (Chip) layoutInflater.inflate(i, (ViewGroup) null);
            componentContainer.$add(this);
            Log.d(LOG_TAG, "Component Created");
        } catch (Exception e) {
            throw new YailRuntimeError(e.getMessage().toString(), "Error");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the chip type", userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_CHIP_TYPE)
    public void ChipType(String str) throws IllegalAccessException, IllegalArgumentException {
        this.chipType = str;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the icon")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Icon(String str) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting Icon");
        this.icon = str;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets chip text")
    @DesignerProperty(defaultValue = "Chip", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting Text");
        this.text = str;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets chip radius")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void Radius(float f) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting Radius");
        this.radius = f;
        updateAppearence();
    }

    @SimpleFunction(description = "Sets the chip text color")
    public void TextColor(int i, int i2) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting text color");
        this.textColorStateList = new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i});
        updateAppearence();
    }

    @SimpleFunction(description = "Sets stroke color")
    public void StrokeColor(int i, int i2) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting stroke color");
        this.strokeColorStateList = new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i});
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets stroke size")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void StrokeSize(float f) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting stroke size");
        this.strokeSize = f;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set close icon")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void CloseIcon(String str) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting close icon");
        this.closeIcon = str;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ChipIconPaddingStart(int i) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip icon start padding");
        this.iconPaddingStart = i;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ChipIconPaddingEnd(int i) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip icon end padding");
        this.iconPaddingEnd = i;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ChipCloseIconPaddingStart(int i) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip close icon start padding");
        this.closeIconPaddingStart = i;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ChipCloseIconPaddingEnd(int i) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip close icon end padding");
        this.closeIconPaddingEnd = i;
        updateAppearence();
    }

    @SimpleFunction(description = "Sets chip padding")
    public void ChipIconPadding(int i, int i2) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip icon padding");
        this.iconPaddingStart = i;
        this.iconPaddingEnd = i;
        updateAppearence();
    }

    @SimpleFunction(description = "Sets chip close icon padding")
    public void ChipCloseIconPadding(int i, int i2) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip close icon padding");
        this.closeIconPaddingStart = i;
        this.closeIconPaddingEnd = i2;
        updateAppearence();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets chip icon size")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void IconSize(float f) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting chip icon size");
        this.iconSize = f;
        updateAppearence();
    }

    @SimpleFunction(description = "Sets chip icon size")
    public void IconColor(int i, int i2) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting icon color");
        this.iconColorStateList = new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i});
        updateAppearence();
    }

    @SimpleFunction(description = "Sets close icon size")
    public void CloseIconColor(int i, int i2) throws IllegalAccessException, IllegalArgumentException {
        Log.d(LOG_TAG, "Setting close icon color");
        this.closeIconColorStateList = new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i});
        updateAppearence();
    }

    @SimpleFunction(description = "Check if the particular chip is checked")
    public boolean isChecked() {
        return this.chip.isChecked();
    }

    @SimpleEvent(description = "Close icon clicked")
    public void CloseButtonClicked() {
        Log.d(LOG_TAG, "CloseButtonClicked invoked");
        EventDispatcher.dispatchEvent(this, "CloseButtonClicked", new Object[0]);
    }

    @SimpleEvent(description = "Chip clicked")
    public void Clicked() {
        Log.d(LOG_TAG, "Clicked");
        EventDispatcher.dispatchEvent(this, "Clicked", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.chip;
    }

    private void updateAppearence() throws IllegalAccessException, IllegalArgumentException {
        BitmapDrawable bitmapDrawable;
        String str = this.chipType;
        if (str == "1") {
            Log.d(LOG_TAG, "Chip Type 1");
            LayoutInflater layoutInflater = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                int i = R.layout.class.getField("niotronchip1").getInt(null);
                this.rid = i;
                this.chip = (Chip) layoutInflater.inflate(i, (ViewGroup) null);
            } catch (Exception e) {
                throw new YailRuntimeError(e.getMessage().toString(), "Error");
            }
        } else if (str == "2") {
            Log.d(LOG_TAG, "Chip Type 2");
            LayoutInflater layoutInflater2 = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                int i2 = R.layout.class.getField("niotronchip2").getInt(null);
                this.rid = i2;
                Chip chip = (Chip) layoutInflater2.inflate(i2, (ViewGroup) null);
                this.chip = chip;
                chip.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronChipView.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        NiotronChipView.this.Clicked();
                    }
                });
            } catch (Exception e2) {
                throw new YailRuntimeError(e2.getMessage().toString(), "Error");
            }
        } else if (str == "3") {
            Log.d(LOG_TAG, "Chip Type 3");
            LayoutInflater layoutInflater3 = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                int i3 = R.layout.class.getField("niotronchip4").getInt(null);
                this.rid = i3;
                this.chip = (Chip) layoutInflater3.inflate(i3, (ViewGroup) null);
            } catch (Exception e3) {
                throw new YailRuntimeError(e3.getMessage().toString(), "Error");
            }
        } else {
            if (str != Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN) {
                throw new YailRuntimeError("Unsupported chip type", _COROUTINE.a.i("Unknown Chip Type Error", this.chipType));
            }
            Log.d(LOG_TAG, "Chip Type 4");
            LayoutInflater layoutInflater4 = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                int i4 = R.layout.class.getField("niotronchip3").getInt(null);
                this.rid = i4;
                Chip chip2 = (Chip) layoutInflater4.inflate(i4, (ViewGroup) null);
                this.chip = chip2;
                chip2.setCheckable(false);
                this.chip.setClickable(false);
            } catch (Exception e4) {
                throw new YailRuntimeError(e4.getMessage().toString(), "Error");
            }
        }
        if (this.icon == "") {
            this.chip.setChipIcon(null);
        } else {
            try {
                this.chip.setChipIcon(MediaUtil.getBitmapDrawable(this.container.$form(), this.icon));
            } catch (IOException unused) {
                throw new YailRuntimeError("No such asset found", "Error");
            }
        }
        if (this.icon == "") {
            this.chip.setCloseIcon(null);
            bitmapDrawable = null;
        } else {
            try {
                bitmapDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), this.icon);
                this.chip.setCloseIcon(bitmapDrawable);
            } catch (IOException unused2) {
                throw new YailRuntimeError("No such asset found", "Error");
            }
        }
        if (bitmapDrawable != null) {
            this.chip.setOnCloseIconClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronChipView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NiotronChipView.this.CloseButtonClicked();
                }
            });
        } else {
            this.chip.setOnCloseIconClickListener(null);
        }
        if (this.chip == null) {
            Log.d(LOG_TAG, "Chip is null");
            throw new YailRuntimeError(LOG_TAG, "Chip is null");
        }
        Log.d(LOG_TAG, "Chip is okey");
        this.chip.setText(this.text);
        this.chip.setChipCornerRadius(this.radius);
        this.chip.setTextColor(this.textColorStateList);
        this.chip.setChipStrokeColor(this.strokeColorStateList);
        this.chip.setChipStrokeWidth(this.strokeSize);
        this.chip.setIconStartPadding(this.iconPaddingStart);
        this.chip.setIconEndPadding(this.iconPaddingEnd);
        this.chip.setCloseIconStartPadding(this.closeIconPaddingStart);
        this.chip.setCloseIconEndPadding(this.closeIconPaddingEnd);
        this.chip.setChipIconSize(this.iconSize);
        this.chip.setChipIconTint(this.iconColorStateList);
        this.chip.setCloseIconTint(this.closeIconColorStateList);
    }
}

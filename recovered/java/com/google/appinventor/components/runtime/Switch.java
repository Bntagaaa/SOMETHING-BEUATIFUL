package com.google.appinventor.components.runtime;

import android.R;
import android.app.Activity;
import android.content.res.ColorStateList;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.SdkLevel;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Toggle switch that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor.", iconName = "images/switch.png", version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class Switch extends ToggleBase<CompoundButton> {
    private final Activity activity;
    private final SwitchCompat switchView;
    private int thumbColorActive;
    private int thumbColorInactive;
    private int trackColorActive;
    private int trackColorInactive;

    public Switch(ComponentContainer componentContainer) {
        super(componentContainer);
        Activity activity$context = componentContainer.$context();
        this.activity = activity$context;
        if (SdkLevel.getLevel() < 14) {
            this.switchView = null;
            this.view = new android.widget.CheckBox(activity$context);
        } else {
            SwitchCompat switchCompat = new SwitchCompat(activity$context);
            this.switchView = switchCompat;
            this.view = switchCompat;
        }
        On(false);
        ThumbColorActive(-1);
        ThumbColorInactive(Component.COLOR_LTGRAY);
        TrackColorActive(Component.COLOR_GREEN);
        TrackColorInactive(Component.COLOR_GRAY);
        initToggle();
    }

    public Switch(ComponentContainer componentContainer, SwitchCompat switchCompat) {
        super(componentContainer);
        this.activity = componentContainer.$context();
        this.switchView = switchCompat;
        this.view = switchCompat;
        switchCompat.setOnFocusChangeListener(this);
        this.view.setOnCheckedChangeListener(this);
    }

    private ColorStateList createSwitchColors(int i, int i2) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{i, i2});
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int ThumbColorActive() {
        return this.thumbColorActive;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ThumbColorActive(int i) {
        this.thumbColorActive = i;
        SwitchCompat switchCompat = this.switchView;
        if (switchCompat != null) {
            DrawableCompat.setTintList(switchCompat.getThumbDrawable(), createSwitchColors(i, this.thumbColorInactive));
            this.view.invalidate();
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = true)
    public int ThumbColorInactive() {
        return this.thumbColorInactive;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_LTGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ThumbColorInactive(int i) {
        this.thumbColorInactive = i;
        SwitchCompat switchCompat = this.switchView;
        if (switchCompat != null) {
            DrawableCompat.setTintList(switchCompat.getThumbDrawable(), createSwitchColors(this.thumbColorActive, i));
            this.view.invalidate();
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = true)
    public int TrackColorActive() {
        return this.trackColorActive;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = true)
    public int TrackColorInactive() {
        return this.trackColorInactive;
    }

    @SimpleProperty(description = "Color of the toggle track when switched on", userVisible = true)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GREEN, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TrackColorActive(int i) {
        this.trackColorActive = i;
        SwitchCompat switchCompat = this.switchView;
        if (switchCompat != null) {
            DrawableCompat.setTintList(switchCompat.getTrackDrawable(), createSwitchColors(i, this.trackColorInactive));
            this.view.invalidate();
        }
    }

    @SimpleProperty(description = "Color of the toggle track when switched off", userVisible = true)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DKGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TrackColorInactive(int i) {
        this.trackColorInactive = i;
        SwitchCompat switchCompat = this.switchView;
        if (switchCompat != null) {
            DrawableCompat.setTintList(switchCompat.getTrackDrawable(), createSwitchColors(this.trackColorActive, i));
            this.view.invalidate();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean On() {
        return this.view.isChecked();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void On(boolean z) {
        this.view.setChecked(z);
        this.view.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.ToggleBase
    @SimpleEvent(description = "User change the state of the `Switch` from On to Off or back.")
    public void Changed() {
        super.Changed();
    }
}

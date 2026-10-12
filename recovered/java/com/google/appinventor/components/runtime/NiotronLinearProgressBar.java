package com.google.appinventor.components.runtime;

import android.os.Build;
import android.view.View;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.LinearProgressBarAnimations;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronLinearProgressBar.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "dynamicanimation.aar,dynamicanimation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronLinearProgressBar extends AndroidViewComponent {
    private final LinearProgressIndicator progressBar;

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public int Height() {
        return 0;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void Height(int i) {
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = false)
    public void HeightPercent(int i) {
    }

    @SimpleProperty(description = "Set indeterminate color")
    @Deprecated
    public void IndeterminateColor(int i) {
    }

    public NiotronLinearProgressBar(ComponentContainer componentContainer) {
        super(componentContainer);
        this.progressBar = new LinearProgressIndicator(componentContainer.$context());
        componentContainer.$add(this);
        TrackThickness(4);
    }

    @SimpleFunction(description = "Set continuous colors")
    public void SetContinuousColors(YailList yailList, @Options(LinearProgressBarAnimations.class) int i) {
        int size = yailList.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < yailList.size(); i2++) {
            iArr[i2] = Integer.valueOf(yailList.getObject(i2).toString()).intValue();
        }
        if (size < 3) {
            throw new YailRuntimeError("Minimum 3 Colors Required for Continuous Color Animation", "LinearProgressBar");
        }
        this.progressBar.setVisibility(4);
        this.progressBar.setIndeterminate(false);
        this.progressBar.setIndicatorColor(iArr);
        this.progressBar.setIndeterminateAnimationType(i);
        this.progressBar.setIndeterminate(true);
        this.progressBar.setVisibility(0);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set progress type indeterminate")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Indeterminate(boolean z) {
        this.progressBar.setVisibility(4);
        this.progressBar.setIndeterminate(z);
        this.progressBar.setVisibility(0);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set progress color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ProgressColor(int i) {
        this.progressBar.setIndicatorColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.progressBar.setTrackColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Track corner radius")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void TrackCornerRadius(int i) {
        this.progressBar.setTrackCornerRadius(px(i));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Track thickness")
    @DesignerProperty(defaultValue = Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void TrackThickness(int i) {
        this.progressBar.setTrackThickness(px(i));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set progress")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void Progress(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.progressBar.setProgress(i, true);
        } else {
            this.progressBar.setProgress(i);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set max range")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void Max(int i) {
        this.progressBar.setMax(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.progressBar;
    }
}

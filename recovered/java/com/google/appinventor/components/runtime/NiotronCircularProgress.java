package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A Customizable Circular Progress", iconName = "images/circularprogress.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "dynamicanimation.aar,dynamicanimation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronCircularProgress extends AndroidViewComponent {
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    private CircularProgressIndicator progressView;

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set Center Radius")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    @Deprecated
    public void CenterRadius(int i) {
    }

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

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set if cap should be round or not")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void RoundCap(boolean z) {
    }

    public NiotronCircularProgress(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        CircularProgressIndicator circularProgressIndicator = new CircularProgressIndicator(this.context);
        this.progressView = circularProgressIndicator;
        circularProgressIndicator.setIndeterminate(true);
        componentContainer.$add(this);
        StrokeWidth(4);
        IndicatorBorderRadius(5);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.progressView;
    }

    @SimpleFunction(description = "Set multiple color for circular progress")
    public void SetColorList(YailList yailList) {
        int size = yailList.size();
        int[] iArr = new int[size];
        for (int i = 0; i < yailList.size(); i++) {
            iArr[i] = Integer.valueOf(yailList.getObject(i).toString()).intValue();
        }
        if (size < 3) {
            throw new YailRuntimeError("Minimum 3 Colors Required for Continuous Color Animation", "CircularProgress");
        }
        this.progressView.setVisibility(4);
        this.progressView.setIndeterminate(false);
        this.progressView.setIndicatorColor(iArr);
        this.progressView.setIndeterminate(true);
        this.progressView.setVisibility(0);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set Circular Progress Color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void Color(int i) {
        this.progressView.setIndicatorColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set the width of the stroke")
    @DesignerProperty(defaultValue = Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void StrokeWidth(int i) {
        this.progressView.setTrackThickness(px(i));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set the border radius of Indicator")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void IndicatorBorderRadius(int i) {
        this.progressView.setTrackCornerRadius(px(i));
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        if (i > 0) {
            try {
                this.progressView.setIndicatorSize(px(i));
            } catch (Exception unused) {
                throw new YailRuntimeError("Width Cannot Be Less Than The Twice Of Track Size", "Circular Progress");
            }
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void WidthPercent(int i) {
        if (i > 0) {
            try {
                this.progressView.setIndicatorSize(i);
            } catch (Exception unused) {
                throw new YailRuntimeError("Width Cannot Be Less Than The Twice Of Track Size", "Circular Progress");
            }
        }
        super.WidthPercent(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty
    public void Visible(boolean z) {
        if (z) {
            this.progressView.setVisibility(0);
        } else {
            this.progressView.setVisibility(8);
        }
    }
}

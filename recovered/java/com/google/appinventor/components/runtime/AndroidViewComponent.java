package com.google.appinventor.components.runtime;

import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.SimplePropertyCopier;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.util.ErrorMessages;

@SimpleObject
/* loaded from: classes.dex */
public abstract class AndroidViewComponent extends VisibleComponent {
    protected final ComponentContainer container;
    private int percentWidthHolder = -3;
    private int percentHeightHolder = -3;
    private int lastSetWidth = -3;
    private int lastSetHeight = -3;
    private int column = -1;
    private int row = -1;
    private int paddingLeft = 0;
    private int paddingTop = 0;
    private int paddingRight = 0;
    private int paddingBottom = 0;
    private int paddingLeft2 = 0;
    private int paddingTop2 = 0;
    private int paddingRight2 = 0;
    private int paddingBottom2 = 0;

    public abstract View getView();

    public AndroidViewComponent(ComponentContainer componentContainer) {
        this.container = componentContainer;
    }

    public int dp(int i) {
        return (int) (i / Resources.getSystem().getDisplayMetrics().density);
    }

    public int px(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the %type% should be visible on the screen. Value is true if the %type% is showing and false if hidden.")
    public boolean Visible() {
        return getView().getVisibility() == 0;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_VISIBILITY)
    public void Visible(boolean z) {
        getView().setVisibility(z ? 0 : 8);
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public int Width() {
        return (int) (getView().getWidth() / this.container.$form().deviceDensity());
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Specifies the horizontal width of the %type%, measured in pixels.")
    public void Width(int i) {
        this.container.setChildWidth(this, i);
        this.lastSetWidth = i;
        if (i <= -1000) {
            this.container.$form().registerPercentLength(this, i, Form.PercentStorageRecord.Dim.WIDTH);
        } else {
            this.container.$form().unregisterPercentLength(this, Form.PercentStorageRecord.Dim.WIDTH);
        }
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Specifies the horizontal width of the %type% as a percentage of the width of the Screen.")
    public void WidthPercent(int i) {
        if (i < 0 || i > 100) {
            this.container.$form().dispatchErrorOccurredEvent(this, "WidthPercent", ErrorMessages.ERROR_BAD_PERCENT, Integer.valueOf(i));
        } else {
            Width((-i) - 1000);
        }
    }

    public void setLastWidth(int i) {
        this.percentWidthHolder = i;
    }

    public int getSetWidth() {
        int i = this.percentWidthHolder;
        return i == -3 ? Width() : i;
    }

    public void setLastHeight(int i) {
        this.percentHeightHolder = i;
    }

    public int getSetHeight() {
        int i = this.percentHeightHolder;
        return i == -3 ? Height() : i;
    }

    @SimplePropertyCopier
    public void CopyWidth(AndroidViewComponent androidViewComponent) {
        Width(androidViewComponent.lastSetWidth);
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public int Height() {
        return (int) (getView().getHeight() / this.container.$form().deviceDensity());
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Specifies the vertical height of the %type%, measured in pixels.")
    public void Height(int i) {
        this.container.setChildHeight(this, i);
        this.lastSetHeight = i;
        if (i <= -1000) {
            this.container.$form().registerPercentLength(this, i, Form.PercentStorageRecord.Dim.HEIGHT);
        } else {
            this.container.$form().unregisterPercentLength(this, Form.PercentStorageRecord.Dim.HEIGHT);
        }
    }

    @Override // com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Specifies the vertical height of the %type% as a percentage of the height of the Screen.")
    public void HeightPercent(int i) {
        if (i < 0 || i > 100) {
            this.container.$form().dispatchErrorOccurredEvent(this, "HeightPercent", ErrorMessages.ERROR_BAD_PERCENT, Integer.valueOf(i));
        } else {
            Height((-i) - 1000);
        }
    }

    @SimplePropertyCopier
    public void CopyHeight(AndroidViewComponent androidViewComponent) {
        Height(androidViewComponent.lastSetHeight);
    }

    @SimpleProperty(userVisible = false)
    public int Column() {
        return this.column;
    }

    @SimpleProperty(userVisible = false)
    public void Column(int i) {
        this.column = i;
    }

    @SimpleProperty(userVisible = false)
    public int Row() {
        return this.row;
    }

    @SimpleProperty(userVisible = false)
    public void Row(int i) {
        this.row = i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void MarginTop(int i) {
        this.paddingTop = i;
        refreshMargin();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void MarginRight(int i) {
        this.paddingRight = i;
        refreshMargin();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void MarginLeft(int i) {
        this.paddingLeft = i;
        refreshMargin();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void MarginBottom(int i) {
        this.paddingBottom = i;
        refreshMargin();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingTop(int i) {
        this.paddingTop2 = i;
        refreshPadding();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingRight(int i) {
        this.paddingRight2 = i;
        refreshPadding();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingLeft(int i) {
        this.paddingLeft2 = i;
        refreshPadding();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    @Deprecated
    public void PaddingBottom(int i) {
        this.paddingBottom2 = i;
        refreshPadding();
    }

    @SimpleFunction(description = "Sets margin in the component")
    public void SetMargin(int i, int i2, int i3, int i4) {
        this.paddingTop = i;
        this.paddingBottom = i2;
        this.paddingRight = i3;
        this.paddingLeft = i4;
        refreshMargin();
    }

    @SimpleFunction(description = "Sets padding in the component")
    public void SetPadding(int i, int i2, int i3, int i4) {
        this.paddingTop2 = i;
        this.paddingBottom2 = i2;
        this.paddingRight2 = i3;
        this.paddingLeft2 = i4;
        refreshPadding();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(alwaysSend = true, defaultValue = "0,0,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihMargin(String str) {
        String[] strArrSplit = str.split(",");
        this.paddingLeft = Integer.parseInt(strArrSplit[0]);
        this.paddingRight = Integer.parseInt(strArrSplit[1]);
        this.paddingTop = Integer.parseInt(strArrSplit[2]);
        this.paddingBottom = Integer.parseInt(strArrSplit[3]);
        refreshMargin();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(alwaysSend = true, defaultValue = "0,0,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
        String[] strArrSplit = str.split(",");
        this.paddingLeft2 = Integer.parseInt(strArrSplit[0]);
        this.paddingRight2 = Integer.parseInt(strArrSplit[1]);
        this.paddingTop2 = Integer.parseInt(strArrSplit[2]);
        this.paddingBottom2 = Integer.parseInt(strArrSplit[3]);
        refreshPadding();
    }

    private void refreshMargin() {
        View view = getView();
        if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(px(this.paddingLeft), px(this.paddingTop), px(this.paddingRight), px(this.paddingBottom));
            view.setLayoutParams(layoutParams);
        } else {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams2.setMargins(px(this.paddingLeft), px(this.paddingTop), px(this.paddingRight), px(this.paddingBottom));
            view.setLayoutParams(layoutParams2);
        }
    }

    private void refreshPadding() {
        getView().setPadding(px(this.paddingLeft2), px(this.paddingTop2), px(this.paddingRight2), px(this.paddingBottom2));
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this.container.$form();
    }
}

package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import com.google.android.material.snackbar.Snackbar;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronSnakbar.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMaterialSnackbar extends AndroidNonvisibleComponent {
    private int actiontextcolor;
    private Activity activity;
    private int animation;
    private int backgroundColor;
    private int duration;
    private View elevationView;
    private View parentView;
    private Snackbar snackbar;
    private int textcolor;

    public NiotronMaterialSnackbar(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.backgroundColor = -1;
        this.duration = 0;
        this.animation = 1;
        this.elevationView = null;
        this.activity = componentContainer.$context();
        this.parentView = componentContainer.$form().findViewById(componentContainer.$form().FRAME_LAYOUT_ID_CONSTANT);
        BackgroundColor(-16777216);
        TextColor(-1);
        ActionTextColor(-1);
    }

    @SimpleFunction(description = "Shows the snackbar")
    public void Show(String str) {
        Snackbar snackbarMake = Snackbar.make(this.parentView, str, this.duration);
        this.snackbar = snackbarMake;
        snackbarMake.setBackgroundTint(this.backgroundColor);
        this.snackbar.setTextColor(this.textcolor);
        this.snackbar.setAnimationMode(this.animation);
        View view = this.elevationView;
        if (view != null) {
            this.snackbar.setAnchorView(view);
        }
        this.snackbar.show();
    }

    @SimpleFunction(description = "Shows snackbar with icon")
    public void ShowWithAction(String str, final String str2) {
        Snackbar snackbarMake = Snackbar.make(this.parentView, str, this.duration);
        this.snackbar = snackbarMake;
        snackbarMake.setAction(str2, new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialSnackbar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NiotronMaterialSnackbar.this.ActionClick(str2);
            }
        });
        this.snackbar.setBackgroundTint(this.backgroundColor);
        this.snackbar.setTextColor(this.textcolor);
        this.snackbar.setAnimationMode(this.animation);
        this.snackbar.setActionTextColor(this.actiontextcolor);
        this.snackbar.setTextColor(this.textcolor);
        View view = this.elevationView;
        if (view != null) {
            this.snackbar.setAnchorView(view);
        }
        this.snackbar.show();
    }

    @SimpleFunction(description = "Returns if the snackbar is showing")
    public boolean IsShowing() {
        Snackbar snackbar = this.snackbar;
        if (snackbar != null) {
            return snackbar.isShown();
        }
        return false;
    }

    @SimpleFunction(description = "Dismisses the snackbar")
    public void Dismiss() {
        Snackbar snackbar = this.snackbar;
        if (snackbar != null) {
            snackbar.dismiss();
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set action text color of the snackbar")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ActionTextColor(int i) {
        this.actiontextcolor = i;
    }

    @SimpleProperty(description = "Returns the action text color")
    public int ActionTextColor() {
        return this.actiontextcolor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set action text color of the snackbar")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.textcolor = i;
    }

    @SimpleProperty(description = "Returns the text color")
    public int TextColor() {
        return this.textcolor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set background color of the snackbar")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
    }

    @SimpleProperty(description = "Returns the background color")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set duration of the snackbar ")
    @DesignerProperty(defaultValue = "0", editorType = "Integer")
    public void Duration(int i) {
        this.duration = i;
    }

    @SimpleProperty(description = "Returns the duration")
    public int Duration() {
        return this.duration;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set animation type 1 or 2")
    @DesignerProperty(defaultValue = "1", editorType = "Integer")
    public void AnimationMode(int i) {
        this.animation = i;
    }

    @SimpleProperty(description = "Returns the animation mode")
    public int AnimationMode() {
        return this.animation;
    }

    @SimpleProperty(description = "Set component so snackbar will be shown above it")
    public void AnchorView(AndroidViewComponent androidViewComponent) {
        this.elevationView = androidViewComponent.getView();
    }

    @SimpleEvent(description = "Action button is clicked")
    public void ActionClick(String str) {
        EventDispatcher.dispatchEvent(this, "ActionClick", str);
    }
}

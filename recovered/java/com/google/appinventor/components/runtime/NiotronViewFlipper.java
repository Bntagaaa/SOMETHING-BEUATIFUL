package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ViewFlipper;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.ScreenAnimation;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "View flipper component lets you add flipping between views", iconName = "images/viewpager.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronViewFlipper extends AndroidViewComponent {
    private String LOG_TAG;
    private Activity activity;
    private Context context;
    private int display;
    private ViewFlipper flipper;
    private int interval;

    public NiotronViewFlipper(ComponentContainer componentContainer) {
        super(componentContainer);
        this.LOG_TAG = "View Flipper";
        this.flipper = new ViewFlipper(componentContainer.$context());
        componentContainer.$add(this);
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        Width(-2);
        Height(-2);
        Log.d(this.LOG_TAG, "View flipper initalized");
    }

    @SimpleFunction(description = "Adds view to ViewFlipper. Accepts Visible components or the list of visible components")
    public void AddView(Object obj) {
        if (obj instanceof AndroidViewComponent) {
            Log.d(this.LOG_TAG, "AndroidViewComponent");
            View view = ((AndroidViewComponent) obj).getView();
            if (view.getVisibility() == 8) {
                Log.d(this.LOG_TAG, "Was not visible");
                view.setVisibility(0);
                ((ViewGroup) view.getParent()).removeView(view);
                this.flipper.addView(view);
            } else {
                Log.d(this.LOG_TAG, "is visible");
                ((ViewGroup) view.getParent()).removeView(view);
                this.flipper.addView(view);
            }
        } else if (obj instanceof YailList) {
            YailList yailList = (YailList) obj;
            for (int i = 0; i < yailList.size(); i++) {
                if (yailList.getObject(i) instanceof AndroidViewComponent) {
                    View view2 = ((AndroidViewComponent) yailList.getObject(i)).getView();
                    if (view2.getVisibility() == 8) {
                        view2.setVisibility(0);
                        ((ViewGroup) view2.getParent()).removeView(view2);
                        this.flipper.addView(view2);
                    } else {
                        ((ViewGroup) view2.getParent()).removeView(view2);
                        this.flipper.addView(view2);
                    }
                } else {
                    throw new YailRuntimeError("Every iten of the ViewFlipper should be either component or layout", "Invalid Input");
                }
            }
        } else {
            throw new YailRuntimeError("The \"input\" parameter should be either component/layout or list of component/layout", "Invalid Input");
        }
        Log.d(this.LOG_TAG, "Height: " + this.flipper.getHeight());
        Log.d(this.LOG_TAG, "Width: " + this.flipper.getWidth());
    }

    @SimpleFunction(description = "Removes a page from viewpager")
    public void RemoveView(Object obj) throws NumberFormatException {
        if (obj instanceof YailList) {
            YailList yailList = (YailList) obj;
            for (int i = 0; i < yailList.size(); i++) {
                try {
                    this.flipper.removeView(this.flipper.getChildAt(Integer.parseInt(yailList.getString(i))));
                } catch (Exception unused) {
                    throw new YailRuntimeError("List for removing view by index must be interger type", "Invalid Input");
                }
            }
            return;
        }
        try {
            this.flipper.removeView(this.flipper.getChildAt(Integer.parseInt((String) obj)));
        } catch (Exception unused2) {
            throw new YailRuntimeError("Arguement for removing view should be either a index or list of index", "Invalid Input");
        }
    }

    @SimpleFunction(description = "Starts the flipping action")
    public void StartFlipping() {
        this.flipper.startFlipping();
    }

    @SimpleFunction(description = "Starts the flipping action")
    public void StopFlipping() {
        this.flipper.stopFlipping();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "default", editorType = PropertyTypeConstants.PROPERTY_TYPE_SCREEN_ANIMATION)
    public void Animation(@Options(ScreenAnimation.class) String str) {
        int identifier;
        int identifier2;
        if (str.equalsIgnoreCase("fade")) {
            identifier = this.activity.getResources().getIdentifier("fadeout", "anim", this.activity.getPackageName());
            identifier2 = this.activity.getResources().getIdentifier("hold", "anim", this.activity.getPackageName());
        } else if (str.equalsIgnoreCase("zoom")) {
            identifier = this.activity.getResources().getIdentifier("zoom_exit_reverse", "anim", this.activity.getPackageName());
            identifier2 = this.activity.getResources().getIdentifier("zoom_enter_reverse", "anim", this.activity.getPackageName());
        } else if (str.equalsIgnoreCase("slidehorizontal")) {
            identifier = this.activity.getResources().getIdentifier("slide_exit_reverse", "anim", this.activity.getPackageName());
            identifier2 = this.activity.getResources().getIdentifier("slide_enter_reverse", "anim", this.activity.getPackageName());
        } else if (str.equalsIgnoreCase("slidevertical")) {
            identifier = this.activity.getResources().getIdentifier("slide_v_exit_reverse", "anim", this.activity.getPackageName());
            identifier2 = this.activity.getResources().getIdentifier("slide_v_enter_reverse", "anim", this.activity.getPackageName());
        } else {
            if (!str.equalsIgnoreCase("none")) {
                return;
            }
            identifier = 0;
            identifier2 = 0;
        }
        this.flipper.setInAnimation(this.context, identifier2);
        this.flipper.setOutAnimation(this.context, identifier);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the interval in millisends of flipping between views")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void DisplayChild(int i) {
        this.display = i;
        this.flipper.setDisplayedChild(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the interval in millisends of flipping between views")
    @DesignerProperty(defaultValue = "500", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Interval(int i) {
        this.interval = i;
        this.flipper.setFlipInterval(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets if the view flipper should start flipping automatically or not")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AutoStart(boolean z) {
        this.flipper.setAutoStart(z);
    }

    @SimpleProperty(description = "Returns the interval of flipping view in view flipper")
    public int Interval() {
        return this.interval;
    }

    @SimpleProperty(description = "Returns if the view flipper autostarted of not")
    public boolean AutoStart() {
        return this.flipper.isAutoStart();
    }

    @SimpleProperty(description = "Returns if the view flipper autostarted of not")
    public boolean isFlipping() {
        return this.flipper.isFlipping();
    }

    @SimpleProperty(description = "Set the interval in millisends of flipping between views")
    public int DisplayChild() {
        return this.display;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.flipper;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Height(i);
    }
}

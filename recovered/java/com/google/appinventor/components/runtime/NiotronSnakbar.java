package com.google.appinventor.components.runtime;

import android.view.View;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A new component ", iconName = "images/niotronSnakbar.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronSnakbar extends AndroidNonvisibleComponent {
    private int PARENT_LAYOUT_ID;
    private int actionColor;
    private String actionText;
    private int backgroundColor;
    private int duration;
    private boolean isShowing;
    private View parentView;
    private Snackbar snackbar;
    private String text;
    private int textColor;

    public NiotronSnakbar(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.actionText = "";
        this.text = "";
        this.actionColor = -1;
        this.textColor = -1;
        this.duration = 1500;
        this.isShowing = false;
        this.backgroundColor = Component.COLOR_DKGRAY;
        this.parentView = componentContainer.$form().findViewById(componentContainer.$form().FRAME_LAYOUT_ID_CONSTANT);
    }

    @SimpleProperty
    public void ActionText(String str) {
        this.actionText = str;
    }

    @SimpleProperty
    public void Text(String str) {
        this.text = str;
    }

    @SimpleProperty
    public void ActionColor(int i) {
        this.actionColor = i;
    }

    @SimpleProperty(description = "To set duration of the snakbar use time in milliseconds, To use predifined time constants follow the below values\n\n \"LENGTH_SHORT\" = 0\n \"LENGTH_LONG\" = -1\n \"LENGTH_INFINITE\" = -2")
    public void Duration(int i) {
        this.duration = i;
    }

    @SimpleFunction
    public void Show() {
        updateSnakbar();
        this.snackbar.show();
    }

    @SimpleFunction
    public void Dismiss() {
        Snackbar snackbar = this.snackbar;
        if (snackbar == null || !this.isShowing) {
            return;
        }
        snackbar.dismiss();
    }

    @SimpleEvent
    public void Shown() {
        EventDispatcher.dispatchEvent(this, "Shown", new Object[0]);
    }

    @SimpleEvent
    public void Dismissed() {
        EventDispatcher.dispatchEvent(this, "Dismissed", new Object[0]);
    }

    @SimpleEvent
    public void ActionClick() {
        EventDispatcher.dispatchEvent(this, "ActionClick", new Object[0]);
    }

    private void updateSnakbar() {
        this.snackbar = Snackbar.make(this.parentView, this.text, this.duration).setActionTextColor(this.actionColor).setAction(this.actionText, new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronSnakbar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NiotronSnakbar.this.ActionClick();
            }
        }).addCallback(new BaseTransientBottomBar.BaseCallback<Snackbar>() { // from class: com.google.appinventor.components.runtime.NiotronSnakbar.1
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
            public void onDismissed(Snackbar snackbar, int i) {
                super.onDismissed((AnonymousClass1) snackbar, i);
                NiotronSnakbar.this.isShowing = false;
                NiotronSnakbar.this.Dismissed();
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
            public void onShown(Snackbar snackbar) {
                super.onShown((AnonymousClass1) snackbar);
                NiotronSnakbar.this.isShowing = true;
                NiotronSnakbar.this.Shown();
            }
        });
    }
}

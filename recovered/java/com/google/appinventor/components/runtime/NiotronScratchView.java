package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.anupkumarpanwar.scratchview.ScratchView;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.util.ArrayList;
import java.util.List;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A new component ", iconName = "images/niotronScratchView.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "scratchview.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronScratchView extends AndroidViewComponent implements Component, ComponentContainer {
    private Activity activity;
    private List<Component> allChildren;
    private final Handler androidUIHandler;
    private ComponentContainer container;
    private android.widget.LinearLayout containerLayout;
    private Context context;
    private FrameLayout mainOverlay;
    private ScratchView scratchView;

    public NiotronScratchView(ComponentContainer componentContainer) {
        super(componentContainer);
        this.allChildren = new ArrayList();
        this.androidUIHandler = new Handler();
        this.mainOverlay = new FrameLayout(componentContainer.$context());
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(componentContainer.$context());
        this.containerLayout = linearLayout;
        this.mainOverlay.addView(linearLayout, -1, -1);
        componentContainer.$add(this);
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.container = componentContainer;
    }

    @SimpleFunction
    public void Create(@Asset String str, String str2) {
        try {
            ScratchView scratchView = new ScratchView(this.context, MediaUtil.getBitmapDrawable(this.container.$form(), str), this.mainOverlay.getWidth(), this.mainOverlay.getHeight(), str2);
            this.scratchView = scratchView;
            scratchView.setRevealListener(new ScratchView.IRevealListener() { // from class: com.google.appinventor.components.runtime.NiotronScratchView.1
                public void onRevealed(ScratchView scratchView2) {
                    NiotronScratchView.this.Revealed();
                }

                public void onRevealPercentChangedListener(ScratchView scratchView2, float f) {
                    NiotronScratchView.this.RevealPercentChange(f);
                }
            });
            this.mainOverlay.addView((View) this.scratchView, (ViewGroup.LayoutParams) new LinearLayout.LayoutParams(-1, -1));
        } catch (Exception unused) {
        }
    }

    @SimpleFunction
    public void Finish() {
        ((ViewGroup) this.scratchView.getParent()).removeView(this.scratchView);
    }

    @SimpleEvent
    public void Revealed() {
        EventDispatcher.dispatchEvent(this, "Revealed", new Object[0]);
    }

    @SimpleEvent
    public void RevealPercentChange(float f) {
        EventDispatcher.dispatchEvent(this, "RevealPercentChange", Float.valueOf(f));
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.mainOverlay;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Activity $context() {
        return this.container.$context();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Form $form() {
        return this.container.$form();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void $add(AndroidViewComponent androidViewComponent) {
        this.containerLayout.addView(androidViewComponent.getView(), -1, -1);
        this.allChildren.add(androidViewComponent);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(AndroidViewComponent androidViewComponent, int i) {
        setChildWidth(androidViewComponent, i, 0);
    }

    public void setChildWidth(final AndroidViewComponent androidViewComponent, final int i, final int i2) {
        int iWidth = this.container.$form().Width();
        if (iWidth == 0 && i2 < 2) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronScratchView.2
                @Override // java.lang.Runnable
                public void run() {
                    NiotronScratchView.this.setChildWidth(androidViewComponent, i, i2 + 1);
                }
            }, 100L);
        }
        if (i <= -1000) {
            i = (iWidth * (-(i + 1000))) / 100;
        }
        androidViewComponent.setLastWidth(i);
        View view = androidViewComponent.getView();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.width = -1;
            } else if (i == -1) {
                layoutParams2.width = -2;
            } else {
                layoutParams2.width = calculatePixels(view, i);
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have linear layout parameters");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(final AndroidViewComponent androidViewComponent, final int i) {
        int iHeight = this.container.$form().Height();
        if (iHeight == 0) {
            this.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronScratchView.3
                @Override // java.lang.Runnable
                public void run() {
                    NiotronScratchView.this.setChildHeight(androidViewComponent, i);
                }
            }, 100L);
        }
        if (i <= -1000) {
            i = (iHeight * (-(i + 1000))) / 100;
        }
        androidViewComponent.setLastHeight(i);
        View view = androidViewComponent.getView();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.height = -1;
                layoutParams2.weight = 0.0f;
            } else if (i == -1) {
                layoutParams2.height = -2;
                layoutParams2.weight = 0.0f;
            } else {
                layoutParams2.height = calculatePixels(view, i);
                layoutParams2.weight = 0.0f;
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have linear layout parameters");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public List<? extends Component> getChildren() {
        return this.allChildren;
    }

    private int calculatePixels(View view, int i) {
        return (int) (view.getContext().getResources().getDisplayMetrics().density * i);
    }
}

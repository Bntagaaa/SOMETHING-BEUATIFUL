package com.google.appinventor.components.runtime;

import android.view.animation.DecelerateInterpolator;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.takusemba.spotlight.CustomTarget;
import com.takusemba.spotlight.OnSpotlightEndedListener;
import com.takusemba.spotlight.OnSpotlightStartedListener;
import com.takusemba.spotlight.SimpleTarget;
import com.takusemba.spotlight.Spotlight;
import com.takusemba.spotlight.Target;
import java.util.ArrayList;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Spotlight component helps you to show spotlight in components", iconName = "images/niotronSpotlight.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "spotlight.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronSpotlight extends AndroidNonvisibleComponent {
    private ComponentContainer container;
    private int maskColor;
    private ArrayList<Target> targets;

    public NiotronSpotlight(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.container = componentContainer;
        this.targets = new ArrayList<>();
    }

    @SimpleFunction(description = "Add new custom target")
    public void AddCustomTarget(float f, float f2, float f3, AndroidViewComponent androidViewComponent) {
        this.targets.add(new CustomTarget.Builder(this.container.$context()).setPoint(f, f2).setRadius(f3).setView(androidViewComponent.getView()).build());
    }

    @SimpleFunction(description = "Add new custom target")
    public void AddSimpleTarget(float f, float f2, float f3, String str, String str2) {
        this.targets.add(new SimpleTarget.Builder(this.container.$context()).setPoint(f, f2).setRadius(f3).setTitle(str).setDescription(str2).build());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void MaskColor(int i) {
        this.maskColor = i;
    }

    @SimpleFunction(description = "Starts the spotlight")
    public void Show() {
        init();
    }

    @SimpleEvent(description = "Animation started")
    public void Start() {
        EventDispatcher.dispatchEvent(this, "Start", new Object[0]);
    }

    @SimpleEvent(description = "Animation started")
    public void End() {
        EventDispatcher.dispatchEvent(this, "End", new Object[0]);
    }

    private void init() {
        Spotlight.with(this.container.$context()).setDuration(1000L).setAnimation(new DecelerateInterpolator(2.0f)).setTargets((Target[]) this.targets.toArray(new Target[0])).setOnSpotlightStartedListener(new OnSpotlightStartedListener() { // from class: com.google.appinventor.components.runtime.NiotronSpotlight.2
            public void onStarted() {
                NiotronSpotlight.this.Start();
            }
        }).setOnSpotlightEndedListener(new OnSpotlightEndedListener() { // from class: com.google.appinventor.components.runtime.NiotronSpotlight.1
            public void onEnded() {
                NiotronSpotlight.this.End();
            }
        });
        Spotlight.start();
    }
}

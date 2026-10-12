package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.YailList;
import com.ramotion.circlemenu.CircleMenuView;
import java.util.ArrayList;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A simple, elegant UI menu with a circular layout", iconName = "images/niotronCircularMenu.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "circlemenu.aar,circlemenu.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronCircularMenu extends AndroidNonvisibleComponent {
    private Context context;
    CircleMenuView menuView;

    public NiotronCircularMenu(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Creates menu")
    public void CreateMenu(HVArrangement hVArrangement, YailList yailList, YailList yailList2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (String str : yailList.toStringArray()) {
                arrayList.add(MediaUtil.getBitmapDrawable(this.form, str));
            }
            for (Object obj : yailList2.toArray()) {
                arrayList2.add(Integer.valueOf(Integer.parseInt(String.valueOf(obj))));
            }
            CircleMenuView circleMenuView = new CircleMenuView(this.context, arrayList, arrayList2);
            this.menuView = circleMenuView;
            circleMenuView.setEventListener(new CircleMenuView.EventListener() { // from class: com.google.appinventor.components.runtime.NiotronCircularMenu.1
                public void onMenuOpenAnimationStart(@NonNull CircleMenuView circleMenuView2) {
                    NiotronCircularMenu.this.MenuOpenAnimationStart();
                }

                public void onMenuOpenAnimationEnd(@NonNull CircleMenuView circleMenuView2) {
                    NiotronCircularMenu.this.MenuOpenAnimationEnd();
                }

                public void onMenuCloseAnimationStart(@NonNull CircleMenuView circleMenuView2) {
                    NiotronCircularMenu.this.MenuCloseAnimationStart();
                }

                public void onMenuCloseAnimationEnd(@NonNull CircleMenuView circleMenuView2) {
                    NiotronCircularMenu.this.MenuCloseAnimationEnd();
                }

                public void onButtonClickAnimationStart(@NonNull CircleMenuView circleMenuView2, int i) {
                    NiotronCircularMenu.this.ButtonClickAnimationStart(i);
                }

                public void onButtonClickAnimationEnd(@NonNull CircleMenuView circleMenuView2, int i) {
                    NiotronCircularMenu.this.ButtonClickAnimationEnd(i);
                }
            });
            ((ViewGroup) hVArrangement.getView()).addView(this.menuView);
        } catch (Exception e) {
            ErrorOccurred(e.toString());
        }
    }

    @SimpleEvent(description = "Error occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "Button clicked animation ended")
    public void ButtonClickAnimationEnd(int i) {
        EventDispatcher.dispatchEvent(this, "ButtonClickAnimationEnd", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Button clicked animation starts")
    public void ButtonClickAnimationStart(int i) {
        EventDispatcher.dispatchEvent(this, "ButtonClickAnimationStart", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Menu closed animation ended")
    public void MenuCloseAnimationEnd() {
        EventDispatcher.dispatchEvent(this, "MenuCloseAnimationEnd", new Object[0]);
    }

    @SimpleEvent(description = "Menu closed animation started")
    public void MenuCloseAnimationStart() {
        EventDispatcher.dispatchEvent(this, "MenuCloseAnimationStart", new Object[0]);
    }

    @SimpleEvent(description = "Menu opened animation ended")
    public void MenuOpenAnimationEnd() {
        EventDispatcher.dispatchEvent(this, "MenuOpenAnimationEnd", new Object[0]);
    }

    @SimpleEvent(description = "Menu opened animation started")
    public void MenuOpenAnimationStart() {
        EventDispatcher.dispatchEvent(this, "MenuOpenAnimationStart", new Object[0]);
    }

    @SimpleFunction(description = "Opened")
    public void Open(boolean z) {
        this.menuView.open(z);
    }

    @SimpleFunction(description = "Closed")
    public void Close(boolean z) {
        this.menuView.close(z);
    }
}

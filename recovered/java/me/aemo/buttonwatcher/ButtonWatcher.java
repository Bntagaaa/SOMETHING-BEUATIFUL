package me.aemo.buttonwatcher;

import android.content.Context;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import me.aemo.buttonwatcher.addons.HomeWatcher;
import me.aemo.buttonwatcher.addons.OnHomePressedListener;

/* loaded from: classes2.dex */
public class ButtonWatcher extends AndroidNonvisibleComponent implements OnHomePressedListener {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentContainer f6725a;

    /* renamed from: b, reason: collision with root package name */
    public HomeWatcher f6726b;

    public ButtonWatcher(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.f6725a = componentContainer;
    }

    @SimpleFunction(description = "Initializes the ButtonWatcher. This should be called before Start.")
    public void Initialize() {
        if (this.f6726b == null) {
            HomeWatcher homeWatcher = new HomeWatcher((Context) this.f6725a);
            this.f6726b = homeWatcher;
            homeWatcher.setOnHomePressedListener(this);
            return;
        }
        OnErrorOccurred("ButtonWatcher is already initialized", "Initialize");
    }

    @SimpleFunction(description = "Starts watching for button presses. Call this to start monitoring.")
    public void Start() {
        HomeWatcher homeWatcher = this.f6726b;
        if (homeWatcher != null) {
            homeWatcher.startWatching();
        } else {
            OnErrorOccurred("ButtonWatcher is not initialized", "Start");
        }
    }

    @SimpleFunction(description = "Stops watching for button presses. Call this to stop monitoring.")
    public void Stop() {
        HomeWatcher homeWatcher = this.f6726b;
        if (homeWatcher != null) {
            homeWatcher.stopWatching();
        } else {
            OnErrorOccurred("ButtonWatcher is not initialized", "Stop");
        }
    }

    @Override // me.aemo.buttonwatcher.addons.OnHomePressedListener
    public void onHomePressed() {
        OnHomePressed();
    }

    @SimpleEvent(description = "Event triggered when the home button is pressed.")
    public void OnHomePressed() {
        EventDispatcher.dispatchEvent(this, "OnHomePressed", new Object[0]);
    }

    @Override // me.aemo.buttonwatcher.addons.OnHomePressedListener
    public void onRecentAppPressed() {
        OnRecentAppPressed();
    }

    @SimpleEvent(description = "Event triggered when the recent apps button is pressed.")
    public void OnRecentAppPressed() {
        EventDispatcher.dispatchEvent(this, "OnRecentAppPressed", new Object[0]);
    }

    @Override // me.aemo.buttonwatcher.addons.OnHomePressedListener
    public void onErrorOccurred(String str, String str2) {
        OnErrorOccurred(str, str2);
    }

    @SimpleEvent(description = "Event triggered when an error occurs. Provides error message and the source of the error.")
    public void OnErrorOccurred(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OnErrorOccurred", str, str2);
    }
}

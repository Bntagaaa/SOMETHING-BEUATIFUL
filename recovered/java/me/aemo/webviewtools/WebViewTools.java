package me.aemo.webviewtools;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Build;
import android.view.View;
import android.webkit.WebView;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.WebViewer;
import java.util.List;

/* loaded from: classes2.dex */
public class WebViewTools extends AndroidNonvisibleComponent implements Component {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentContainer f6749a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f6750b;
    public WebView c;
    public final ClipboardManager d;

    public class a implements View.OnLongClickListener {
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return true;
        }
    }

    public WebViewTools(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.f6749a = componentContainer;
        componentContainer.$context();
        this.f6750b = componentContainer.$context();
        this.d = (ClipboardManager) componentContainer.$form().getSystemService("clipboard");
    }

    @SimpleFunction
    public void Initialize(WebViewer webViewer) {
        WebView webView = (WebView) webViewer.getView();
        this.c = webView;
        webView.getSettings();
    }

    @SimpleFunction
    public void DisablesAllTouchEvents() {
        this.c.setOnLongClickListener(new a());
        this.c.setLongClickable(false);
    }

    @SimpleFunction
    public void ClearClipboard() {
        this.d.setPrimaryClip(ClipData.newPlainText("", ""));
    }

    @SimpleFunction
    public boolean IsInMultiWindowMode() {
        return Build.VERSION.SDK_INT >= 24 && this.f6750b.isInMultiWindowMode();
    }

    @SimpleFunction
    public void RemoveFromRecent() {
        List<ActivityManager.AppTask> appTasks;
        ActivityManager activityManager = (ActivityManager) this.f6749a.$form().getSystemService("activity");
        if (activityManager == null || (appTasks = activityManager.getAppTasks()) == null || appTasks.size() <= 0) {
            return;
        }
        appTasks.get(0).setExcludeFromRecents(true);
    }

    @SimpleFunction
    public void AddToRecent() {
        List<ActivityManager.AppTask> appTasks;
        ActivityManager activityManager = (ActivityManager) this.f6749a.$form().getSystemService("activity");
        if (activityManager == null || (appTasks = activityManager.getAppTasks()) == null || appTasks.size() <= 0) {
            return;
        }
        appTasks.get(0).setExcludeFromRecents(false);
    }
}

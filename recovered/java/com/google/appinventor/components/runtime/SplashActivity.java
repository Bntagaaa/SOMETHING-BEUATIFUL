package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.google.appinventor.components.runtime.util.SdkLevel;

/* loaded from: classes.dex */
public final class SplashActivity extends AppInventorCompatActivity {
    Handler handler;
    WebView webview;

    public class JavaInterface {
        Context mContext;

        public JavaInterface(Context context) {
            this.mContext = context;
        }

        @JavascriptInterface
        public boolean hasPermission(String str) {
            return SdkLevel.getLevel() < 23 || ContextCompat.checkSelfPermission(this.mContext, str) == 0;
        }

        @JavascriptInterface
        public void askPermission(String str) {
            ActivityCompat.requestPermissions(SplashActivity.this, new String[]{str}, 1);
        }

        @JavascriptInterface
        public String getVersion() {
            try {
                return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException unused) {
                return "Unknown";
            }
        }

        @JavascriptInterface
        public void finished() {
            SplashActivity.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.SplashActivity.JavaInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    SplashActivity.this.webview.destroy();
                    SplashActivity.this.finish();
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        JavaInterface javaInterface = new JavaInterface(this);
        this.handler = new Handler();
        WebView webView = new WebView(this);
        this.webview = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabasePath(getApplicationContext().getDir("database", 0).getPath());
        this.webview.setWebChromeClient(new WebChromeClient() { // from class: com.google.appinventor.components.runtime.SplashActivity.1
            @Override // android.webkit.WebChromeClient
            public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
                quotaUpdater.updateQuota(5242880L);
            }
        });
        setContentView(this.webview);
        this.webview.addJavascriptInterface(javaInterface, "Android");
        this.webview.loadUrl("file:///android_asset/splash.html");
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            boolean z = iArr[i2] == 0;
            this.webview.loadUrl("javascript:permresult('" + str + "'," + z + ")");
        }
    }
}

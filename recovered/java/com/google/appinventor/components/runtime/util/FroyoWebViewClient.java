package com.google.appinventor.components.runtime.util;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;

/* loaded from: classes.dex */
public class FroyoWebViewClient<T extends Component> extends WebViewClient {
    private final T component;
    private final boolean followLinks;
    private final Form form;
    private final boolean ignoreErrors;

    public FroyoWebViewClient(boolean z, boolean z2, Form form, T t) {
        this.followLinks = z;
        this.ignoreErrors = z2;
        this.form = form;
        this.component = t;
    }

    public T getComponent() {
        return this.component;
    }

    public Form getForm() {
        return this.form;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return !this.followLinks;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (this.ignoreErrors) {
            sslErrorHandler.proceed();
        } else {
            sslErrorHandler.cancel();
            this.form.dispatchErrorOccurredEvent(this.component, "WebView", ErrorMessages.ERROR_WEBVIEW_SSL_ERROR, new Object[0]);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        EventDispatcher.dispatchEvent(this.component, "BeforePageLoad", str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        EventDispatcher.dispatchEvent(this.component, "PageLoaded", str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, final int i, final String str, final String str2) {
        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.FroyoWebViewClient.1
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(FroyoWebViewClient.this.component, "ErrorOccurred", Integer.valueOf(i), str, str2);
            }
        });
    }
}

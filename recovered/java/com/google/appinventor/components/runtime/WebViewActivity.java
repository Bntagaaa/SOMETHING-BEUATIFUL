package com.google.appinventor.components.runtime;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
public final class WebViewActivity extends AppInventorCompatActivity {
    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebView webView = new WebView(this);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new WebViewClient() { // from class: com.google.appinventor.components.runtime.WebViewActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                Log.i("WebView", "Handling url " + str);
                Uri uri = Uri.parse(str);
                if (uri.getScheme().equals(Form.APPINVENTOR_URL_SCHEME)) {
                    Intent intent = new Intent();
                    intent.setData(uri);
                    WebViewActivity.this.setResult(-1, intent);
                    WebViewActivity.this.finish();
                    return true;
                }
                webView2.loadUrl(str);
                return true;
            }
        });
        setContentView(webView);
        Intent intent = getIntent();
        if (intent == null || intent.getData() == null) {
            return;
        }
        Uri data = intent.getData();
        Log.i("WebView", "Got intent with URI: " + data + ", scheme=" + data.getScheme() + ", host=" + data.getHost());
        webView.loadUrl(data.toString());
    }
}

package com.google.appinventor.components.runtime.util;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.WebViewer;
import com.google.common.net.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.HashMap;

@RequiresApi(api = 11)
/* loaded from: classes.dex */
public class HoneycombWebViewClient extends FroyoWebViewClient<WebViewer> {
    private static final String ASSET_PREFIX = "file:///appinventor_asset/";
    private static final String TAG = "HoneycombWebViewClient";

    public HoneycombWebViewClient(boolean z, boolean z2, Form form, WebViewer webViewer) {
        super(z, z2, form, webViewer);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (str.startsWith("http://localhost/") || str.startsWith(ASSET_PREFIX)) {
            return handleAppRequest(str);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Log.d(TAG, "scheme = " + webResourceRequest.getUrl().getScheme());
        if ("localhost".equals(webResourceRequest.getUrl().getAuthority()) || webResourceRequest.getUrl().toString().startsWith(ASSET_PREFIX)) {
            return handleAppRequest(webResourceRequest.getUrl().toString());
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    public WebResourceResponse handleAppRequest(String str) {
        String strSubstring;
        if (str.startsWith(ASSET_PREFIX)) {
            strSubstring = str.substring(26);
        } else {
            strSubstring = str.substring(str.indexOf("//localhost/") + 12);
        }
        try {
            String str2 = TAG;
            Log.i(str2, "webviewer requested path = " + strSubstring);
            InputStream inputStreamOpenAsset = getForm().openAsset(strSubstring);
            HashMap map = new HashMap();
            map.put(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "localhost");
            String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(strSubstring);
            String str3 = "utf-8";
            Log.i(str2, "Mime type = " + contentTypeFor);
            if (contentTypeFor == null || (!contentTypeFor.startsWith("text/") && !contentTypeFor.equals("application/javascript"))) {
                str3 = null;
            }
            return new WebResourceResponse(contentTypeFor, str3, 200, "OK", map, inputStreamOpenAsset);
        } catch (IOException unused) {
            return new WebResourceResponse(NanoHTTPD.MIME_PLAINTEXT, "utf-8", 404, "Not Found", null, new ByteArrayInputStream(NanoHTTPD.HTTP_NOTFOUND.getBytes()));
        }
    }
}

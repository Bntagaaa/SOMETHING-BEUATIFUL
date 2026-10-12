package com.google.appinventor.components.runtime;

import android.graphics.Bitmap;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.EclairUtil;
import com.google.appinventor.components.runtime.util.FroyoWebViewClient;
import com.google.appinventor.components.runtime.util.HoneycombWebViewClient;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.NanoHTTPD;
import com.google.appinventor.components.runtime.util.SdkLevel;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Component for viewing Web pages.  The Home URL can be specified in the Designer or in the Blocks Editor.  The view can be set to follow links when they are tapped, and users can fill in Web forms. Warning: This is not a full browser.  For example, pressing the phone's hardware Back key will exit the app, rather than move back in the browser history.<p />You can use the WebViewer.WebViewString property to communicate between your app and Javascript code running in the Webviewer page. In the app, you get and set WebViewString.  In the WebViewer, you include Javascript that references the window.Niotron object, using the methoods </em getWebViewString()</em> and <em>setWebViewString(text)</em>.  <p />For example, if the WebViewer opens to a page that contains the Javascript command <br /> <em>document.write(\"The answer is\" + window.Niotron.getWebViewString());</em> <br />and if you set WebView.WebVewString to \"hello\", then the web page will show </br ><em>The answer is hello</em>.  <br />And if the Web page contains Javascript that executes the command <br /><em>window.Niotron.setWebViewString(\"hello from Javascript\")</em>, <br />then the value of the WebViewString property will be <br /><em>hello from Javascript</em>. ", iconName = "images/webviewer.png", version = 10)
@SimpleObject
/* loaded from: classes.dex */
public final class WebViewer extends AndroidViewComponent {
    static JsResult result;
    private boolean followLinks;
    private boolean havePermission;
    private String homeUrl;
    private boolean ignoreSslErrors;
    private boolean prompt;
    private final WebView webview;
    WebViewInterface wvInterface;
    private boolean zoom;
    private boolean zoomDisplay;

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether or not to give the application permission to use the Javascript geolocation API. This property is available only in the designer.", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UsesLocation(boolean z) {
    }

    @RequiresApi(api = 3)
    public WebViewer(ComponentContainer componentContainer) {
        super(componentContainer);
        this.followLinks = true;
        this.prompt = true;
        this.ignoreSslErrors = false;
        this.havePermission = false;
        this.zoom = true;
        this.zoomDisplay = false;
        WebView webView = new WebView(componentContainer.$context());
        this.webview = webView;
        resetWebViewClient();
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(true);
        webView.setFocusable(true);
        WebViewInterface webViewInterface = new WebViewInterface();
        this.wvInterface = webViewInterface;
        webView.addJavascriptInterface(webViewInterface, "Niotron");
        webView.addJavascriptInterface(this.wvInterface, "Appinventor");
        webView.getSettings().setDomStorageEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        webView.setDownloadListener(new DownloadListener() { // from class: com.google.appinventor.components.runtime.WebViewer.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                WebViewer.this.DownloadRequested(str, str2, str3, str4, j);
            }
        });
        if (SdkLevel.getLevel() >= 5) {
            EclairUtil.setupWebViewGeoLoc(this, webView, componentContainer.$context());
        }
        componentContainer.$add(this);
        webView.setWebChromeClient(new ChromeWebViewClientImpl());
        webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.appinventor.components.runtime.WebViewer.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if ((action != 0 && action != 1) || view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        HomeUrl("");
        Width(-2);
        Height(-2);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Gets the WebView's String, which is viewable through Javascript in the WebView as the window.Niotron object")
    public String WebViewString() {
        return this.wvInterface.getWebViewString();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public void WebViewString(String str) {
        this.wvInterface.setWebViewStringFromBlocks(str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.webview;
    }

    public class WebViewerClient extends WebViewClient {
        public /* synthetic */ WebViewerClient(WebViewer webViewer, int i) {
            this();
        }

        private WebViewerClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return !WebViewer.this.followLinks;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebViewer.this.BeforePageLoad(str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            WebViewer.this.PageLoaded(str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, final int i, final String str, final String str2) {
            WebViewer.this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.WebViewer.WebViewerClient.1
                @Override // java.lang.Runnable
                public void run() {
                    WebViewer.this.ErrorOccurred(i, str, str2);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Height(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "URL of the page the WebViewer should initially open to.  Setting this will load the page.")
    public String HomeUrl() {
        return this.homeUrl;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void HomeUrl(String str) {
        this.homeUrl = str;
        this.webview.clearHistory();
        loadUrl("HomeUrl", this.homeUrl);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "URL of the page currently viewed.   This could be different from the Home URL if new pages were visited by following links.")
    public String CurrentUrl() {
        return this.webview.getUrl() == null ? "" : this.webview.getUrl();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Title of the page currently viewed")
    public String CurrentPageTitle() {
        return this.webview.getTitle() == null ? "" : this.webview.getTitle();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determines whether to follow links when they are tapped in the WebViewer.  If you follow links, you can use GoBack and GoForward to navigate the browser history. ")
    public boolean FollowLinks() {
        return this.followLinks;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FollowLinks(boolean z) {
        this.followLinks = z;
        resetWebViewClient();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determine whether or not to ignore SSL errors. Set to true to ignore errors. Use this to accept self signed certificates from websites.")
    public boolean IgnoreSslErrors() {
        return this.ignoreSslErrors;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void IgnoreSslErrors(boolean z) {
        this.ignoreSslErrors = z;
        resetWebViewClient();
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, description = "Enable users to zoom")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ZoomEnabled(boolean z) {
        this.zoom = z;
        this.webview.getSettings().setBuiltInZoomControls(this.zoom);
        this.webview.getSettings().setDisplayZoomControls(this.zoomDisplay);
    }

    @SimpleProperty(description = "Enable users to zoom")
    public boolean ZoomEnabled() {
        return this.zoom;
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, description = "Visibility of Zoom Button")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ZoomDisplay(boolean z) {
        this.zoomDisplay = z;
        this.webview.getSettings().setDisplayZoomControls(this.zoomDisplay);
    }

    @SimpleProperty(description = "Visibility of Zoom Button")
    public boolean ZoomDisplay() {
        return this.zoomDisplay;
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED)
    @DesignerProperty
    public void UserAgent(String str) {
        this.webview.getSettings().setUserAgentString(str);
    }

    @SimpleFunction(description = "Loads the home URL page.  This happens automatically when the home URL is changed.")
    public void GoHome() {
        loadUrl("GoHome", this.homeUrl);
    }

    @SimpleFunction(description = "Load page with HTML text")
    public void GoBackAndForward(int i) {
        this.webview.goBackOrForward(i);
    }

    @SimpleFunction(description = "Load page with HTML text")
    public boolean CanGoBackAndForward(int i) {
        return this.webview.canGoBackOrForward(i);
    }

    @SimpleFunction(description = "Load page with HTML text")
    public void loadHTML(String str) {
        this.webview.loadData(Base64.encodeToString(str.getBytes(), 1), NanoHTTPD.MIME_HTML, "base64");
    }

    @SimpleFunction(description = "Go back to the previous page in the history list.  Does nothing if there is no previous page.")
    public void GoBack() {
        if (this.webview.canGoBack()) {
            this.webview.goBack();
        }
    }

    @SimpleFunction(description = "Go forward to the next page in the history list.   Does nothing if there is no next page.")
    public void GoForward() {
        if (this.webview.canGoForward()) {
            this.webview.goForward();
        }
    }

    @SimpleFunction(description = "Returns true if the WebViewer can go forward in the history list.")
    public boolean CanGoForward() {
        return this.webview.canGoForward();
    }

    @SimpleFunction(description = "Returns true if the WebViewer can go back in the history list.")
    public boolean CanGoBack() {
        return this.webview.canGoBack();
    }

    @SimpleFunction(description = "Load the page at the given URL.")
    public void GoToUrl(String str) {
        loadUrl("GoToUrl", str);
    }

    @SimpleFunction(description = "Stop loading a page.")
    public void StopLoading() {
        this.webview.stopLoading();
    }

    @SimpleFunction(description = "Reload the current page.")
    public void Reload() {
        this.webview.reload();
    }

    @SimpleProperty(description = "If True, then prompt the user of the WebView to give permission to access the geolocation API. If False, then assume permission is granted.")
    public boolean PromptforPermission() {
        return this.prompt;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = true)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void PromptforPermission(boolean z) {
        this.prompt = z;
    }

    @SimpleFunction(description = "Clear stored location permissions.")
    public void ClearLocations() {
        if (SdkLevel.getLevel() >= 5) {
            EclairUtil.clearWebViewGeoLoc();
        }
    }

    private void resetWebViewClient() {
        if (SdkLevel.getLevel() >= 11) {
            this.webview.setWebViewClient(new HoneycombWebViewClient(this.followLinks, this.ignoreSslErrors, this.container.$form(), this));
        } else if (SdkLevel.getLevel() >= 8) {
            this.webview.setWebViewClient(new FroyoWebViewClient(this.followLinks, this.ignoreSslErrors, this.container.$form(), this));
        } else {
            this.webview.setWebViewClient(new WebViewerClient(this, 0));
        }
    }

    @SimpleFunction(description = "Clear WebView caches.")
    public void ClearCaches() {
        this.webview.clearCache(true);
    }

    @SimpleFunction(description = "Clear WebView cookies.")
    public void ClearCookies() {
        CookieManager cookieManager = CookieManager.getInstance();
        if (SdkLevel.getLevel() >= 21) {
            cookieManager.removeAllCookies(null);
        } else {
            cookieManager.removeAllCookie();
        }
    }

    @SimpleFunction(description = "Run JavaScript in the current page.")
    public void RunJavaScript(String str) {
        this.webview.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.google.appinventor.components.runtime.WebViewer.3
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str2) {
                WebViewer.this.AfterJavaScriptEvaluated(str2);
            }
        });
    }

    @SimpleFunction(description = "Executes Alert \"OK\" button")
    public void AlertOK() {
        result.confirm();
    }

    @SimpleFunction(description = "Executes Alert \"Cancel\" button")
    public void AlertCancel() {
        result.cancel();
    }

    @SimpleEvent(description = "When the JavaScript calls Niotron.setWebViewString this event is run.")
    public void WebViewStringChange(String str) {
        EventDispatcher.dispatchEvent(this, "WebViewStringChange", str);
    }

    @SimpleEvent(description = "When a page is about to load this event is run.")
    public void BeforePageLoad(String str) {
        EventDispatcher.dispatchEvent(this, "BeforePageLoad", str);
    }

    @SimpleEvent(description = "When a page is finished loading this event is run.")
    public void PageLoaded(String str) {
        EventDispatcher.dispatchEvent(this, "PageLoaded", str);
    }

    @SimpleEvent(description = "When an error occurs this event is run.")
    public void ErrorOccurred(int i, String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", Integer.valueOf(i), str, str2);
    }

    @SimpleEvent
    public void ProgressChanged(int i) {
        EventDispatcher.dispatchEvent(this, "ProgressChanged", Integer.valueOf(i));
    }

    @SimpleEvent
    public void JSAlert(String str) {
        EventDispatcher.dispatchEvent(this, "JSAlert", str);
    }

    @SimpleEvent
    public void MessageConsoled(String str) {
        EventDispatcher.dispatchEvent(this, "MessageConsoled", str);
    }

    @SimpleEvent
    public void DownloadRequested(String str, String str2, String str3, String str4, long j) {
        EventDispatcher.dispatchEvent(this, "DownloadRequested", str2, str, str3, str4, Long.valueOf(j));
    }

    @SimpleEvent(description = "Event raised after Js is evalurated")
    public void AfterJavaScriptEvaluated(String str) {
        EventDispatcher.dispatchEvent(this, "AfterJavaScriptEvaluated", str);
    }

    private void loadUrl(final String str, final String str2) {
        if (!this.havePermission && MediaUtil.isExternalFileUrl(this.container.$form(), str2)) {
            this.container.$form().askPermission("android.permission.READ_EXTERNAL_STORAGE", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.WebViewer.4
                @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                public void HandlePermissionResponse(String str3, boolean z) {
                    if (z) {
                        WebViewer.this.havePermission = true;
                        WebViewer.this.webview.loadUrl(str2);
                    } else {
                        WebViewer.this.container.$form().dispatchPermissionDeniedEvent(WebViewer.this, str, "android.permission.READ_EXTERNAL_STORAGE");
                    }
                }
            });
        } else {
            this.webview.loadUrl(str2);
        }
    }

    public class WebViewInterface {
        String webViewString = " ";

        public WebViewInterface() {
        }

        @JavascriptInterface
        public String getWebViewString() {
            return this.webViewString;
        }

        @JavascriptInterface
        public void setWebViewString(final String str) {
            this.webViewString = str;
            WebViewer.this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.WebViewer.WebViewInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    WebViewer.this.WebViewStringChange(str);
                }
            });
        }

        public void setWebViewStringFromBlocks(String str) {
            this.webViewString = str;
        }
    }

    public class ChromeWebViewClientImpl extends WebChromeClient {
        public ChromeWebViewClientImpl() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            WebViewer.this.ProgressChanged(i);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            WebViewer.result = jsResult;
            WebViewer.this.JSAlert(str2);
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            WebViewer.this.MessageConsoled(consoleMessage.message());
            return true;
        }
    }
}

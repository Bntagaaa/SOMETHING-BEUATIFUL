package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.HtmlEntities;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.collect.Lists;
import com.google.appinventor.components.runtime.collect.Maps;
import com.google.appinventor.components.runtime.errors.DispatchableError;
import com.google.appinventor.components.runtime.errors.IllegalArgumentError;
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.errors.RequestTimeoutException;
import com.google.appinventor.components.runtime.repackaged.org.json.XML;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.BulkPermissionRequest;
import com.google.appinventor.components.runtime.util.ChartDataSourceUtil;
import com.google.appinventor.components.runtime.util.CsvUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.GingerbreadUtil;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.NanoHTTPD;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.XmlParser;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.json.JSONException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

@SimpleObject
@UsesPermissions({"android.permission.INTERNET"})
@DesignerComponent(category = ComponentCategory.CONNECTIVITY, description = "Non-visible component that provides functions for HTTP GET, POST, PUT, and DELETE requests.", iconName = "images/web.png", nonVisible = true, version = 9)
@UsesLibraries(libraries = "json.jar")
/* loaded from: classes.dex */
public class Web extends AndroidNonvisibleComponent implements Component, ObservableDataSource<YailList, Future<YailList>> {
    private static final String LOG_TAG = "Web";
    private static final java.util.Map<String, String> mimeTypeToExtension;
    private final Activity activity;
    private boolean allowCookies;
    private YailList columns;
    private final CookieHandler cookieHandler;
    private HashSet<DataSourceChangeListener> dataSourceObservers;
    private boolean haveReadPermission;
    private boolean haveWritePermission;
    private FutureTask<Void> lastTask;
    private YailList requestHeaders;
    private String responseFileName;
    private String responseTextEncoding;
    private boolean saveResponse;
    private int timeout;
    private String urlString;

    public static class InvalidRequestHeadersException extends Exception {
        final int errorNumber;
        final int index;

        public InvalidRequestHeadersException(int i, int i2) {
            this.errorNumber = i;
            this.index = i2;
        }
    }

    public static class BuildRequestDataException extends Exception {
        final int errorNumber;
        final int index;

        public BuildRequestDataException(int i, int i2) {
            this.errorNumber = i;
            this.index = i2;
        }
    }

    public static class CapturedProperties {
        final boolean allowCookies;
        final java.util.Map<String, List<String>> cookies;
        final java.util.Map<String, List<String>> requestHeaders;
        final String responseFileName;
        final boolean saveResponse;
        final int timeout;
        final URL url;
        final String urlString;

        public CapturedProperties(Web web) throws InvalidRequestHeadersException, IOException {
            java.util.Map<String, List<String>> map;
            String str = web.urlString;
            this.urlString = str;
            URL url = new URL(str);
            this.url = url;
            boolean z = web.allowCookies;
            this.allowCookies = z;
            this.saveResponse = web.saveResponse;
            this.responseFileName = web.responseFileName;
            this.timeout = web.timeout;
            java.util.Map<String, List<String>> mapProcessRequestHeaders = Web.processRequestHeaders(web.requestHeaders);
            this.requestHeaders = mapProcessRequestHeaders;
            if (!z || web.cookieHandler == null) {
                map = null;
            } else {
                try {
                    map = web.cookieHandler.get(url.toURI(), mapProcessRequestHeaders);
                } catch (IOException | URISyntaxException unused) {
                }
            }
            this.cookies = map;
        }
    }

    static {
        HashMap mapNewHashMap = Maps.newHashMap();
        mimeTypeToExtension = mapNewHashMap;
        mapNewHashMap.put("application/pdf", "pdf");
        mapNewHashMap.put("application/zip", "zip");
        mapNewHashMap.put("audio/mpeg", "mpeg");
        mapNewHashMap.put("audio/mp3", "mp3");
        mapNewHashMap.put("audio/mp4", "mp4");
        mapNewHashMap.put("image/gif", "gif");
        mapNewHashMap.put("image/jpeg", "jpg");
        mapNewHashMap.put("image/png", "png");
        mapNewHashMap.put("image/tiff", "tiff");
        mapNewHashMap.put(NanoHTTPD.MIME_PLAINTEXT, "txt");
        mapNewHashMap.put(NanoHTTPD.MIME_HTML, "html");
        mapNewHashMap.put(NanoHTTPD.MIME_XML, "xml");
    }

    public Web(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.urlString = "";
        this.requestHeaders = new YailList();
        this.responseFileName = "";
        this.timeout = 0;
        this.haveReadPermission = false;
        this.haveWritePermission = false;
        this.lastTask = null;
        this.columns = new YailList();
        this.dataSourceObservers = new HashSet<>();
        this.responseTextEncoding = "UTF-8";
        this.activity = componentContainer.$context();
        this.cookieHandler = SdkLevel.getLevel() >= 9 ? GingerbreadUtil.newCookieManager() : null;
    }

    public Web() {
        super(null);
        this.urlString = "";
        this.requestHeaders = new YailList();
        this.responseFileName = "";
        this.timeout = 0;
        this.haveReadPermission = false;
        this.haveWritePermission = false;
        this.lastTask = null;
        this.columns = new YailList();
        this.dataSourceObservers = new HashSet<>();
        this.responseTextEncoding = "UTF-8";
        this.activity = null;
        this.cookieHandler = null;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The URL for the web request.")
    public String Url() {
        return this.urlString;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Url(String str) {
        this.urlString = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "User-specified character encoding for web response.")
    public String ResponseTextEncoding() {
        return this.responseTextEncoding;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "UTF-8", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ResponseTextEncoding(String str) {
        this.responseTextEncoding = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values.")
    public YailList RequestHeaders() {
        return this.requestHeaders;
    }

    @SimpleProperty
    public void RequestHeaders(YailList yailList) {
        try {
            processRequestHeaders(yailList);
            this.requestHeaders = yailList;
        } catch (InvalidRequestHeadersException e) {
            this.form.dispatchErrorOccurredEvent(this, "RequestHeaders", e.errorNumber, Integer.valueOf(e.index));
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater.")
    public boolean AllowCookies() {
        return this.allowCookies;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "false", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AllowCookies(boolean z) {
        this.allowCookies = z;
        if (z && this.cookieHandler == null) {
            this.form.dispatchErrorOccurredEvent(this, "AllowCookies", 4, new Object[0]);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the response should be saved in a file.")
    public boolean SaveResponse() {
        return this.saveResponse;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "false", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SaveResponse(boolean z) {
        this.saveResponse = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated.")
    public String ResponseFileName() {
        return this.responseFileName;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ResponseFileName(String str) {
        this.responseFileName = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The number of milliseconds that a web request will wait for a response before giving up. If set to 0, then there is no time limit on how long the request will wait.")
    public int Timeout() {
        return this.timeout;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Timeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentError("Web Timeout must be a non-negative integer.");
        }
        this.timeout = i;
    }

    @SimpleFunction(description = "Clears all cookies for this Web component.")
    public void ClearCookies() {
        CookieHandler cookieHandler = this.cookieHandler;
        if (cookieHandler != null) {
            GingerbreadUtil.clearCookies(cookieHandler);
        } else {
            this.form.dispatchErrorOccurredEvent(this, "ClearCookies", 4, new Object[0]);
        }
    }

    @SimpleFunction
    public void Get() {
        final CapturedProperties capturedPropertiesCapturePropertyValues = capturePropertyValues("Get");
        if (capturedPropertiesCapturePropertyValues == null) {
            return;
        }
        FutureTask<Void> futureTask = new FutureTask<>(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.1
            @Override // java.lang.Runnable
            public void run() {
                Web.this.performRequest(capturedPropertiesCapturePropertyValues, null, null, "GET", "Get");
            }
        }, null);
        this.lastTask = futureTask;
        AsynchUtil.runAsynchronously(futureTask);
    }

    @SimpleFunction(description = "Performs an HTTP POST request using the Url property and the specified text.\nThe characters of the text are encoded using UTF-8 encoding.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered.")
    public void PostText(String str) {
        requestTextImpl(str, "UTF-8", "PostText", "POST");
    }

    @SimpleFunction(description = "Performs an HTTP POST request using the Url property and the specified text.\nThe characters of the text are encoded using the given encoding.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered.")
    public void PostTextWithEncoding(String str, String str2) {
        requestTextImpl(str, str2, "PostTextWithEncoding", "POST");
    }

    @SimpleFunction(description = "Performs an HTTP POST request using the Url property and data from the specified file.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered.")
    public void PostFile(final String str) {
        final CapturedProperties capturedPropertiesCapturePropertyValues = capturePropertyValues("PostFile");
        if (capturedPropertiesCapturePropertyValues == null) {
            return;
        }
        FutureTask<Void> futureTask = new FutureTask<>(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.2
            @Override // java.lang.Runnable
            public void run() {
                Web.this.performRequest(capturedPropertiesCapturePropertyValues, null, str, "POST", "PostFile");
            }
        }, null);
        this.lastTask = futureTask;
        AsynchUtil.runAsynchronously(futureTask);
    }

    @SimpleFunction(description = "Performs an HTTP PATCH request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered.")
    public void PatchText(String str) {
        requestTextImpl(str, "UTF-8", "PatchText", "PATCH");
    }

    @SimpleFunction(description = "Performs an HTTP PATCH request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered.")
    public void PatchTextWithEncoding(String str, String str2) {
        requestTextImpl(str, str2, "PatchTextWithEncoding", "PATCH");
    }

    @SimpleFunction(description = "Performs an HTTP PATCH request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered.")
    public void PatchFile(final String str) {
        final CapturedProperties capturedPropertiesCapturePropertyValues = capturePropertyValues("PatchFile");
        if (capturedPropertiesCapturePropertyValues == null) {
            return;
        }
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.3
            @Override // java.lang.Runnable
            public void run() {
                Web.this.performRequest(capturedPropertiesCapturePropertyValues, null, str, "PATCH", "PatchFile");
            }
        });
    }

    @SimpleFunction(description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered.")
    public void PutText(String str) {
        requestTextImpl(str, "UTF-8", "PutText", "PUT");
    }

    @SimpleFunction(description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered.")
    public void PutTextWithEncoding(String str, String str2) {
        requestTextImpl(str, str2, "PutTextWithEncoding", "PUT");
    }

    @SimpleFunction(description = "Performs an HTTP PUT request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered.")
    public void PutFile(final String str) {
        final CapturedProperties capturedPropertiesCapturePropertyValues = capturePropertyValues("PutFile");
        if (capturedPropertiesCapturePropertyValues == null) {
            return;
        }
        FutureTask<Void> futureTask = new FutureTask<>(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.4
            @Override // java.lang.Runnable
            public void run() {
                Web.this.performRequest(capturedPropertiesCapturePropertyValues, null, str, "PUT", "PutFile");
            }
        }, null);
        this.lastTask = futureTask;
        AsynchUtil.runAsynchronously(futureTask);
    }

    @SimpleFunction
    public void Delete() {
        final CapturedProperties capturedPropertiesCapturePropertyValues = capturePropertyValues("Delete");
        if (capturedPropertiesCapturePropertyValues == null) {
            return;
        }
        FutureTask<Void> futureTask = new FutureTask<>(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.5
            @Override // java.lang.Runnable
            public void run() {
                Web.this.performRequest(capturedPropertiesCapturePropertyValues, null, null, "DELETE", "Delete");
            }
        }, null);
        this.lastTask = futureTask;
        AsynchUtil.runAsynchronously(futureTask);
    }

    private void requestTextImpl(final String str, final String str2, final String str3, final String str4) {
        final CapturedProperties capturedPropertiesCapturePropertyValues = capturePropertyValues(str3);
        if (capturedPropertiesCapturePropertyValues == null) {
            return;
        }
        FutureTask<Void> futureTask = new FutureTask<>(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.6
            @Override // java.lang.Runnable
            public void run() throws UnsupportedEncodingException {
                byte[] bytes;
                try {
                    String str5 = str2;
                    if (str5 == null || str5.length() == 0) {
                        bytes = str.getBytes("UTF-8");
                    } else {
                        bytes = str.getBytes(str2);
                    }
                    Web.this.performRequest(capturedPropertiesCapturePropertyValues, bytes, null, str4, str3);
                } catch (UnsupportedEncodingException unused) {
                    Web web = Web.this;
                    web.form.dispatchErrorOccurredEvent(web, str3, ErrorMessages.ERROR_WEB_UNSUPPORTED_ENCODING, str2);
                }
            }
        }, null);
        this.lastTask = futureTask;
        AsynchUtil.runAsynchronously(futureTask);
    }

    @SimpleEvent
    public void GotText(String str, int i, String str2, String str3) {
        EventDispatcher.dispatchEvent(this, "GotText", str, Integer.valueOf(i), str2, str3);
    }

    @SimpleEvent
    public void GotFile(String str, int i, String str2, String str3) {
        EventDispatcher.dispatchEvent(this, "GotFile", str, Integer.valueOf(i), str2, str3);
    }

    @SimpleEvent
    public void TimedOut(String str) {
        EventDispatcher.dispatchEvent(this, "TimedOut", str);
    }

    @SimpleFunction
    public String BuildRequestData(YailList yailList) {
        try {
            return buildRequestData(yailList);
        } catch (BuildRequestDataException e) {
            this.form.dispatchErrorOccurredEvent(this, "BuildRequestData", e.errorNumber, Integer.valueOf(e.index));
            return "";
        }
    }

    public String buildRequestData(YailList yailList) throws BuildRequestDataException {
        StringBuilder sb = new StringBuilder();
        String str = "";
        int i = 0;
        while (i < yailList.size()) {
            Object object = yailList.getObject(i);
            if (object instanceof YailList) {
                YailList yailList2 = (YailList) object;
                if (yailList2.size() == 2) {
                    String string = yailList2.getObject(0).toString();
                    String string2 = yailList2.getObject(1).toString();
                    sb.append(str);
                    sb.append(UriEncode(string));
                    sb.append('=');
                    sb.append(UriEncode(string2));
                    i++;
                    str = "&";
                } else {
                    throw new BuildRequestDataException(ErrorMessages.ERROR_WEB_BUILD_REQUEST_DATA_NOT_TWO_ELEMENTS, i + 1);
                }
            } else {
                throw new BuildRequestDataException(ErrorMessages.ERROR_WEB_BUILD_REQUEST_DATA_NOT_LIST, i + 1);
            }
        }
        return sb.toString();
    }

    @SimpleFunction
    public String UriEncode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            Log.e(LOG_TAG, "UTF-8 is unsupported?", e);
            return "";
        }
    }

    @SimpleFunction
    public String UriDecode(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            Log.e(LOG_TAG, "UTF-8 is unsupported?", e);
            return "";
        }
    }

    @SimpleFunction
    public Object JsonTextDecode(String str) {
        try {
            return decodeJsonText(str, false);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "JsonTextDecode", ErrorMessages.ERROR_WEB_JSON_TEXT_DECODE_FAILED, str);
            return "";
        }
    }

    @SimpleFunction
    public Object JsonTextDecodeWithDictionaries(String str) {
        try {
            return decodeJsonText(str, true);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "JsonTextDecodeWithDictionaries", ErrorMessages.ERROR_WEB_JSON_TEXT_DECODE_FAILED, str);
            return "";
        }
    }

    @VisibleForTesting
    public static Object decodeJsonText(String str, boolean z) throws IllegalArgumentException {
        try {
            return JsonUtil.getObjectFromJson(str, z);
        } catch (JSONException unused) {
            throw new IllegalArgumentException("jsonText is not a legal JSON value");
        }
    }

    @VisibleForTesting
    @Deprecated
    public static Object decodeJsonText(String str) throws IllegalArgumentException {
        return decodeJsonText(str, false);
    }

    @SimpleFunction
    public String JsonObjectEncode(Object obj) {
        try {
            return JsonUtil.encodeJsonObject(obj);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "JsonObjectEncode", ErrorMessages.ERROR_WEB_JSON_TEXT_ENCODE_FAILED, obj);
            return "";
        }
    }

    @SimpleFunction(description = "Decodes the given XML into a set of nested dictionaries that capture the structure and data contained in the XML. See the help for more details.")
    public Object XMLTextDecodeAsDictionary(String str) throws ParserConfigurationException, SAXException, IOException {
        try {
            XmlParser xmlParser = new XmlParser();
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            InputSource inputSource = new InputSource(new StringReader(str));
            inputSource.setEncoding("UTF-8");
            sAXParserNewSAXParser.parse(inputSource, xmlParser);
            return xmlParser.getRoot();
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage());
            this.form.dispatchErrorOccurredEvent(this, "XMLTextDecodeAsDictionary", ErrorMessages.ERROR_WEB_JSON_TEXT_DECODE_FAILED, e.getMessage());
            return new YailDictionary();
        }
    }

    @SimpleFunction(description = "Decodes the given XML string to produce a dictionary structure. See the App Inventor documentation on \"Other topics, notes, and details\" for information.")
    public Object XMLTextDecode(String str) {
        try {
            return JsonTextDecode(XML.toJSONObject(str).toString());
        } catch (com.google.appinventor.components.runtime.repackaged.org.json.JSONException e) {
            Log.e(LOG_TAG, e.getMessage());
            this.form.dispatchErrorOccurredEvent(this, "XMLTextDecode", ErrorMessages.ERROR_WEB_JSON_TEXT_DECODE_FAILED, e.getMessage());
            return YailList.makeEmptyList();
        }
    }

    @SimpleFunction(description = "Decodes the given HTML text value. HTML character entities such as `&`, `<`, `>`, `'`, and `\"` are changed to &, <, >, ', and \". Entities such as &#xhhhh, and &#nnnn are changed to the appropriate characters.")
    public String HtmlTextDecode(String str) {
        try {
            return HtmlEntities.decodeHtmlText(str);
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "HtmlTextDecode", ErrorMessages.ERROR_WEB_HTML_TEXT_DECODE_FAILED, str);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performRequest(final CapturedProperties capturedProperties, final byte[] bArr, final String str, final String str2, final String str3) {
        String[] strArr;
        int i;
        final ArrayList arrayList = new ArrayList();
        if (str != null && FileUtil.needsReadPermission(this.form, str) && !this.haveReadPermission) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (this.saveResponse) {
            Form form = this.form;
            if (FileUtil.needsWritePermission(this.form, FileUtil.resolveFileName(form, capturedProperties.responseFileName, form.DefaultFileScope())) && !this.haveWritePermission) {
                arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            }
        }
        if (arrayList.size() > 0 && !this.haveReadPermission) {
            this.form.askPermission(new BulkPermissionRequest(this, str3, (String[]) arrayList.toArray(new String[0])) { // from class: com.google.appinventor.components.runtime.Web.7
                @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                public void onGranted() {
                    if (arrayList.contains("android.permission.READ_EXTERNAL_STORAGE")) {
                        this.haveReadPermission = true;
                    }
                    if (arrayList.contains("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        this.haveWritePermission = true;
                    }
                    AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            this.performRequest(capturedProperties, bArr, str, str2, str3);
                        }
                    });
                }
            });
            return;
        }
        try {
            HttpURLConnection httpURLConnectionOpenConnection = openConnection(capturedProperties, str2);
            if (httpURLConnectionOpenConnection != null) {
                try {
                    try {
                        if (bArr != null) {
                            writeRequestData(httpURLConnectionOpenConnection, bArr);
                        } else if (str != null) {
                            writeRequestFile(httpURLConnectionOpenConnection, str);
                        }
                        final int responseCode = httpURLConnectionOpenConnection.getResponseCode();
                        final String responseType = getResponseType(httpURLConnectionOpenConnection);
                        processResponseCookies(httpURLConnectionOpenConnection);
                        if (this.saveResponse) {
                            final String strSaveResponseContent = saveResponseContent(httpURLConnectionOpenConnection, capturedProperties.responseFileName, responseType);
                            this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    Web.this.GotFile(capturedProperties.urlString, responseCode, responseType, strSaveResponseContent);
                                }
                            });
                        } else {
                            final String responseContent = getResponseContent(httpURLConnectionOpenConnection, this.responseTextEncoding);
                            this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    Web.this.GotText(capturedProperties.urlString, responseCode, responseType, responseContent);
                                }
                            });
                            updateColumns(responseContent, responseType);
                            notifyDataObservers((YailList) null, (Object) null);
                        }
                        httpURLConnectionOpenConnection.disconnect();
                    } catch (SocketTimeoutException unused) {
                        this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Web.10
                            @Override // java.lang.Runnable
                            public void run() {
                                Web.this.TimedOut(capturedProperties.urlString);
                            }
                        });
                        throw new RequestTimeoutException();
                    }
                } catch (Throwable th) {
                    httpURLConnectionOpenConnection.disconnect();
                    throw th;
                }
            }
        } catch (DispatchableError e) {
            this.form.dispatchErrorOccurredEvent(this, str3, e.getErrorCode(), e.getArguments());
        } catch (PermissionException e2) {
            this.form.dispatchPermissionDeniedEvent(this, str3, e2);
        } catch (RequestTimeoutException unused2) {
            this.form.dispatchErrorOccurredEvent(this, str3, ErrorMessages.ERROR_WEB_REQUEST_TIMED_OUT, capturedProperties.urlString);
        } catch (FileUtil.FileException e3) {
            this.form.dispatchErrorOccurredEvent(this, str3, e3.getErrorMessageNumber(), new Object[0]);
        } catch (Exception unused3) {
            if (str3.equals("Get")) {
                strArr = new String[]{capturedProperties.urlString};
                i = ErrorMessages.ERROR_WEB_UNABLE_TO_GET;
            } else if (str3.equals("Delete")) {
                strArr = new String[]{capturedProperties.urlString};
                i = ErrorMessages.ERROR_WEB_UNABLE_TO_DELETE;
            } else if (str3.equals("PostFile") || str3.equals("PutFile") || str3.equals("PatchFile")) {
                strArr = new String[]{str, capturedProperties.urlString};
                i = 1104;
            } else {
                String str4 = "";
                if (bArr != null) {
                    try {
                        str4 = new String(bArr, "UTF-8");
                    } catch (UnsupportedEncodingException unused4) {
                        Log.e(LOG_TAG, "UTF-8 is the default charset for Android but not available???");
                    }
                }
                i = 1103;
                strArr = new String[]{str4, capturedProperties.urlString};
            }
            this.form.dispatchErrorOccurredEvent(this, str3, i, strArr);
        }
    }

    private static HttpURLConnection openConnection(CapturedProperties capturedProperties, String str) throws IOException, ClassCastException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) capturedProperties.url.openConnection();
        httpURLConnection.setConnectTimeout(capturedProperties.timeout);
        httpURLConnection.setReadTimeout(capturedProperties.timeout);
        if (str.equals("PUT") || str.equals("PATCH") || str.equals("DELETE")) {
            httpURLConnection.setRequestMethod(str);
        }
        for (Map.Entry<String, List<String>> entry : capturedProperties.requestHeaders.entrySet()) {
            String key = entry.getKey();
            Iterator<String> it = entry.getValue().iterator();
            while (it.hasNext()) {
                httpURLConnection.addRequestProperty(key, it.next());
            }
        }
        java.util.Map<String, List<String>> map = capturedProperties.cookies;
        if (map != null) {
            for (Map.Entry<String, List<String>> entry2 : map.entrySet()) {
                String key2 = entry2.getKey();
                Iterator<String> it2 = entry2.getValue().iterator();
                while (it2.hasNext()) {
                    httpURLConnection.addRequestProperty(key2, it2.next());
                }
            }
        }
        return httpURLConnection;
    }

    private static void writeRequestData(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        try {
            bufferedOutputStream.write(bArr, 0, bArr.length);
            bufferedOutputStream.flush();
        } finally {
            bufferedOutputStream.close();
        }
    }

    private void writeRequestFile(HttpURLConnection httpURLConnection, String str) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(MediaUtil.openMedia(this.form, str));
        try {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setChunkedStreamingMode(0);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            while (true) {
                try {
                    int i = bufferedInputStream.read();
                    if (i != -1) {
                        bufferedOutputStream.write(i);
                    } else {
                        bufferedOutputStream.flush();
                        return;
                    }
                } finally {
                    bufferedOutputStream.close();
                }
            }
        } finally {
            bufferedInputStream.close();
        }
    }

    private static String getResponseType(HttpURLConnection httpURLConnection) {
        String contentType = httpURLConnection.getContentType();
        return contentType != null ? contentType : "";
    }

    private void processResponseCookies(HttpURLConnection httpURLConnection) throws IOException {
        if (!this.allowCookies || this.cookieHandler == null) {
            return;
        }
        try {
            this.cookieHandler.put(httpURLConnection.getURL().toURI(), httpURLConnection.getHeaderFields());
        } catch (IOException | URISyntaxException unused) {
        }
    }

    private static String getResponseContent(HttpURLConnection httpURLConnection, String str) throws IOException {
        StringBuilder sb;
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (contentEncoding != null) {
            str = contentEncoding;
        } else if (str == null || str.isEmpty()) {
            str = "UTF-8";
        }
        InputStreamReader inputStreamReader = new InputStreamReader(getConnectionStream(httpURLConnection), str);
        try {
            int contentLength = httpURLConnection.getContentLength();
            if (contentLength != -1) {
                sb = new StringBuilder(contentLength);
            } else {
                sb = new StringBuilder();
            }
            char[] cArr = new char[1024];
            while (true) {
                int i = inputStreamReader.read(cArr);
                if (i != -1) {
                    sb.append(cArr, 0, i);
                } else {
                    String string = sb.toString();
                    inputStreamReader.close();
                    return string;
                }
            }
        } catch (Throwable th) {
            inputStreamReader.close();
            throw th;
        }
    }

    private String saveResponseContent(HttpURLConnection httpURLConnection, String str, String str2) throws IOException, FileUtil.FileException {
        java.io.File fileCreateFile = createFile(str, str2);
        java.io.File parentFile = fileCreateFile.getParentFile();
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            throw new DispatchableError(ErrorMessages.ERROR_CANNOT_MAKE_DIRECTORY, parentFile.getAbsolutePath());
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(getConnectionStream(httpURLConnection), 4096);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileCreateFile), 4096);
            while (true) {
                try {
                    int i = bufferedInputStream.read();
                    if (i != -1) {
                        bufferedOutputStream.write(i);
                    } else {
                        bufferedOutputStream.flush();
                        bufferedInputStream.close();
                        return fileCreateFile.getAbsolutePath();
                    }
                } finally {
                    bufferedOutputStream.close();
                }
            }
        } catch (Throwable th) {
            bufferedInputStream.close();
            throw th;
        }
    }

    private static InputStream getConnectionStream(HttpURLConnection httpURLConnection) throws SocketTimeoutException {
        try {
            return httpURLConnection.getInputStream();
        } catch (SocketTimeoutException e) {
            throw e;
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private java.io.File createFile(String str, String str2) throws IOException, FileUtil.FileException {
        if (!TextUtils.isEmpty(str)) {
            return FileUtil.getExternalFile(this.form, str);
        }
        int iIndexOf = str2.indexOf(59);
        if (iIndexOf != -1) {
            str2 = str2.substring(0, iIndexOf);
        }
        String str3 = mimeTypeToExtension.get(str2);
        if (str3 == null) {
            str3 = "tmp";
        }
        return FileUtil.getDownloadFile(this.form, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.util.Map<String, List<String>> processRequestHeaders(YailList yailList) throws InvalidRequestHeadersException {
        HashMap mapNewHashMap = Maps.newHashMap();
        for (int i = 0; i < yailList.size(); i++) {
            Object object = yailList.getObject(i);
            if (object instanceof YailList) {
                YailList yailList2 = (YailList) object;
                if (yailList2.size() == 2) {
                    String string = yailList2.getObject(0).toString();
                    Object object2 = yailList2.getObject(1);
                    ArrayList arrayListNewArrayList = Lists.newArrayList();
                    if (object2 instanceof YailList) {
                        YailList yailList3 = (YailList) object2;
                        for (int i2 = 0; i2 < yailList3.size(); i2++) {
                            arrayListNewArrayList.add(yailList3.getObject(i2).toString());
                        }
                    } else {
                        arrayListNewArrayList.add(object2.toString());
                    }
                    mapNewHashMap.put(string, arrayListNewArrayList);
                } else {
                    throw new InvalidRequestHeadersException(ErrorMessages.ERROR_WEB_REQUEST_HEADER_NOT_TWO_ELEMENTS, i + 1);
                }
            } else {
                throw new InvalidRequestHeadersException(ErrorMessages.ERROR_WEB_REQUEST_HEADER_NOT_LIST, i + 1);
            }
        }
        return mapNewHashMap;
    }

    private CapturedProperties capturePropertyValues(String str) {
        try {
            return new CapturedProperties(this);
        } catch (InvalidRequestHeadersException e) {
            this.form.dispatchErrorOccurredEvent(this, str, e.errorNumber, Integer.valueOf(e.index));
            return null;
        } catch (MalformedURLException unused) {
            this.form.dispatchErrorOccurredEvent(this, str, ErrorMessages.ERROR_WEB_MALFORMED_URL, this.urlString);
            return null;
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public Future<YailList> getDataValue(final YailList yailList) {
        final FutureTask<Void> futureTask = this.lastTask;
        FutureTask futureTask2 = new FutureTask(new Callable<YailList>() { // from class: com.google.appinventor.components.runtime.Web.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public YailList call() throws Exception {
                FutureTask futureTask3 = futureTask;
                if (futureTask3 != null && !futureTask3.isDone() && !futureTask.isCancelled()) {
                    try {
                        futureTask.get();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    } catch (ExecutionException e2) {
                        e2.printStackTrace();
                    }
                }
                return Web.this.getColumns(yailList);
            }
        });
        AsynchUtil.runAsynchronously(futureTask2);
        return futureTask2;
    }

    private void updateColumns(String str, String str2) {
        if (str2.contains("json")) {
            try {
                this.columns = JsonUtil.getColumnsFromJson(str);
            } catch (JSONException unused) {
            }
        } else if (str2.contains("csv") || str2.startsWith("text/")) {
            try {
                YailList yailListFromCsvTable = CsvUtil.fromCsvTable(str);
                this.columns = yailListFromCsvTable;
                this.columns = ChartDataSourceUtil.getTranspose(yailListFromCsvTable);
            } catch (Exception unused2) {
                this.columns = new YailList();
            }
        }
    }

    public YailList getColumn(String str) {
        for (int i = 0; i < this.columns.size(); i++) {
            YailList yailList = (YailList) this.columns.getObject(i);
            if (!yailList.isEmpty() && yailList.getString(0).equals(str)) {
                return yailList;
            }
        }
        return new YailList();
    }

    public YailList getColumns(YailList yailList) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < yailList.size(); i++) {
            arrayList.add(getColumn(yailList.getString(i)));
        }
        return YailList.makeList((List) arrayList);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.add(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(YailList yailList, Object obj) {
        Iterator<DataSourceChangeListener> it = this.dataSourceObservers.iterator();
        while (it.hasNext()) {
            it.next().onDataSourceValueChange(this, null, this.columns);
        }
    }
}

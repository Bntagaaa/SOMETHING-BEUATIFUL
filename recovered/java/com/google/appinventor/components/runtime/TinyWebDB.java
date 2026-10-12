package com.google.appinventor.components.runtime;

import android.os.Handler;
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
import com.google.appinventor.components.runtime.collect.Lists;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.AsyncCallbackPair;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.WebServiceUtil;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.STORAGE, description = "Non-visible component that communicates with a Web service to store and retrieve information.", iconName = "images/tinyWebDB.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class TinyWebDB extends AndroidNonvisibleComponent implements Component {
    private static final String GETVALUE_COMMAND = "getvalue";
    private static final String LOG_TAG = "TinyWebDB";
    private static final String STOREAVALUE_COMMAND = "storeavalue";
    private static final String TAG_PARAMETER = "tag";
    private static final String VALUE_PARAMETER = "value";
    private Handler androidUIHandler;
    private String serviceURL;

    public TinyWebDB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.androidUIHandler = new Handler();
        this.serviceURL = "http://tinywebdb.appinventor.mit.edu/";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The URL of the web service database.")
    public String ServiceURL() {
        return this.serviceURL;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "http://tinywebdb.appinventor.mit.edu", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ServiceURL(String str) {
        this.serviceURL = str;
    }

    @SimpleFunction(description = "Asks the Web service to store the given value under the given tag")
    public void StoreValue(final String str, final Object obj) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.1
            @Override // java.lang.Runnable
            public void run() {
                TinyWebDB.this.postStoreValue(str, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postStoreValue(String str, Object obj) {
        try {
            WebServiceUtil.getInstance().postCommand(this.serviceURL, STOREAVALUE_COMMAND, Lists.newArrayList(new BasicNameValuePair(TAG_PARAMETER, str), new BasicNameValuePair(VALUE_PARAMETER, JsonUtil.getJsonRepresentation(obj))), new AsyncCallbackPair<String>() { // from class: com.google.appinventor.components.runtime.TinyWebDB.2
                @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
                public void onSuccess(String str2) {
                    TinyWebDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TinyWebDB.this.ValueStored();
                        }
                    });
                }

                @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
                public void onFailure(final String str2) {
                    TinyWebDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TinyWebDB.this.WebServiceError(str2);
                        }
                    });
                }
            });
        } catch (JSONException unused) {
            throw new YailRuntimeError("Value failed to convert to JSON.", "JSON Creation Error.");
        }
    }

    @SimpleEvent(description = "Event indicating that a StoreValue server request has succeeded.")
    public void ValueStored() {
        EventDispatcher.dispatchEvent(this, "ValueStored", new Object[0]);
    }

    @SimpleFunction(description = "Sends a request to the Web service to get the value stored under the given tag. The Web service must decide what to return if there is no value stored under the tag. This component accepts whatever is returned.")
    public void GetValue(final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.3
            @Override // java.lang.Runnable
            public void run() {
                TinyWebDB.this.postGetValue(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postGetValue(final String str) {
        WebServiceUtil.getInstance().postCommandReturningArray(this.serviceURL, GETVALUE_COMMAND, Lists.newArrayList(new BasicNameValuePair(TAG_PARAMETER, str)), new AsyncCallbackPair<JSONArray>() { // from class: com.google.appinventor.components.runtime.TinyWebDB.4
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(JSONArray jSONArray) throws JSONException {
                if (jSONArray == null) {
                    TinyWebDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            TinyWebDB.this.WebServiceError("The Web server did not respond to the get value request for the tag " + str + ".");
                        }
                    });
                    return;
                }
                try {
                    final String string = jSONArray.getString(1);
                    String string2 = jSONArray.getString(2);
                    final Object objectFromJson = string2.length() == 0 ? "" : JsonUtil.getObjectFromJson(string2, true);
                    TinyWebDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TinyWebDB.this.GotValue(string, objectFromJson);
                        }
                    });
                } catch (JSONException unused) {
                    TinyWebDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.4.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            TinyWebDB.this.WebServiceError("The Web server returned a garbled value for the tag " + str + ".");
                        }
                    });
                }
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(final String str2) {
                TinyWebDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TinyWebDB.4.4
                    @Override // java.lang.Runnable
                    public void run() {
                        TinyWebDB.this.WebServiceError(str2);
                    }
                });
            }
        });
    }

    @SimpleEvent(description = "Indicates that a GetValue server request has succeeded.")
    public void GotValue(String str, Object obj) {
        EventDispatcher.dispatchEvent(this, "GotValue", str, obj);
    }

    @SimpleEvent
    public void WebServiceError(String str) {
        EventDispatcher.dispatchEvent(this, "WebServiceError", str);
    }
}

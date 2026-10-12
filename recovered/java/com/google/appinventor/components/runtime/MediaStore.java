package com.google.appinventor.components.runtime;

import android.os.Handler;
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
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.AsyncCallbackPair;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Non-visible component that communicates with a Web service and stores media files.", iconName = "images/mediastore.png", nonVisible = true, version = 1)
@UsesLibraries({"httpmime.jar"})
/* loaded from: classes.dex */
public final class MediaStore extends AndroidNonvisibleComponent implements Component {
    private static final String LOG_TAG_COMPONENT = "MediaStore: ";
    private Handler androidUIHandler;
    protected final ComponentContainer componentContainer;
    private String serviceURL;

    public MediaStore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.componentContainer = componentContainer;
        this.androidUIHandler = new Handler();
        this.serviceURL = "http://ai-mediaservice.appspot.com";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ServiceURL() {
        return this.serviceURL;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "http://ai-mediaservice.appspot.com", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ServiceURL(String str) {
        this.serviceURL = str;
    }

    @SimpleFunction
    public void PostMedia(String str) throws FileNotFoundException {
        AsyncCallbackPair<String> asyncCallbackPair = new AsyncCallbackPair<String>() { // from class: com.google.appinventor.components.runtime.MediaStore.1
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(final String str2) {
                MediaStore.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.MediaStore.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaStore.this.MediaStored(str2);
                    }
                });
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(final String str2) {
                MediaStore.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.MediaStore.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaStore.this.WebServiceError(str2);
                    }
                });
            }
        };
        try {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            MultipartEntityBuilder multipartEntityBuilderCreate = MultipartEntityBuilder.create();
            multipartEntityBuilderCreate.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            if (str.split("/")[0].equals("file:")) {
                str = new java.io.File(new URL(str).toURI()).getAbsolutePath();
            }
            multipartEntityBuilderCreate.addPart("file", new FileBody(new java.io.File(str)));
            HttpEntity httpEntityBuild = multipartEntityBuilderCreate.build();
            HttpPost httpPost = new HttpPost(getUploadUrl());
            httpPost.setEntity(httpEntityBuild);
            asyncCallbackPair.onSuccess(EntityUtils.toString(defaultHttpClient.execute(httpPost).getEntity()));
        } catch (Exception e) {
            e.printStackTrace();
            asyncCallbackPair.onFailure(e.getMessage());
        }
    }

    private String getUploadUrl() throws IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.serviceURL).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Niotron");
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "text/plain; charset=utf-8");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @SimpleEvent
    public void MediaStored(String str) {
        EventDispatcher.dispatchEvent(this, "MediaStored", str);
    }

    @SimpleEvent
    public void WebServiceError(String str) {
        EventDispatcher.dispatchEvent(this, "WebServiceError", str);
    }
}

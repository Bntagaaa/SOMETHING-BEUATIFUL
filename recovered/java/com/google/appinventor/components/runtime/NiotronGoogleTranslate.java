package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Handler;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Use this component to translate words and sentences between different languages. This component needs Internet access, as it will request translations to the Google Translate service. Specify the target language in the to target using two letter language codes. So 'hi' will translate from given language to Hindi while 'ru' will translate from given language to Russian. The source language will autometically get detected. So providing just 'hi' will attempt to detect the source language and translate it to Hindi.<br><br>To know more about the supported language and language codes kindly visit cloud.google.com/translate/docs/languages", iconName = "images/niotronGoogleTranslate.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronGoogleTranslate extends AndroidNonvisibleComponent {
    private static String mlanguageCode = null;
    private static String mtext = null;
    private static String response = "debug";
    private static String urlParameters = "";
    private Context context;
    private Handler mainHandler;
    private int responseCode;

    public NiotronGoogleTranslate(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.mainHandler = new Handler();
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Simply set language code to which you wnat to convert given text.")
    public void GetTranslation(String str, String str2) {
        if (str.contains(" ")) {
            mtext = str.replaceAll(" ", "%20");
        } else {
            mtext = str;
        }
        mlanguageCode = str2;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronGoogleTranslate.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    if (!NiotronGoogleTranslate.mtext.isEmpty() && !NiotronGoogleTranslate.mlanguageCode.isEmpty()) {
                        NiotronGoogleTranslate.urlParameters = "text=" + NiotronGoogleTranslate.mtext + "&tlang=" + NiotronGoogleTranslate.mlanguageCode;
                        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL("https://script.google.com/macros/s/AKfycbzpXZ5jiWMhE62niS96KB4AjL9tqboXAUdPBWoqLnWrhjWaUsgB/exec").openConnection();
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                        httpsURLConnection.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.writeBytes(NiotronGoogleTranslate.urlParameters);
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        int responseCode = httpsURLConnection.getResponseCode();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                stringBuffer.append(line);
                            }
                        }
                        bufferedReader.close();
                        NiotronGoogleTranslate.response = stringBuffer.toString();
                        if (responseCode == 200) {
                            NiotronGoogleTranslate.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleTranslate.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronGoogleTranslate.this.GotTranslation(NiotronGoogleTranslate.response);
                                }
                            });
                            return;
                        } else {
                            NiotronGoogleTranslate.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleTranslate.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronGoogleTranslate.this.ErrorOccurred("Response code is not 200");
                                }
                            });
                            return;
                        }
                    }
                    Toast.makeText(NiotronGoogleTranslate.this.context, "Required fields not filled", 0).show();
                } catch (Exception e) {
                    NiotronGoogleTranslate.response = e.toString();
                    NiotronGoogleTranslate.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronGoogleTranslate.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronGoogleTranslate.this.ErrorOccurred(NiotronGoogleTranslate.response);
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered after upload being called")
    public void GotTranslation(String str) {
        EventDispatcher.dispatchEvent(this, "GotTranslation", str);
    }

    @SimpleEvent(description = "Triggered after upload being called")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}

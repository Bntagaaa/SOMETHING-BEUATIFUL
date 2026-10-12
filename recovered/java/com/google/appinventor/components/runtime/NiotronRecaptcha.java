package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.safetynet.SafetyNet;
import com.google.android.gms.safetynet.SafetyNetApi;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONObject;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Recaptcha Component using Safety net", iconName = "images/niotronRecaptcha.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "play-services-safetynet.jar, google-api-client.jar,play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar,play-services-base.aar, play-services-base.jar, json.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronRecaptcha extends AndroidNonvisibleComponent {
    private Activity activity;
    private String apiKey;
    private Context context;
    private String secretKey;

    public NiotronRecaptcha(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.apiKey = "";
        this.secretKey = "";
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty
    public void SecretKey(String str) {
        this.secretKey = str;
    }

    @SimpleFunction
    public void Verify() {
        SafetyNet.getClient(this.context).verifyWithRecaptcha(this.apiKey).addOnSuccessListener(new OnSuccessListener<SafetyNetApi.RecaptchaTokenResponse>() { // from class: com.google.appinventor.components.runtime.NiotronRecaptcha.2
            public void onSuccess(SafetyNetApi.RecaptchaTokenResponse recaptchaTokenResponse) {
                String tokenResult = recaptchaTokenResponse.getTokenResult();
                if (tokenResult.isEmpty()) {
                    return;
                }
                NiotronRecaptcha.this.handleSiteVerify(tokenResult);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronRecaptcha.1
            public void onFailure(Exception exc) {
                NiotronRecaptcha.this.ErrorOccurred(exc.getMessage());
            }
        });
    }

    public void handleSiteVerify(final String str) {
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronRecaptcha.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    URL url = new URL("https://www.google.com/recaptcha/api/siteverify");
                    String str2 = "secret=" + NiotronRecaptcha.this.secretKey + "&response=" + str;
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                    httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                    httpsURLConnection.setDoOutput(true);
                    DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                    dataOutputStream.writeBytes(str2);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            stringBuffer.append(line);
                        } else {
                            bufferedReader.close();
                            final String string = stringBuffer.toString();
                            NiotronRecaptcha.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronRecaptcha.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (new JSONObject(string).getBoolean("success")) {
                                        NiotronRecaptcha.this.VerificationSuccess();
                                    } else {
                                        NiotronRecaptcha.this.VerificationFailed();
                                    }
                                }
                            });
                            return;
                        }
                    }
                } catch (Exception e) {
                    NiotronRecaptcha.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronRecaptcha.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronRecaptcha.this.ErrorOccurred(e.getMessage());
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent
    public void VerificationSuccess() {
        EventDispatcher.dispatchEvent(this, "VerificationSuccess", new Object[0]);
    }

    @SimpleEvent
    public void VerificationFailed() {
        EventDispatcher.dispatchEvent(this, "VerificationFailed", new Object[0]);
    }
}

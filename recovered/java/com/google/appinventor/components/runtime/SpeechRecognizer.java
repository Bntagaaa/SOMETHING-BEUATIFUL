package com.google.appinventor.components.runtime;

import android.content.Intent;
import android.text.TextUtils;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.annotations.UsesQueries;
import com.google.appinventor.components.annotations.androidmanifest.ActionElement;
import com.google.appinventor.components.annotations.androidmanifest.IntentFilterElement;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@UsesPermissions({"android.permission.RECORD_AUDIO", "android.permission.INTERNET"})
@DesignerComponent(category = ComponentCategory.MEDIA, description = "Component for using Voice Recognition to convert from speech to text", iconName = "images/speechRecognizer.png", nonVisible = true, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public class SpeechRecognizer extends AndroidNonvisibleComponent implements Component, OnClearListener, SpeechListener {
    private final ComponentContainer container;
    private boolean havePermission;
    private String language;
    private Intent recognizerIntent;
    private String result;
    private SpeechRecognizerController speechRecognizerController;
    private boolean useLegacy;

    public SpeechRecognizer(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.havePermission = false;
        this.useLegacy = true;
        this.language = "";
        componentContainer.$form().registerForOnClear(this);
        this.container = componentContainer;
        this.result = "";
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.recognizerIntent = intent;
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        this.recognizerIntent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
        UseLegacy(this.useLegacy);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Language() {
        return this.language;
    }

    @SimpleProperty
    public void Language(String str) {
        this.language = str;
        if (TextUtils.isEmpty(str)) {
            this.recognizerIntent.removeExtra("android.speech.extra.LANGUAGE");
        } else {
            this.recognizerIntent.putExtra("android.speech.extra.LANGUAGE", str);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Result() {
        return this.result;
    }

    @SimpleFunction
    public void GetText() {
        if (!this.havePermission) {
            this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.SpeechRecognizer.1
                @Override // java.lang.Runnable
                public void run() {
                    SpeechRecognizer.this.form.askPermission("android.permission.RECORD_AUDIO", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.SpeechRecognizer.1.1
                        @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                        public void HandlePermissionResponse(String str, boolean z) {
                            if (z) {
                                this.havePermission = true;
                                this.GetText();
                            } else {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                SpeechRecognizer.this.form.dispatchPermissionDeniedEvent(this, "GetText", "android.permission.RECORD_AUDIO");
                            }
                        }
                    });
                }
            });
            return;
        }
        BeforeGettingText();
        this.speechRecognizerController.addListener(this);
        this.speechRecognizerController.start();
    }

    @SimpleFunction
    public void Stop() {
        SpeechRecognizerController speechRecognizerController = this.speechRecognizerController;
        if (speechRecognizerController != null) {
            speechRecognizerController.stop();
        }
    }

    @SimpleEvent
    public void BeforeGettingText() {
        EventDispatcher.dispatchEvent(this, "BeforeGettingText", new Object[0]);
    }

    @SimpleEvent
    public void AfterGettingText(String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "AfterGettingText", str, Boolean.valueOf(z));
    }

    @Override // com.google.appinventor.components.runtime.SpeechListener
    public void onPartialResult(String str) {
        this.result = str;
        AfterGettingText(str, true);
    }

    @Override // com.google.appinventor.components.runtime.SpeechListener
    public void onResult(String str) {
        this.result = str;
        AfterGettingText(str, false);
    }

    @Override // com.google.appinventor.components.runtime.SpeechListener
    public void onError(int i) {
        this.form.dispatchErrorOccurredEvent(this, "GetText", i, new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.OnClearListener
    public void onClear() {
        Stop();
        this.speechRecognizerController = null;
        this.recognizerIntent = null;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If true, an app can retain their older behaviour.")
    public boolean UseLegacy() {
        return this.useLegacy;
    }

    @SimpleProperty(description = "If true, a separate dialog is used to recognize speech (the default). If false, speech is recognized in the background and partial results are also provided.")
    @UsesQueries(intents = {@IntentFilterElement(actionElements = {@ActionElement(name = "android.speech.RecognitionService")})})
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseLegacy(boolean z) {
        this.useLegacy = z;
        Stop();
        if (z) {
            this.speechRecognizerController = new IntentBasedSpeechRecognizer(this.container, this.recognizerIntent);
        } else {
            this.speechRecognizerController = new ServiceBasedSpeechRecognizer(this.container, this.recognizerIntent);
        }
    }
}

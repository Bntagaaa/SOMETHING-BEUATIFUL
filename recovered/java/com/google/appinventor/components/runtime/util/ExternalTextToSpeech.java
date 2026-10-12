package com.google.appinventor.components.runtime.util;

import android.content.Intent;
import com.google.appinventor.components.runtime.ActivityResultListener;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.util.ITextToSpeech;
import java.util.Locale;

/* loaded from: classes.dex */
public class ExternalTextToSpeech implements ITextToSpeech, ActivityResultListener {
    private static final String TTS_INTENT = "com.google.tts.makeBagel";
    private final ITextToSpeech.TextToSpeechCallback callback;
    private final ComponentContainer container;
    private int requestCode;

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public boolean isInitialized() {
        return true;
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public int isLanguageAvailable(Locale locale) {
        return -1;
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void onDestroy() {
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void onResume() {
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void onStop() {
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void setPitch(float f) {
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void setSpeechRate(float f) {
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void stop() {
    }

    public ExternalTextToSpeech(ComponentContainer componentContainer, ITextToSpeech.TextToSpeechCallback textToSpeechCallback) {
        this.container = componentContainer;
        this.callback = textToSpeechCallback;
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void speak(String str, Locale locale) {
        Intent intent = new Intent(TTS_INTENT);
        intent.setFlags(131072);
        intent.setFlags(8388608);
        intent.setFlags(1073741824);
        intent.putExtra("message", str);
        intent.putExtra("language", locale.getISO3Language());
        intent.putExtra("country", locale.getISO3Country());
        if (this.requestCode == 0) {
            this.requestCode = this.container.$form().registerForActivityResult(this);
        }
        this.container.$context().startActivityForResult(intent, this.requestCode);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i == this.requestCode && i2 == -1) {
            this.callback.onSuccess();
        } else {
            this.callback.onFailure();
        }
    }
}

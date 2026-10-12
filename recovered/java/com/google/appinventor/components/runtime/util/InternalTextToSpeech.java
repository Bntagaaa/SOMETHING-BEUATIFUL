package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.app.Activity;
import android.os.Handler;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import com.google.appinventor.components.runtime.util.ITextToSpeech;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public class InternalTextToSpeech implements ITextToSpeech {
    private static final String LOG_TAG = "InternalTTS";
    private final Activity activity;
    private final ITextToSpeech.TextToSpeechCallback callback;
    private volatile boolean isTtsInitialized;
    private TextToSpeech tts;
    private Handler mHandler = new Handler();
    private int nextUtteranceId = 1;
    private int ttsRetryDelay = 500;
    private int ttsMaxRetries = 20;

    public InternalTextToSpeech(Activity activity, ITextToSpeech.TextToSpeechCallback textToSpeechCallback) {
        this.activity = activity;
        this.callback = textToSpeechCallback;
        initializeTts();
    }

    private void initializeTts() {
        if (this.tts == null) {
            Log.d(LOG_TAG, "INTERNAL TTS is reinitializing");
            this.tts = new TextToSpeech(this.activity, new TextToSpeech.OnInitListener() { // from class: com.google.appinventor.components.runtime.util.InternalTextToSpeech.1
                @Override // android.speech.tts.TextToSpeech.OnInitListener
                public void onInit(int i) {
                    if (i == 0) {
                        InternalTextToSpeech.this.isTtsInitialized = true;
                    }
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void speak(String str, Locale locale) {
        Log.d(LOG_TAG, "Internal TTS got speak");
        speak(str, locale, 0);
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void stop() {
        TextToSpeech textToSpeech = this.tts;
        if (textToSpeech != null) {
            textToSpeech.stop();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public boolean isInitialized() {
        return this.isTtsInitialized;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void speak(final String str, final Locale locale, final int i) {
        a.B("InternalTTS speak called, message = ", str, LOG_TAG);
        int i2 = this.ttsMaxRetries;
        if (i > i2) {
            Log.d(LOG_TAG, "max number of speak retries exceeded (" + i2 + "): speak will fail");
            this.callback.onFailure();
            return;
        }
        if (!this.isTtsInitialized) {
            Log.d(LOG_TAG, "speak called when TTS not initialized");
            this.mHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.util.InternalTextToSpeech.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(InternalTextToSpeech.LOG_TAG, "delaying call to speak.  Retries is: " + i + " Message is: " + str);
                    InternalTextToSpeech.this.speak(str, locale, i + 1);
                }
            }, this.ttsRetryDelay);
            return;
        }
        Log.d(LOG_TAG, "TTS initialized after " + i + " retries.");
        this.tts.setLanguage(locale);
        this.tts.setOnUtteranceCompletedListener(new TextToSpeech.OnUtteranceCompletedListener() { // from class: com.google.appinventor.components.runtime.util.InternalTextToSpeech.2
            @Override // android.speech.tts.TextToSpeech.OnUtteranceCompletedListener
            public void onUtteranceCompleted(String str2) {
                InternalTextToSpeech.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.InternalTextToSpeech.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InternalTextToSpeech.this.callback.onSuccess();
                    }
                });
            }
        });
        HashMap<String, String> map = new HashMap<>();
        int i3 = this.nextUtteranceId;
        this.nextUtteranceId = i3 + 1;
        map.put("utteranceId", Integer.toString(i3));
        if (this.tts.speak(str, 0, map) == -1) {
            Log.d(LOG_TAG, "speak called and tts.speak result was an error");
            this.callback.onFailure();
        }
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void onStop() {
        Log.d(LOG_TAG, "Internal TTS got onStop");
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void onDestroy() {
        Log.d(LOG_TAG, "Internal TTS got onDestroy");
        TextToSpeech textToSpeech = this.tts;
        if (textToSpeech != null) {
            textToSpeech.shutdown();
            this.isTtsInitialized = false;
            this.tts = null;
        }
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void onResume() {
        Log.d(LOG_TAG, "Internal TTS got onResume");
        initializeTts();
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void setPitch(float f) {
        this.tts.setPitch(f);
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public void setSpeechRate(float f) {
        this.tts.setSpeechRate(f);
    }

    @Override // com.google.appinventor.components.runtime.util.ITextToSpeech
    public int isLanguageAvailable(Locale locale) {
        return this.tts.isLanguageAvailable(locale);
    }
}

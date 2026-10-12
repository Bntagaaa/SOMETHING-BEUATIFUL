package com.google.appinventor.components.runtime;

import android.content.Intent;

/* loaded from: classes.dex */
public class IntentBasedSpeechRecognizer extends SpeechRecognizerController implements ActivityResultListener {
    private ComponentContainer container;
    private Intent recognizerIntent;
    private int requestCode;
    private String result;

    @Override // com.google.appinventor.components.runtime.SpeechRecognizerController
    public void stop() {
    }

    public IntentBasedSpeechRecognizer(ComponentContainer componentContainer, Intent intent) {
        this.container = componentContainer;
        this.recognizerIntent = intent;
    }

    @Override // com.google.appinventor.components.runtime.SpeechRecognizerController
    public void start() {
        if (this.requestCode == 0) {
            this.requestCode = this.container.$form().registerForActivityResult(this);
        }
        this.container.$context().startActivityForResult(this.recognizerIntent, this.requestCode);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i == this.requestCode && i2 == -1) {
            if (intent.hasExtra("android.speech.extra.RESULTS")) {
                this.result = intent.getExtras().getStringArrayList("android.speech.extra.RESULTS").get(0);
            } else {
                this.result = "";
            }
            this.speechListener.onResult(this.result);
        }
    }
}

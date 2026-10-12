package com.google.appinventor.components.runtime;

/* loaded from: classes.dex */
public abstract class SpeechRecognizerController {
    SpeechListener speechListener;

    public void start() {
    }

    public void stop() {
    }

    public void addListener(SpeechListener speechListener) {
        this.speechListener = speechListener;
    }
}

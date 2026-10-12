package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Shell to execute commands", iconName = "images/niotronShell.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronShell extends AndroidNonvisibleComponent {
    private Activity activity;
    private ComponentContainer container;
    private Context context;

    public NiotronShell(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleFunction
    public void Run(final String str) {
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronShell.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws InterruptedException, IOException {
                try {
                    Process processExec = Runtime.getRuntime().exec(str);
                    processExec.waitFor();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream()));
                    String str2 = "";
                    String str3 = "";
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        str3 = str3 + line;
                    }
                    while (true) {
                        String line2 = bufferedReader2.readLine();
                        if (line2 != null) {
                            str2 = str2 + line2;
                        } else {
                            NiotronShell.this.GotResult(str3, str2);
                            return;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }.start();
    }

    @SimpleEvent
    public void GotResult(final String str, final String str2) {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronShell.2
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(NiotronShell.this, "GotResult", str, str2);
            }
        });
    }
}

package com.rdev.lockkeyboard;

import android.app.Activity;
import android.content.Intent;
import android.provider.Settings;
import android.widget.Toast;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import gnu.expr.Declaration;

/* loaded from: classes2.dex */
public class RdevKeyoardLock extends AndroidNonvisibleComponent {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f5450a;

    public RdevKeyoardLock(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.f5450a = componentContainer.$context();
    }

    public boolean CheckAndForceSimpleKeyboard() {
        Activity activity = this.f5450a;
        boolean zContains = Settings.Secure.getString(activity.getContentResolver(), "default_input_method").contains("rkr.simplekeyboard.inputmethod");
        if (!zContains) {
            Toast.makeText(activity, "Gunakan Simple Keyboard untuk melanjutkan!", 1).show();
            Intent intent = new Intent("android.settings.INPUT_METHOD_SETTINGS");
            intent.setFlags(Declaration.IS_DYNAMIC);
            activity.startActivity(intent);
        }
        return zContains;
    }
}

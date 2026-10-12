package com.google.zxing.client.android.result;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ParsedResultType;

/* loaded from: classes.dex */
public abstract class ResultHandler {
    public static final int MAX_BUTTON_COUNT = 4;

    /* renamed from: a, reason: collision with root package name */
    public final ParsedResult f5140a;

    public boolean areContentsSecure() {
        return false;
    }

    public abstract int getButtonCount();

    public abstract int getButtonText(int i);

    public abstract int getDisplayTitle();

    public abstract void handleButtonPress(int i);

    public class a implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"));
            throw null;
        }
    }

    public ResultHandler(Activity activity, ParsedResult parsedResult) {
        this.f5140a = parsedResult;
    }

    public ParsedResult getResult() {
        return this.f5140a;
    }

    public CharSequence getDisplayContents() {
        return this.f5140a.getDisplayResult().replace("\r", "");
    }

    public final ParsedResultType getType() {
        return this.f5140a.getType();
    }
}

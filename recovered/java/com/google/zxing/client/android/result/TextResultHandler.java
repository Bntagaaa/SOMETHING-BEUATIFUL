package com.google.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;

/* loaded from: classes.dex */
public final class TextResultHandler extends ResultHandler {
    @Override // com.google.zxing.client.android.result.ResultHandler
    public int getButtonCount() {
        return 0;
    }

    @Override // com.google.zxing.client.android.result.ResultHandler
    public int getButtonText(int i) {
        return 0;
    }

    @Override // com.google.zxing.client.android.result.ResultHandler
    public int getDisplayTitle() {
        return 0;
    }

    @Override // com.google.zxing.client.android.result.ResultHandler
    public void handleButtonPress(int i) {
    }

    public TextResultHandler(Activity activity, ParsedResult parsedResult, Result result) {
        super(activity, parsedResult);
    }
}

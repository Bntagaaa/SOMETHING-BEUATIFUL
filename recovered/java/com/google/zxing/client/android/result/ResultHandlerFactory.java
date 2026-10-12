package com.google.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.Result;
import com.google.zxing.client.result.ResultParser;

/* loaded from: classes.dex */
public final class ResultHandlerFactory {
    private ResultHandlerFactory() {
    }

    public static ResultHandler makeResultHandler(Activity activity, Result result) {
        return new TextResultHandler(activity, ResultParser.parseResult(result), result);
    }
}

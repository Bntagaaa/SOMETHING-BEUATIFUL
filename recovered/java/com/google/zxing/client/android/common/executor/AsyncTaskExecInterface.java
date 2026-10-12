package com.google.zxing.client.android.common.executor;

import android.os.AsyncTask;

/* loaded from: classes.dex */
public interface AsyncTaskExecInterface {
    <T> void execute(AsyncTask<T, ?, ?> asyncTask, T... tArr);
}

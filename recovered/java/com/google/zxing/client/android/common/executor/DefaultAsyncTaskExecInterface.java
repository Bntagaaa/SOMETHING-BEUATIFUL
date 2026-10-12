package com.google.zxing.client.android.common.executor;

import android.os.AsyncTask;

/* loaded from: classes.dex */
public final class DefaultAsyncTaskExecInterface implements AsyncTaskExecInterface {
    @Override // com.google.zxing.client.android.common.executor.AsyncTaskExecInterface
    public <T> void execute(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        asyncTask.execute(tArr);
    }
}

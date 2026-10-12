package com.google.zxing.client.android.common.executor;

import android.os.AsyncTask;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class HoneycombAsyncTaskExecInterface implements AsyncTaskExecInterface {
    @Override // com.google.zxing.client.android.common.executor.AsyncTaskExecInterface
    public <T> void execute(AsyncTask<T, ?, ?> asyncTask, T... tArr) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        try {
            asyncTask.getClass().getMethod("executeOnExecutor", new Class[0]).invoke(asyncTask, AsyncTask.class.getField("THREAD_POOL_EXECUTOR"), tArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

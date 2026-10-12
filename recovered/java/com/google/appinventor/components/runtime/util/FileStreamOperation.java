package com.google.appinventor.components.runtime.util;

import android.util.Log;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public class FileStreamOperation<T extends Closeable> extends SingleFileOperation {
    private static final String LOG_TAG = "FileStreamOperation";

    public FileStreamOperation(Form form, Component component, String str, String str2, FileScope fileScope, FileAccessMode fileAccessMode, boolean z) {
        super(form, component, str, str2, fileScope, fileAccessMode, z);
    }

    public FileStreamOperation(Form form, Component component, String str, ScopedFile scopedFile, FileAccessMode fileAccessMode, boolean z) {
        super(form, component, str, scopedFile, fileAccessMode, z);
    }

    @Override // com.google.appinventor.components.runtime.util.SingleFileOperation
    public void processFile(ScopedFile scopedFile) throws IOException {
        Closeable closeableOpenFile = null;
        try {
            closeableOpenFile = openFile();
            if (process(closeableOpenFile)) {
            }
        } catch (IOException e) {
            e.printStackTrace();
            onError(e);
        } finally {
            IOUtils.closeQuietly(this.component.getClass().getSimpleName(), closeableOpenFile);
        }
    }

    public void onError(IOException iOException) {
        Log.e(LOG_TAG, "IO error in file operation", iOException);
    }

    public boolean process(T t) throws IOException {
        throw new UnsupportedOperationException("Subclasses must implement FileOperation#process.");
    }

    public T openFile() throws IOException {
        throw new UnsupportedOperationException("Subclasses must implement FileOperation#openFile.");
    }
}

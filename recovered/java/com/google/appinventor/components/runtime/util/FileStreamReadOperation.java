package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public abstract class FileStreamReadOperation extends FileReadOperation {
    private static final String LOG_TAG = "FileStreamReadOperation";

    public abstract boolean process(String str);

    public FileStreamReadOperation(Form form, Component component, String str, String str2, FileScope fileScope, boolean z) {
        super(form, component, str, str2, fileScope, z);
    }

    @Override // com.google.appinventor.components.runtime.util.FileReadOperation, com.google.appinventor.components.runtime.util.FileStreamOperation
    public boolean process(InputStream inputStream) throws Throwable {
        InputStreamReader inputStreamReader = null;
        try {
            InputStreamReader inputStreamReader2 = new InputStreamReader(inputStream);
            try {
                boolean zProcess = process(inputStreamReader2);
                if (zProcess) {
                    IOUtils.closeQuietly(LOG_TAG, inputStreamReader2);
                }
                return zProcess;
            } catch (Throwable th) {
                th = th;
                inputStreamReader = inputStreamReader2;
                IOUtils.closeQuietly(LOG_TAG, inputStreamReader);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean process(InputStreamReader inputStreamReader) throws IOException {
        return process(IOUtils.readReader(inputStreamReader));
    }
}

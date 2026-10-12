package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

/* loaded from: classes.dex */
public abstract class FileStreamWriteOperation extends FileWriteOperation {
    private static final String LOG_TAG = "FileStreamWriteOperation";

    public abstract boolean process(OutputStreamWriter outputStreamWriter) throws IOException;

    public FileStreamWriteOperation(Form form, Component component, String str, String str2, FileScope fileScope, boolean z, boolean z2) {
        super(form, component, str, str2, fileScope, z, z2);
    }

    @Override // com.google.appinventor.components.runtime.util.FileWriteOperation, com.google.appinventor.components.runtime.util.FileStreamOperation
    public final boolean process(OutputStream outputStream) throws Throwable {
        OutputStreamWriter outputStreamWriter = null;
        try {
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(outputStream);
            try {
                boolean zProcess = process(outputStreamWriter2);
                if (zProcess) {
                    IOUtils.closeQuietly(LOG_TAG, outputStreamWriter2);
                }
                return zProcess;
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = outputStreamWriter2;
                IOUtils.closeQuietly(LOG_TAG, outputStreamWriter);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}

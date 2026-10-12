package com.google.appinventor.components.runtime.util;

import android.net.Uri;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;

/* loaded from: classes.dex */
public class FileWriteOperation extends FileStreamOperation<OutputStream> {
    @Override // com.google.appinventor.components.runtime.util.FileStreamOperation
    public boolean process(OutputStream outputStream) throws IOException {
        return true;
    }

    public FileWriteOperation(Form form, Component component, String str, String str2, FileScope fileScope, boolean z, boolean z2) {
        super(form, component, str, str2, fileScope, z ? FileAccessMode.APPEND : FileAccessMode.WRITE, z2);
        if (str2.startsWith("//")) {
            throw new IllegalArgumentException("Cannot perform a write operation on an asset");
        }
    }

    public FileWriteOperation(Form form, Component component, String str, ScopedFile scopedFile, boolean z, boolean z2) {
        super(form, component, str, scopedFile, z ? FileAccessMode.APPEND : FileAccessMode.WRITE, z2);
        if (scopedFile.getScope() == FileScope.Asset) {
            throw new IllegalArgumentException("Cannot perform a write operation on an asset");
        }
    }

    @Override // com.google.appinventor.components.runtime.util.FileStreamOperation
    public OutputStream openFile() throws IOException {
        if (this.fileName.startsWith("content:")) {
            return this.form.getContentResolver().openOutputStream(Uri.parse(this.fileName), this.accessMode == FileAccessMode.WRITE ? "wt" : "wa");
        }
        String strResolveFileName = FileUtil.resolveFileName(this.form, this.fileName, this.scope);
        if (strResolveFileName.startsWith("file://") || strResolveFileName.startsWith("file:")) {
            strResolveFileName = URI.create(strResolveFileName).getPath();
        }
        File file = new File(strResolveFileName);
        IOUtils.mkdirs(file);
        return new FileOutputStream(file, FileAccessMode.APPEND.equals(this.accessMode));
    }
}

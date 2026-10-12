package com.google.appinventor.components.runtime.util;

import android.net.Uri;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class FileReadOperation extends FileStreamOperation<InputStream> {
    public boolean process(byte[] bArr) {
        return true;
    }

    public FileReadOperation(Form form, Component component, String str, String str2, FileScope fileScope, boolean z) {
        super(form, component, str, str2, fileScope, FileAccessMode.READ, z);
    }

    @Override // com.google.appinventor.components.runtime.util.FileStreamOperation
    public boolean process(InputStream inputStream) throws IOException {
        return process(IOUtils.readStream(inputStream));
    }

    @Override // com.google.appinventor.components.runtime.util.FileStreamOperation
    public InputStream openFile() throws IOException {
        if (this.scopedFile.getFileName().startsWith("content:")) {
            return this.form.getContentResolver().openInputStream(Uri.parse(this.scopedFile.getFileName()));
        }
        return FileUtil.openForReading(this.form, this.scopedFile);
    }
}

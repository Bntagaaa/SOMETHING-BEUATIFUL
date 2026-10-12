package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.io.File;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class SingleFileOperation extends FileOperation {
    private static final String LOG_TAG = "FileOperation";
    protected final FileAccessMode accessMode;
    protected final File file;
    protected final String fileName;
    protected final String resolvedPath;
    protected final FileScope scope;
    protected final ScopedFile scopedFile;

    public abstract void processFile(ScopedFile scopedFile);

    public SingleFileOperation(Form form, Component component, String str, String str2, FileScope fileScope, FileAccessMode fileAccessMode, boolean z) {
        super(form, component, str, z);
        this.scope = fileScope;
        this.accessMode = fileAccessMode;
        this.fileName = str2;
        ScopedFile scopedFile = new ScopedFile(fileScope, str2);
        this.scopedFile = scopedFile;
        if (str2.startsWith("content:")) {
            this.file = null;
            this.resolvedPath = str2;
        } else {
            File fileResolve = scopedFile.resolve(form);
            this.file = fileResolve;
            this.resolvedPath = fileResolve.getAbsolutePath();
        }
        a.B("resolvedPath = ", this.resolvedPath, LOG_TAG);
    }

    public SingleFileOperation(Form form, Component component, String str, ScopedFile scopedFile, FileAccessMode fileAccessMode, boolean z) {
        super(form, component, str, z);
        this.scope = scopedFile.getScope();
        this.accessMode = fileAccessMode;
        String fileName = scopedFile.getFileName();
        this.fileName = fileName;
        this.scopedFile = scopedFile;
        if (fileName.startsWith("content:")) {
            this.file = null;
            this.resolvedPath = fileName;
        } else {
            File fileResolve = scopedFile.resolve(form);
            this.file = fileResolve;
            this.resolvedPath = fileResolve.getAbsolutePath();
        }
        a.B("resolvedPath = ", this.resolvedPath, LOG_TAG);
    }

    public SingleFileOperation(Form form, Component component, String str, String str2, FileScope fileScope, FileAccessMode fileAccessMode) {
        this(form, component, str, str2, fileScope, fileAccessMode, true);
    }

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public List<String> getPermissions() {
        String neededPermission = FileUtil.getNeededPermission(this.form, this.resolvedPath, this.accessMode);
        if (neededPermission == null) {
            return Collections.EMPTY_LIST;
        }
        return Collections.singletonList(neededPermission);
    }

    public final File getFile() {
        return this.file;
    }

    public final ScopedFile getScopedFile() {
        return this.scopedFile;
    }

    public final boolean isAsset() {
        return this.fileName.startsWith("//") || this.scope == FileScope.Asset;
    }

    public final FileScope getScope() {
        return this.scope;
    }

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public void performOperation() {
        processFile(this.scopedFile);
    }

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public boolean needsExternalStorage() {
        return FileUtil.isExternalStorageUri(this.form, this.resolvedPath);
    }

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public final boolean needsPermission() {
        return FileUtil.needsPermission(this.form, this.resolvedPath);
    }
}

package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class CompositeFileOperation extends FileOperation implements Iterable<FileOperand> {
    private final List<FileOperand> files;
    private boolean needsExternalStorage;
    private final Set<String> permissions;

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public abstract void performOperation();

    public static class FileOperand {
        private final String file;
        private final FileAccessMode mode;

        public FileOperand(String str, FileAccessMode fileAccessMode) {
            this.file = str;
            this.mode = fileAccessMode;
        }

        public String getFile() {
            return this.file;
        }

        public FileAccessMode getMode() {
            return this.mode;
        }
    }

    public CompositeFileOperation(Form form, Component component, String str, boolean z) {
        super(form, component, str, z);
        this.files = new ArrayList();
        this.permissions = new HashSet();
        this.needsExternalStorage = false;
    }

    public void addFile(FileScope fileScope, String str, FileAccessMode fileAccessMode) {
        FileOperand fileOperand = new FileOperand(FileUtil.resolveFileName(this.form, str, fileScope), fileAccessMode);
        this.files.add(fileOperand);
        this.permissions.add(FileUtil.getNeededPermission(this.form, str, fileAccessMode));
        this.needsExternalStorage |= FileUtil.isExternalStorageUri(this.form, fileOperand.file);
    }

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public List<String> getPermissions() {
        return new ArrayList(this.permissions);
    }

    @Override // com.google.appinventor.components.runtime.util.FileOperation
    public boolean needsExternalStorage() {
        return this.needsExternalStorage;
    }

    @Override // java.lang.Iterable
    public Iterator<FileOperand> iterator() {
        return this.files.iterator();
    }
}

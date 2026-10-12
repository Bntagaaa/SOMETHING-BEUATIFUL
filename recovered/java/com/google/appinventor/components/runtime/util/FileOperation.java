package com.google.appinventor.components.runtime.util;

import android.os.Build;
import android.util.Log;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.PermissionResultHandler;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class FileOperation implements Runnable, PermissionResultHandler {
    private static final String LOG_TAG = "FileOperation";
    protected final boolean async;
    protected final Component component;
    protected final Form form;
    protected final String method;
    protected volatile boolean askedForPermission = false;
    protected volatile boolean hasPermission = false;

    public interface FileInvocation {
        void call(ScopedFile[] scopedFileArr) throws IOException;
    }

    public abstract List<String> getPermissions();

    public abstract boolean needsExternalStorage();

    public abstract boolean needsPermission();

    public abstract void performOperation();

    public FileOperation(Form form, Component component, String str, boolean z) {
        this.form = form;
        this.component = component;
        this.method = str;
        this.async = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<String> neededPermissions = getNeededPermissions();
        if (AsynchUtil.isUiThread()) {
            if (needsExternalStorage()) {
                FileUtil.checkExternalStorageWriteable();
            }
            if (!neededPermissions.isEmpty()) {
                if (!this.hasPermission) {
                    if (this.askedForPermission) {
                        this.form.dispatchPermissionDeniedEvent(this.component, this.method, neededPermissions.get(0));
                        this.askedForPermission = false;
                    } else {
                        this.askedForPermission = true;
                        this.form.askPermission(new BulkPermissionRequest(this.component, this.method, (String[]) neededPermissions.toArray(new String[0])) { // from class: com.google.appinventor.components.runtime.util.FileOperation.1
                            @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                            public void onGranted() {
                                FileOperation.this.hasPermission = true;
                                FileOperation.this.run();
                            }
                        });
                    }
                    throw new StopBlocksExecution();
                }
                if (this.async) {
                    AsynchUtil.runAsynchronously(this);
                    return;
                } else {
                    performOperation();
                    return;
                }
            }
            this.hasPermission = true;
            if (this.async) {
                AsynchUtil.runAsynchronously(this);
                return;
            } else {
                performOperation();
                return;
            }
        }
        if (!neededPermissions.isEmpty()) {
            this.hasPermission = false;
            this.askedForPermission = false;
            this.form.runOnUiThread(this);
            return;
        }
        performOperation();
    }

    @Override // com.google.appinventor.components.runtime.PermissionResultHandler
    public void HandlePermissionResponse(String str, boolean z) {
        this.askedForPermission = true;
        this.hasPermission = z;
        run();
    }

    public void reportError(final int i, final Object... objArr) {
        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.FileOperation.2
            @Override // java.lang.Runnable
            public void run() {
                FileOperation fileOperation = FileOperation.this;
                fileOperation.form.dispatchErrorOccurredEvent(fileOperation.component, fileOperation.method, i, objArr);
            }
        });
    }

    private List<String> getNeededPermissions() {
        if (this.hasPermission) {
            return Collections.EMPTY_LIST;
        }
        List<String> permissions = getPermissions();
        HashSet hashSet = new HashSet();
        for (String str : permissions) {
            if (this.form.isDeniedPermission(str)) {
                hashSet.add(str);
            }
        }
        return new ArrayList(hashSet);
    }

    public static class Builder {
        private Component component;
        private Form form;
        private String method;
        private final LinkedHashMap<ScopedFile, FileAccessMode> scopedFiles = new LinkedHashMap<>();
        private final Set<String> neededPermissions = new HashSet();
        private final List<FileInvocation> commands = new ArrayList();
        private boolean async = true;
        private boolean needsExternalStorage = false;
        private boolean askPermission = true;

        public Builder() {
        }

        public Builder(Form form, Component component, String str) {
            this.form = form;
            this.component = component;
            this.method = str;
        }

        public Builder setForm(Form form) {
            this.form = form;
            return this;
        }

        public Builder setComponent(Component component) {
            this.component = component;
            return this;
        }

        public Builder setMethod(String str) {
            this.method = str;
            return this;
        }

        public Builder addFile(FileScope fileScope, String str, FileAccessMode fileAccessMode) {
            ScopedFile scopedFile = new ScopedFile(fileScope, str);
            if (scopedFile.getScope() == FileScope.Asset && fileAccessMode != FileAccessMode.READ) {
                this.form.dispatchErrorOccurredEvent(this.component, this.method, ErrorMessages.ERROR_CANNOT_WRITE_ASSET, scopedFile.getFileName());
                throw new StopBlocksExecution();
            }
            this.scopedFiles.put(scopedFile, fileAccessMode);
            String strResolveFileName = FileUtil.resolveFileName(this.form, str, fileScope);
            Log.d(FileOperation.LOG_TAG, this.method + " resolved " + strResolveFileName);
            this.needsExternalStorage = this.needsExternalStorage | FileUtil.needsPermission(this.form, strResolveFileName);
            String neededPermission = FileUtil.getNeededPermission(this.form, strResolveFileName, fileAccessMode);
            if (neededPermission != null) {
                this.neededPermissions.add(neededPermission);
            }
            if (Build.VERSION.SDK_INT >= 33 && scopedFile.getScope() == FileScope.Shared && fileAccessMode == FileAccessMode.READ) {
                this.neededPermissions.remove("android.permission.READ_EXTERNAL_STORAGE");
                this.neededPermissions.add("android.permission.READ_MEDIA_AUDIO");
                this.neededPermissions.add("android.permission.READ_MEDIA_IMAGES");
                this.neededPermissions.add("android.permission.READ_MEDIA_VIDEO");
            }
            return this;
        }

        public Builder addCommand(FileInvocation fileInvocation) {
            this.commands.add(fileInvocation);
            return this;
        }

        public Builder setAsynchronous(boolean z) {
            this.async = z;
            return this;
        }

        public Builder setAskPermission(boolean z) {
            this.askPermission = z;
            return this;
        }

        public FileOperation build() {
            return new FileOperation(this.form, this.component, this.method, this.async) { // from class: com.google.appinventor.components.runtime.util.FileOperation.Builder.1
                @Override // com.google.appinventor.components.runtime.util.FileOperation
                public List<String> getPermissions() {
                    return new ArrayList(Builder.this.neededPermissions);
                }

                @Override // com.google.appinventor.components.runtime.util.FileOperation
                public void performOperation() {
                    if (Builder.this.askPermission && !Builder.this.neededPermissions.isEmpty()) {
                        Iterator it = Builder.this.neededPermissions.iterator();
                        while (it.hasNext()) {
                            if (!this.form.isDeniedPermission((String) it.next())) {
                                it.remove();
                            }
                        }
                        if (needsPermission()) {
                            Log.d(FileOperation.LOG_TAG, this.method + " need permissions: " + Builder.this.neededPermissions);
                            this.form.askPermission(new BulkPermissionRequest(this.component, this.method, (String[]) Builder.this.neededPermissions.toArray(new String[0])) { // from class: com.google.appinventor.components.runtime.util.FileOperation.Builder.1.1
                                @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                                public void onGranted() {
                                }
                            });
                            throw new StopBlocksExecution();
                        }
                    }
                    ScopedFile[] scopedFileArr = (ScopedFile[]) Builder.this.scopedFiles.keySet().toArray(new ScopedFile[0]);
                    Iterator it2 = Builder.this.commands.iterator();
                    while (it2.hasNext()) {
                        try {
                            ((FileInvocation) it2.next()).call(scopedFileArr);
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }

                @Override // com.google.appinventor.components.runtime.util.FileOperation
                public boolean needsPermission() {
                    return !Builder.this.neededPermissions.isEmpty();
                }

                @Override // com.google.appinventor.components.runtime.util.FileOperation
                public boolean needsExternalStorage() {
                    return Builder.this.needsExternalStorage;
                }
            };
        }
    }
}

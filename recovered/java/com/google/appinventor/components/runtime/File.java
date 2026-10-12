package com.google.appinventor.components.runtime;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.Continuation;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileAccessMode;
import com.google.appinventor.components.runtime.util.FileOperation;
import com.google.appinventor.components.runtime.util.FileStreamWriteOperation;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.FileWriteOperation;
import com.google.appinventor.components.runtime.util.IOUtils;
import com.google.appinventor.components.runtime.util.ScopedFile;
import com.google.appinventor.components.runtime.util.SingleFileOperation;
import com.google.appinventor.components.runtime.util.Synchronizer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@DesignerComponent(category = ComponentCategory.STORAGE, description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to a public directory for debugging. Use the More information link to read more about how the File component uses paths and scopes to manage access to files.", iconName = "images/file.png", nonVisible = true, version = 4)
@SimpleObject
@SuppressLint({"InlinedApi", "SdCardPath"})
/* loaded from: classes.dex */
public class File extends FileBase implements Component {
    private static final String LOG_TAG = "FileComponent";

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @UsesPermissions({"android.permission.READ_EXTERNAL_STORAGE"})
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ReadPermission(boolean z) {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @UsesPermissions({"android.permission.WRITE_EXTERNAL_STORAGE"})
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void WritePermission(boolean z) {
    }

    public File(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleProperty
    public void Scope(FileScope fileScope) {
        this.scope = fileScope;
    }

    @SimpleProperty
    public FileScope Scope() {
        return this.scope;
    }

    @SimpleFunction
    public void MakeDirectory(FileScope fileScope, String str, final Continuation<Boolean> continuation) {
        if (fileScope == FileScope.Asset) {
            this.form.dispatchErrorOccurredEvent(this, "MakeDirectory", ErrorMessages.ERROR_CANNOT_MAKE_DIRECTORY, str);
        } else {
            new SingleFileOperation(this.form, this, "MakeDirectory", str, fileScope, FileAccessMode.WRITE, false) { // from class: com.google.appinventor.components.runtime.File.1
                @Override // com.google.appinventor.components.runtime.util.SingleFileOperation
                public void processFile(ScopedFile scopedFile) {
                    java.io.File fileResolve = scopedFile.resolve(this.form);
                    if (fileResolve.exists()) {
                        if (fileResolve.isDirectory()) {
                            onSuccess();
                            return;
                        } else {
                            reportError(ErrorMessages.ERROR_FILE_EXISTS_AT_PATH, fileResolve.getAbsolutePath());
                            return;
                        }
                    }
                    if (fileResolve.mkdirs()) {
                        onSuccess();
                    } else {
                        reportError(ErrorMessages.ERROR_CANNOT_MAKE_DIRECTORY, fileResolve.getAbsolutePath());
                    }
                }

                public void onSuccess() {
                    this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.File.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            continuation.call(Boolean.TRUE);
                        }
                    });
                }
            }.run();
        }
    }

    @SimpleFunction
    public void RemoveDirectory(FileScope fileScope, String str, final boolean z, Continuation<Boolean> continuation) {
        if (fileScope == FileScope.Asset) {
            this.form.dispatchErrorOccurredEvent(this, "RemoveDirectory", ErrorMessages.ERROR_CANNOT_REMOVE_DIRECTORY, str);
            return;
        }
        final Synchronizer synchronizer = new Synchronizer();
        new FileOperation.Builder(this.form, this, "RemoveDirectory").addFile(fileScope, str, FileAccessMode.WRITE).addCommand(new FileOperation.FileInvocation() { // from class: com.google.appinventor.components.runtime.File.2
            @Override // com.google.appinventor.components.runtime.util.FileOperation.FileInvocation
            public void call(ScopedFile[] scopedFileArr) {
                try {
                    synchronizer.wakeup(Boolean.valueOf(FileUtil.removeDirectory(scopedFileArr[0].resolve(File.this.form), z)));
                } catch (Exception e) {
                    synchronizer.caught(e);
                }
            }
        }).build().run();
        AsynchUtil.finish(synchronizer, continuation);
    }

    @SimpleFunction
    public void ListDirectory(FileScope fileScope, String str, Continuation<List<String>> continuation) {
        if (fileScope == FileScope.Asset && !this.form.isRepl()) {
            try {
                continuation.call(FileUtil.listDirectory(this.form, new ScopedFile(fileScope, str)));
                return;
            } catch (IOException unused) {
                this.form.dispatchErrorOccurredEvent(this, "ListDirectory", ErrorMessages.ERROR_CANNOT_LIST_DIRECTORY, str);
                return;
            }
        }
        if (fileScope == FileScope.Shared && str.startsWith("content:")) {
            DocumentFile[] documentFileArrListFiles = DocumentFile.fromTreeUri(this.form, Uri.parse(str)).listFiles();
            ArrayList arrayList = new ArrayList();
            for (DocumentFile documentFile : documentFileArrListFiles) {
                arrayList.add(documentFile.getName());
            }
            continuation.call(arrayList);
            return;
        }
        if (!str.contains("/")) {
            str = str.concat("/");
        }
        final Synchronizer synchronizer = new Synchronizer();
        new FileOperation.Builder(this.form, this, "ListDirectory").setAskPermission(true).setAsynchronous(true).addFile(fileScope, str, FileAccessMode.READ).addCommand(new FileOperation.FileInvocation() { // from class: com.google.appinventor.components.runtime.File.3
            @Override // com.google.appinventor.components.runtime.util.FileOperation.FileInvocation
            public void call(ScopedFile[] scopedFileArr) throws IOException {
                Log.d(File.LOG_TAG, "Listing directory " + scopedFileArr[0]);
                List<String> listListDirectory = FileUtil.listDirectory(File.this.form, scopedFileArr[0]);
                if (listListDirectory == null) {
                    listListDirectory = Collections.EMPTY_LIST;
                }
                synchronizer.wakeup(listListDirectory);
            }
        }).build().run();
        AsynchUtil.finish(synchronizer, continuation);
    }

    @SimpleFunction
    public void IsDirectory(FileScope fileScope, String str, Continuation<Boolean> continuation) throws IOException {
        if (fileScope == FileScope.Asset && !this.form.isRepl()) {
            try {
                String[] list = this.form.getAssets().list(str);
                Log.d(LOG_TAG, "contents of " + str + " = " + Arrays.toString(list));
                continuation.call(Boolean.valueOf(list != null && list.length > 0));
                return;
            } catch (IOException unused) {
                this.form.dispatchErrorOccurredEvent(this, "IsDirectory", ErrorMessages.ERROR_DIRECTORY_DOES_NOT_EXIST, str);
                return;
            }
        }
        final Synchronizer synchronizer = new Synchronizer();
        new FileOperation.Builder(this.form, this, "IsDirectory").addFile(fileScope, str, FileAccessMode.READ).addCommand(new FileOperation.FileInvocation() { // from class: com.google.appinventor.components.runtime.File.4
            @Override // com.google.appinventor.components.runtime.util.FileOperation.FileInvocation
            public void call(ScopedFile[] scopedFileArr) {
                Log.d(File.LOG_TAG, "IsDirectory " + scopedFileArr[0]);
                synchronizer.wakeup(Boolean.valueOf(scopedFileArr[0].resolve(File.this.form).isDirectory()));
            }
        }).build().run();
        AsynchUtil.finish(synchronizer, continuation);
    }

    @SimpleFunction
    public void CopyFile(FileScope fileScope, String str, FileScope fileScope2, String str2, Continuation<Boolean> continuation) {
        if (fileScope2 == FileScope.Asset) {
            this.form.dispatchErrorOccurredEvent(this, "CopyFile", ErrorMessages.ERROR_CANNOT_WRITE_ASSET, str2);
            throw new StopBlocksExecution();
        }
        final Synchronizer synchronizer = new Synchronizer();
        new FileOperation.Builder(this.form, this, "CopyFile").addFile(fileScope, str, FileAccessMode.READ).addFile(fileScope2, str2, FileAccessMode.WRITE).addCommand(new FileOperation.FileInvocation() { // from class: com.google.appinventor.components.runtime.File.5
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.appinventor.components.runtime.util.FileOperation.FileInvocation
            public void call(ScopedFile[] scopedFileArr) throws Throwable {
                OutputStream outputStream;
                if (!scopedFileArr[1].getFileName().startsWith("content:")) {
                    java.io.File parentFile = scopedFileArr[1].resolve(File.this.form).getParentFile();
                    if (!parentFile.exists() && !parentFile.mkdirs()) {
                        File file = File.this;
                        file.form.dispatchErrorOccurredEvent(file, "CopyFile", ErrorMessages.ERROR_CANNOT_MAKE_DIRECTORY, parentFile.getAbsolutePath());
                        synchronizer.caught(new IOException());
                        return;
                    }
                }
                OutputStream outputStreamOpenForWriting = null;
                try {
                    InputStream inputStreamOpenForReading = FileUtil.openForReading(File.this.form, scopedFileArr[0]);
                    try {
                        outputStreamOpenForWriting = FileUtil.openForWriting(File.this.form, scopedFileArr[1]);
                        FileUtil.copy(inputStreamOpenForReading, outputStreamOpenForWriting);
                        IOUtils.closeQuietly(File.LOG_TAG, inputStreamOpenForReading);
                        IOUtils.closeQuietly(File.LOG_TAG, outputStreamOpenForWriting);
                        synchronizer.wakeup(Boolean.TRUE);
                    } catch (IOException e) {
                        e = e;
                        outputStream = outputStreamOpenForWriting;
                        outputStreamOpenForWriting = inputStreamOpenForReading;
                        try {
                            Log.w(File.LOG_TAG, "Unable to copy file", e);
                            File file2 = File.this;
                            file2.form.dispatchErrorOccurredEvent(file2, "CopyFile", ErrorMessages.ERROR_CANNOT_COPY_MEDIA, scopedFileArr[0].getFileName());
                            synchronizer.caught(e);
                            IOUtils.closeQuietly(File.LOG_TAG, outputStreamOpenForWriting);
                            IOUtils.closeQuietly(File.LOG_TAG, outputStream);
                        } catch (Throwable th) {
                            th = th;
                            IOUtils.closeQuietly(File.LOG_TAG, outputStreamOpenForWriting);
                            IOUtils.closeQuietly(File.LOG_TAG, outputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        outputStream = outputStreamOpenForWriting;
                        outputStreamOpenForWriting = inputStreamOpenForReading;
                        IOUtils.closeQuietly(File.LOG_TAG, outputStreamOpenForWriting);
                        IOUtils.closeQuietly(File.LOG_TAG, outputStream);
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                    outputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    outputStream = null;
                }
            }
        }).build().run();
        AsynchUtil.finish(synchronizer, continuation);
    }

    @SimpleFunction
    public void MoveFile(FileScope fileScope, String str, FileScope fileScope2, String str2, Continuation<Boolean> continuation) {
        FileScope fileScope3 = FileScope.Asset;
        if (fileScope == fileScope3) {
            this.form.dispatchErrorOccurredEvent(this, "MoveFile", ErrorMessages.ERROR_CANNOT_DELETE_ASSET, str);
        } else {
            if (fileScope2 == fileScope3) {
                this.form.dispatchErrorOccurredEvent(this, "MoveFile", ErrorMessages.ERROR_CANNOT_WRITE_ASSET, str2);
                return;
            }
            final Synchronizer synchronizer = new Synchronizer();
            new FileOperation.Builder(this.form, this, "MoveFile").addFile(fileScope, str, FileAccessMode.READ).addFile(fileScope2, str2, FileAccessMode.WRITE).addCommand(new FileOperation.FileInvocation() { // from class: com.google.appinventor.components.runtime.File.6
                @Override // com.google.appinventor.components.runtime.util.FileOperation.FileInvocation
                public void call(ScopedFile[] scopedFileArr) {
                    try {
                        synchronizer.wakeup(Boolean.valueOf(FileUtil.moveFile(File.this.form, scopedFileArr[0], scopedFileArr[1])));
                    } catch (IOException unused) {
                        synchronizer.wakeup(Boolean.FALSE);
                    }
                }
            }).build().run();
            AsynchUtil.finish(synchronizer, continuation);
        }
    }

    @SimpleFunction
    public void Exists(FileScope fileScope, String str, Continuation<Boolean> continuation) {
        final Synchronizer synchronizer = new Synchronizer();
        new FileOperation.Builder(this.form, this, "Exists").addFile(fileScope, str, FileAccessMode.READ).addCommand(new FileOperation.FileInvocation() { // from class: com.google.appinventor.components.runtime.File.7
            @Override // com.google.appinventor.components.runtime.util.FileOperation.FileInvocation
            public void call(ScopedFile[] scopedFileArr) throws IOException {
                boolean z = false;
                if (scopedFileArr[0].getScope() == FileScope.Asset && !File.this.form.isRepl()) {
                    try {
                        String[] list = File.this.form.getAssets().list("");
                        if (list != null) {
                            int length = list.length;
                            int i = 0;
                            while (true) {
                                if (i >= length) {
                                    break;
                                }
                                if (list[i].equals(scopedFileArr[0].getFileName())) {
                                    z = true;
                                    break;
                                }
                                i++;
                            }
                        }
                    } catch (IOException unused) {
                    }
                    synchronizer.wakeup(Boolean.valueOf(z));
                    return;
                }
                synchronizer.wakeup(Boolean.valueOf(scopedFileArr[0].resolve(File.this.form).exists()));
            }
        }).build().run();
        AsynchUtil.finish(synchronizer, continuation);
    }

    @SimpleFunction
    public String MakeFullPath(FileScope fileScope, String str) {
        return FileUtil.resolveFileName(this.form, str, fileScope);
    }

    @SimpleFunction(description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block.")
    public void SaveFile(String str, String str2) throws FileUtil.FileException {
        write(str2, "SaveFile", str, false);
    }

    @SimpleFunction(description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written.")
    public void AppendToFile(String str, String str2) throws FileUtil.FileException {
        write(str2, "AppendToFile", str, true);
    }

    @SimpleFunction(description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion.")
    public void ReadFrom(String str) {
        readFromFile(str);
    }

    @SimpleFunction(description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted.")
    public void Delete(String str) {
        if (str.startsWith("//")) {
            this.form.dispatchErrorOccurredEvent(this, "Delete", ErrorMessages.ERROR_CANNOT_DELETE_ASSET, str);
        } else {
            try {
                new FileWriteOperation(this.form, this, "Delete", str, this.scope, false, true) { // from class: com.google.appinventor.components.runtime.File.8
                    @Override // com.google.appinventor.components.runtime.util.FileStreamOperation, com.google.appinventor.components.runtime.util.SingleFileOperation
                    public void processFile(ScopedFile scopedFile) {
                        java.io.File fileResolve = scopedFile.resolve(this.form);
                        if (!fileResolve.exists() || fileResolve.delete()) {
                            return;
                        }
                        this.form.dispatchErrorOccurredEvent(File.this, "Delete", ErrorMessages.ERROR_CANNOT_DELETE_FILE, this.fileName);
                    }
                }.run();
            } catch (StopBlocksExecution unused) {
            }
        }
    }

    private void write(final String str, String str2, final String str3, boolean z) throws FileUtil.FileException {
        if (str.startsWith("//")) {
            this.form.dispatchErrorOccurredEvent(this, str2, ErrorMessages.ERROR_CANNOT_WRITE_ASSET, str);
            return;
        }
        if (str.startsWith("/")) {
            FileUtil.checkExternalStorageWriteable();
        }
        try {
            new FileStreamWriteOperation(this.form, this, str2, str, this.scope, z, true) { // from class: com.google.appinventor.components.runtime.File.9
                @Override // com.google.appinventor.components.runtime.util.FileStreamOperation, com.google.appinventor.components.runtime.util.SingleFileOperation
                public void processFile(ScopedFile scopedFile) throws IOException {
                    boolean zCreateNewFile;
                    java.io.File fileResolve = scopedFile.resolve(this.form);
                    if (!fileResolve.exists()) {
                        try {
                            IOUtils.mkdirs(fileResolve);
                            zCreateNewFile = fileResolve.createNewFile();
                        } catch (IOException unused) {
                            _COROUTINE.a.w("Unable to create file ", fileResolve.getAbsolutePath(), File.LOG_TAG);
                            zCreateNewFile = false;
                        }
                        if (!zCreateNewFile) {
                            this.form.dispatchErrorOccurredEvent(File.this, this.method, ErrorMessages.ERROR_CANNOT_CREATE_FILE, fileResolve.getAbsolutePath());
                            return;
                        }
                    }
                    super.processFile(scopedFile);
                }

                @Override // com.google.appinventor.components.runtime.util.FileStreamWriteOperation
                public boolean process(OutputStreamWriter outputStreamWriter) throws IOException {
                    outputStreamWriter.write(str3);
                    outputStreamWriter.flush();
                    this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.File.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                            File.this.AfterFileSaved(str);
                        }
                    });
                    return true;
                }

                @Override // com.google.appinventor.components.runtime.util.FileStreamOperation
                public void onError(IOException iOException) {
                    String absolutePath;
                    super.onError(iOException);
                    if (getFile() == null) {
                        absolutePath = getScopedFile().getFileName();
                    } else {
                        absolutePath = getFile().getAbsolutePath();
                    }
                    this.form.dispatchErrorOccurredEvent(File.this, this.method, ErrorMessages.ERROR_CANNOT_WRITE_TO_FILE, absolutePath);
                }
            }.run();
        } catch (StopBlocksExecution unused) {
        }
    }

    @SimpleEvent(description = "Event indicating that the contents from the file have been read.")
    public void GotText(String str) {
        EventDispatcher.dispatchEvent(this, "GotText", str);
    }

    @SimpleEvent(description = "Event indicating that the contents of the file have been written.")
    public void AfterFileSaved(String str) {
        EventDispatcher.dispatchEvent(this, "AfterFileSaved", str);
    }

    @Override // com.google.appinventor.components.runtime.FileBase
    public void afterRead(final String str) {
        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.File.10
            @Override // java.lang.Runnable
            public void run() {
                File.this.GotText(str);
            }
        });
    }
}

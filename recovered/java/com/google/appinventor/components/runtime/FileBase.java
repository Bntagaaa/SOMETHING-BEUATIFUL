package com.google.appinventor.components.runtime;

import android.util.Log;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileStreamReadOperation;
import com.google.appinventor.components.runtime.util.IOUtils;
import java.io.FileNotFoundException;
import java.io.IOException;

@SimpleObject
/* loaded from: classes.dex */
public abstract class FileBase extends AndroidNonvisibleComponent implements Component {
    protected static final String LOG_TAG = "FileComponent";
    protected FileScope scope;

    public abstract void afterRead(String str);

    public FileBase(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        FileScope fileScope = FileScope.App;
        this.scope = fileScope;
        DefaultScope(fileScope);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(defaultValue = "App", editorType = PropertyTypeConstants.PROPERTY_TYPE_FILESCOPE)
    public void DefaultScope(FileScope fileScope) {
        this.scope = fileScope;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @Deprecated
    public void LegacyMode(boolean z) {
        this.scope = z ? FileScope.Legacy : FileScope.App;
    }

    @SimpleProperty(description = "Allows app to access files from the root of the external storage directory (legacy mode).")
    @Deprecated
    public boolean LegacyMode() {
        return this.scope == FileScope.Legacy;
    }

    public void readFromFile(String str) {
        try {
            new FileStreamReadOperation(this.form, this, "ReadFrom", str, this.scope, true) { // from class: com.google.appinventor.components.runtime.FileBase.1
                @Override // com.google.appinventor.components.runtime.util.FileStreamReadOperation
                public boolean process(String str2) {
                    FileBase.this.afterRead(IOUtils.normalizeNewLines(str2));
                    return true;
                }

                @Override // com.google.appinventor.components.runtime.util.FileStreamOperation
                public void onError(IOException iOException) {
                    if (iOException instanceof FileNotFoundException) {
                        Log.e(FileBase.LOG_TAG, "FileNotFoundException", iOException);
                        this.form.dispatchErrorOccurredEvent(FileBase.this, "ReadFrom", ErrorMessages.ERROR_CANNOT_FIND_FILE, this.fileName);
                    } else {
                        Log.e(FileBase.LOG_TAG, "IOException", iOException);
                        this.form.dispatchErrorOccurredEvent(FileBase.this, "ReadFrom", ErrorMessages.ERROR_CANNOT_READ_FILE, this.fileName);
                    }
                }
            }.run();
        } catch (StopBlocksExecution unused) {
        }
    }
}

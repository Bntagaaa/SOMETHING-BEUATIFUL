package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.FileOutputStream;

@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Component to take a screenshot.", iconName = "images/screenshot.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class NiotronScreenshot extends AndroidNonvisibleComponent implements Component {
    private static final String LOG_TAG = "NiotronScreenshot";
    public static final int VERSION = 1;
    private final Activity activity;
    private ComponentContainer container;
    private Context context;
    private String fileName;
    private String folderPath;

    public NiotronScreenshot(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.fileName = "screenshot.jpg";
        this.folderPath = "";
        Log.d(LOG_TAG, "Screenshot Created");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "filename of the screenshot to be taken")
    public String FileName() {
        return this.fileName;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void FolderPath(String str) {
        this.folderPath = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "foldername of the screenshot to be taken")
    public String FolderPath() {
        return this.folderPath;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "screenshot.jpg", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void FileName(String str) {
        this.fileName = str;
    }

    @SimpleFunction(description = "Take a screenshot.")
    public void TakeScreenshot() {
        String str;
        String str2;
        try {
            if (this.folderPath.isEmpty()) {
                str = "/storage/emulated/0/Android/data/" + this.context.getPackageName() + java.io.File.separator + this.fileName;
            } else {
                str = "/storage/emulated/0/" + this.folderPath + java.io.File.separator + this.fileName;
            }
            View rootView = this.activity.getWindow().getDecorView().getRootView();
            rootView.setDrawingCacheEnabled(true);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(rootView.getDrawingCache());
            rootView.setDrawingCacheEnabled(false);
            java.io.File file = new java.io.File(str);
            if (this.folderPath.isEmpty()) {
                str2 = "/storage/emulated/0/Android/data/" + this.context.getPackageName();
            } else {
                str2 = "/storage/emulated/0/" + this.folderPath;
            }
            java.io.File file2 = new java.io.File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            Log.d(LOG_TAG, "screenshot taken: " + file.toString());
            AfterScreenshot(file.toString());
        } catch (Throwable th) {
            Log.e(LOG_TAG, th.getMessage(), th);
            th.printStackTrace();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DisableCapture(boolean z) {
        if (z) {
            this.activity.getWindow().addFlags(8192);
        } else {
            this.activity.getWindow().clearFlags(8192);
        }
    }

    @SimpleEvent(description = "Return image.")
    public void AfterScreenshot(String str) {
        EventDispatcher.dispatchEvent(this, "AfterScreenshot", str);
    }
}

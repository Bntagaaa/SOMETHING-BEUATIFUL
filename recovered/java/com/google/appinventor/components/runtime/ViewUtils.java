package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import java.io.FileOutputStream;
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Tools for Visible Components", iconName = "images/viewUtils.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class ViewUtils extends AndroidNonvisibleComponent {
    private Context context;

    public ViewUtils(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleFunction
    public void SaveComponentAsImage(AndroidViewComponent androidViewComponent, String str, String str2) throws IOException {
        java.io.File fileSaveBitMap = saveBitMap(this.context, androidViewComponent.getView(), str, str2);
        if (fileSaveBitMap != null) {
            ComponentSavedAsImage(fileSaveBitMap.getAbsolutePath());
        } else {
            ErrorOccurred("Oops! Image could not be saved.");
        }
    }

    private java.io.File saveBitMap(Context context, View view, String str, String str2) throws IOException {
        java.io.File externalStorageDirectory = Environment.getExternalStorageDirectory();
        String str3 = java.io.File.separator;
        java.io.File file = new java.io.File(externalStorageDirectory + str3 + str2);
        if (!file.exists() && !file.mkdir()) {
            ErrorOccurred("Failed to Create Location Folder");
            return null;
        }
        java.io.File file2 = new java.io.File(_COROUTINE.a.j(file.getPath(), str3, str));
        if (file2.exists()) {
            file2.delete();
        }
        Bitmap bitmapFromView = getBitmapFromView(view);
        try {
            file2.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmapFromView.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
            ErrorOccurred("There was an issue saving the image.");
        }
        scanGallery(context, file2.getAbsolutePath());
        return file2;
    }

    private Bitmap getBitmapFromView(View view) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
        Drawable background = view.getBackground();
        if (background != null) {
            background.draw(canvas);
        } else {
            canvas.drawColor(-1);
        }
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    private void scanGallery(Context context, String str) {
        try {
            MediaScannerConnection.scanFile(context, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.google.appinventor.components.runtime.ViewUtils.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str2, Uri uri) {
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SimpleEvent
    public void ComponentSavedAsImage(String str) {
        EventDispatcher.dispatchEvent(this, "ComponentSavedAsImage", str);
    }

    @SimpleEvent
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}

package com.google.appinventor.components.runtime;

import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.QUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;

@DesignerComponent(category = ComponentCategory.MEDIA, description = "A special-purpose button. When the user taps an image picker, the device's image gallery appears, and the user can choose an image. After an image is picked, it is saved, and the <code>Selected</code> property will be the name of the file where the image is stored. In order to not fill up storage, a maximum of 10 images will be stored.  Picking more images will delete previous images, in order from oldest to newest.", version = 6)
@SimpleObject
/* loaded from: classes.dex */
public class ImagePicker extends Picker implements ActivityResultListener {
    private static final String FILE_PREFIX = "picked_image";
    private static final String LOG_TAG = "ImagePicker";
    private static final String imagePickerDirectoryName = "/Pictures/_app_inventor_image_picker";
    private static final int maxSavedFiles = 10;
    private boolean havePermission;
    private String selectionSavedImage;
    private String selectionURI;

    public ImagePicker(ComponentContainer componentContainer) {
        super(componentContainer);
        this.selectionSavedImage = "";
        this.havePermission = false;
        HeihPadding("10,10,0,0");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Path to the file containing the image that was selected.")
    public String Selection() {
        return this.selectionSavedImage;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "10,10,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
        super.HeihPadding(str);
    }

    @Override // com.google.appinventor.components.runtime.Picker
    public Intent getIntent() {
        return new Intent("android.intent.action.PICK", MediaStore.Images.Media.INTERNAL_CONTENT_URI);
    }

    @Override // com.google.appinventor.components.runtime.Picker, com.google.appinventor.components.runtime.ButtonBase
    public void click() {
        if (!this.havePermission && FileUtil.needsWritePermission(((Picker) this).container.$form().DefaultFileScope())) {
            ((Picker) this).container.$form().askPermission("android.permission.WRITE_EXTERNAL_STORAGE", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.ImagePicker.1
                @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                public void HandlePermissionResponse(String str, boolean z) {
                    if (!z) {
                        ((Picker) ImagePicker.this).container.$form().dispatchPermissionDeniedEvent(ImagePicker.this, "Click", str);
                    } else {
                        ImagePicker.this.havePermission = true;
                        ImagePicker.this.click();
                    }
                }
            });
        } else {
            super.click();
        }
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) throws IOException {
        if (i == this.requestCode && i2 == -1) {
            Uri data = intent.getData();
            String string = data.toString();
            this.selectionURI = string;
            _COROUTINE.a.C("selectionURI = ", string, LOG_TAG);
            String strI = _COROUTINE.a.i(".", MimeTypeMap.getSingleton().getExtensionFromMimeType(((Picker) this).container.$context().getContentResolver().getType(data)));
            _COROUTINE.a.C("extension = ", strI, LOG_TAG);
            saveSelectedImageToExternalStorage(strI);
            AfterPicking();
        }
    }

    private void saveSelectedImageToExternalStorage(String str) throws IOException {
        this.selectionSavedImage = "";
        try {
            java.io.File fileCopyMediaToTempFile = MediaUtil.copyMediaToTempFile(((Picker) this).container.$form(), this.selectionURI);
            _COROUTINE.a.C("temp file path is: ", fileCopyMediaToTempFile.getPath(), LOG_TAG);
            copyToExternalStorageAndDeleteSource(fileCopyMediaToTempFile, str);
        } catch (IOException e) {
            _COROUTINE.a.C("copyMediaToTempFile failed: ", e.getMessage(), LOG_TAG);
            ((Picker) this).container.$form().dispatchErrorOccurredEvent(this, LOG_TAG, ErrorMessages.ERROR_CANNOT_COPY_MEDIA, e.getMessage());
        }
    }

    private void copyToExternalStorageAndDeleteSource(java.io.File file, String str) throws IOException {
        java.io.File file2 = new java.io.File(_COROUTINE.a.z(QUtil.getExternalStoragePath(((Picker) this).container.$form()), imagePickerDirectoryName));
        java.io.File fileCreateTempFile = null;
        try {
            file2.mkdirs();
            fileCreateTempFile = java.io.File.createTempFile(FILE_PREFIX, str, file2);
            String path = fileCreateTempFile.getPath();
            this.selectionSavedImage = path;
            Log.i(LOG_TAG, "saved file path is: " + path);
            FileUtil.copyFile(file.getAbsolutePath(), fileCreateTempFile.getAbsolutePath());
            Log.i(LOG_TAG, "Image was copied to " + this.selectionSavedImage);
        } catch (IOException e) {
            String str2 = "destination is " + this.selectionSavedImage + ": error is " + e.getMessage();
            _COROUTINE.a.C("copyFile failed. ", str2, LOG_TAG);
            ((Picker) this).container.$form().dispatchErrorOccurredEvent(this, "SaveImage", ErrorMessages.ERROR_CANNOT_SAVE_IMAGE, str2);
            this.selectionSavedImage = "";
            fileCreateTempFile.delete();
        }
        file.delete();
        trimDirectory(10, file2);
    }

    private void trimDirectory(int i, java.io.File file) {
        java.io.File[] fileArrListFiles = file.listFiles();
        Arrays.sort(fileArrListFiles, new Comparator<java.io.File>() { // from class: com.google.appinventor.components.runtime.ImagePicker.2
            @Override // java.util.Comparator
            public int compare(java.io.File file2, java.io.File file3) {
                return Long.valueOf(file2.lastModified()).compareTo(Long.valueOf(file3.lastModified()));
            }
        });
        int length = fileArrListFiles.length - i;
        for (int i2 = 0; i2 < length; i2++) {
            fileArrListFiles[i2].delete();
        }
    }
}

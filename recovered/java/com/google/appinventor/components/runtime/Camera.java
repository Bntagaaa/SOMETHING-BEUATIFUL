package com.google.appinventor.components.runtime;

import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.BulkPermissionRequest;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.NougatUtil;
import com.google.appinventor.components.runtime.util.ScopedFile;
import java.net.URI;

@UsesPermissions({"android.permission.CAMERA"})
@DesignerComponent(category = ComponentCategory.MEDIA, description = "A component to take a picture using the device's camera. After the picture is taken, the name of the file on the phone containing the picture is available as an argument to the AfterPicture event. The file name can be used, for example, to set the Picture property of an Image component.", iconName = "images/camera.png", nonVisible = true, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public class Camera extends AndroidNonvisibleComponent implements ActivityResultListener, Component {
    private static final String CAMERA_INTENT = "android.media.action.IMAGE_CAPTURE";
    private static final String CAMERA_OUTPUT = "output";
    private final ComponentContainer container;
    private boolean havePermission;
    private Uri imageFile;
    private int requestCode;
    private boolean useFront;

    public Camera(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.havePermission = false;
        this.container = componentContainer;
        UseFront(false);
    }

    public void Initialize() {
        this.havePermission = !this.form.isDeniedPermission("android.permission.CAMERA");
        if (FileUtil.needsWritePermission(this.form.DefaultFileScope())) {
            this.havePermission &= !this.form.isDeniedPermission("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @Deprecated
    public boolean UseFront() {
        return this.useFront;
    }

    @SimpleProperty(description = "Specifies whether the front-facing camera should be used (when available). If the device does not have a front-facing camera, this option will be ignored and the camera will open normally.")
    @Deprecated
    public void UseFront(boolean z) {
        this.useFront = z;
    }

    @SimpleFunction
    public void TakePicture() {
        String[] strArr;
        ScopedFile scopedPictureFile = FileUtil.getScopedPictureFile(this.form, "jpg");
        String str = "TakePicture";
        if (!this.havePermission) {
            if (FileUtil.needsWritePermission(scopedPictureFile)) {
                strArr = new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"};
            } else {
                strArr = new String[]{"android.permission.CAMERA"};
            }
            this.form.askPermission(new BulkPermissionRequest(this, str, strArr) { // from class: com.google.appinventor.components.runtime.Camera.1
                @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                public void onGranted() {
                    Camera.this.havePermission = true;
                    Camera.this.TakePicture();
                }
            });
            return;
        }
        String externalStorageState = Environment.getExternalStorageState();
        if (!FileUtil.needsExternalStorage(this.form, scopedPictureFile) || "mounted".equals(externalStorageState)) {
            Log.i("CameraComponent", "External storage is available and writable");
            capturePicture(scopedPictureFile);
        } else if ("mounted_ro".equals(externalStorageState)) {
            this.form.dispatchErrorOccurredEvent(this, "TakePicture", ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_READONLY, new Object[0]);
        } else {
            this.form.dispatchErrorOccurredEvent(this, "TakePicture", ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_NOT_AVAILABLE, new Object[0]);
        }
    }

    private void capturePicture(ScopedFile scopedFile) {
        Uri packageUri;
        java.io.File file = new java.io.File(URI.create(FileUtil.resolveFileName(this.form, scopedFile.getFileName(), scopedFile.getScope())));
        java.io.File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        this.imageFile = Uri.fromFile(file);
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", this.imageFile.getPath());
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("title", this.imageFile.getLastPathSegment());
        if (this.requestCode == 0) {
            this.requestCode = this.form.registerForActivityResult(this);
        }
        if (Build.VERSION.SDK_INT < 24) {
            packageUri = this.container.$context().getContentResolver().insert(MediaStore.Images.Media.INTERNAL_CONTENT_URI, contentValues);
        } else {
            packageUri = NougatUtil.getPackageUri(this.form, file);
        }
        Intent intent = new Intent(CAMERA_INTENT);
        intent.putExtra(CAMERA_OUTPUT, packageUri);
        if (this.useFront) {
            intent.putExtra("android.intent.extras.CAMERA_FACING", 1);
        }
        this.container.$context().startActivityForResult(intent, this.requestCode);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        Log.i("CameraComponent", "Returning result. Request code = " + i + ", result code = " + i2);
        if (i == this.requestCode && i2 == -1) {
            java.io.File file = new java.io.File(this.imageFile.getPath());
            if (file.length() != 0) {
                scanFileToAdd(file);
                AfterPicture(this.imageFile.toString());
                return;
            }
            deleteFile(this.imageFile);
            if (intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                Log.i("CameraComponent", "Calling Camera.AfterPicture with image path " + data.toString());
                AfterPicture(data.toString());
                return;
            }
            Log.i("CameraComponent", "Couldn't find an image file from the Camera result");
            this.form.dispatchErrorOccurredEvent(this, "TakePicture", ErrorMessages.ERROR_CAMERA_NO_IMAGE_RETURNED, new Object[0]);
            return;
        }
        deleteFile(this.imageFile);
    }

    private void scanFileToAdd(java.io.File file) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(NougatUtil.getPackageUri(this.form, file));
        this.container.$context().getApplicationContext().sendBroadcast(intent);
    }

    private void deleteFile(Uri uri) {
        try {
            if (new java.io.File(uri.getPath()).delete()) {
                Log.i("CameraComponent", "Deleted file " + uri.toString());
                return;
            }
            Log.i("CameraComponent", "Could not delete file " + uri.toString());
        } catch (SecurityException unused) {
            _COROUTINE.a.C("Got security exception trying to delete file ", uri.toString(), "CameraComponent");
        }
    }

    @SimpleEvent
    public void AfterPicture(String str) {
        EventDispatcher.dispatchEvent(this, "AfterPicture", str);
    }
}

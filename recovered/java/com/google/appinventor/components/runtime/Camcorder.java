package com.google.appinventor.components.runtime;

import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;

@UsesPermissions({"android.permission.CAMERA"})
@DesignerComponent(category = ComponentCategory.MEDIA, description = "A component to record a video using the device's camcorder.After the video is recorded, the name of the file on the phone containing the clip is available as an argument to the AfterRecording event. The file name can be used, for example, to set the source property of a VideoPlayer component.", iconName = "images/camcorder.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Camcorder extends AndroidNonvisibleComponent implements ActivityResultListener, Component {
    private static final String CAMCORDER_INTENT = "android.media.action.VIDEO_CAPTURE";
    private final ComponentContainer container;
    private boolean havePermission;
    private int requestCode;

    public Camcorder(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.havePermission = false;
        this.container = componentContainer;
    }

    public void Initialize() {
        this.havePermission = !this.form.isDeniedPermission("android.permission.CAMERA");
        if (FileUtil.needsWritePermission(this.form.DefaultFileScope())) {
            this.havePermission &= !this.form.isDeniedPermission("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    @SimpleFunction
    public void RecordVideo() {
        String externalStorageState = Environment.getExternalStorageState();
        if (!this.havePermission) {
            this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Camcorder.1
                @Override // java.lang.Runnable
                public void run() {
                    Camcorder.this.form.askPermission("android.permission.CAMERA", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.Camcorder.1.1
                        @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                        public void HandlePermissionResponse(String str, boolean z) {
                            if (z) {
                                this.havePermission = true;
                                this.RecordVideo();
                            } else {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                Camcorder.this.form.dispatchPermissionDeniedEvent(this, "RecordVideo", "android.permission.CAMERA");
                            }
                        }
                    });
                }
            });
            return;
        }
        if ("mounted".equals(externalStorageState)) {
            Log.i("CamcorderComponent", "External storage is available and writable");
            if (this.requestCode == 0) {
                this.requestCode = this.form.registerForActivityResult(this);
            }
            this.container.$context().startActivityForResult(new Intent(CAMCORDER_INTENT), this.requestCode);
            return;
        }
        if ("mounted_ro".equals(externalStorageState)) {
            this.form.dispatchErrorOccurredEvent(this, "RecordVideo", ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_READONLY, new Object[0]);
        } else {
            this.form.dispatchErrorOccurredEvent(this, "RecordVideo", ErrorMessages.ERROR_MEDIA_EXTERNAL_STORAGE_NOT_AVAILABLE, new Object[0]);
        }
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        Log.i("CamcorderComponent", "Returning result. Request code = " + i + ", result code = " + i2);
        if (i == this.requestCode && i2 == -1) {
            if (intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                Log.i("CamcorderComponent", "Calling Camcorder.AfterPicture with clip path " + data.toString());
                AfterRecording(data.toString());
                return;
            }
            Log.i("CamcorderComponent", "Couldn't find a clip file from the Camcorder result");
            this.form.dispatchErrorOccurredEvent(this, "TakeVideo", ErrorMessages.ERROR_CAMCORDER_NO_CLIP_RETURNED, new Object[0]);
            return;
        }
        Log.i("CamcorderComponent", "No clip filed rerturn; request failed");
        this.form.dispatchErrorOccurredEvent(this, "TakeVideo", ErrorMessages.ERROR_CAMCORDER_NO_CLIP_RETURNED, new Object[0]);
    }

    private void deleteFile(Uri uri) {
        try {
            if (new java.io.File(uri.getPath()).delete()) {
                Log.i("CamcorderComponent", "Deleted file " + uri.toString());
                return;
            }
            Log.i("CamcorderComponent", "Could not delete file " + uri.toString());
        } catch (SecurityException unused) {
            _COROUTINE.a.C("Got security exception trying to delete file ", uri.toString(), "CamcorderComponent");
        }
    }

    @SimpleEvent
    public void AfterRecording(String str) {
        EventDispatcher.dispatchEvent(this, "AfterRecording", str);
    }
}

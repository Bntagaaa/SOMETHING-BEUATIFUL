package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.cameraview.CameraView;
import com.google.android.cameraview.CameraViewImpl;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.FileOutputStream;
import java.io.IOException;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.CAMERA")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Niotron Camera View displays a preview of the camera with frame data.", iconName = "images/niotronCameraView.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "cameraviewplus-0.9.5.aar, cameraviewplus-0.9.5.jar")
/* loaded from: classes.dex */
public final class NiotronCameraView extends AndroidViewComponent {
    private Activity activity;
    private boolean autoFocusEnabled;
    private int cameraFacing;
    private CameraView cameraView;
    private FrameLayout cameraViewContainer;
    private Context context;
    private int flashMode;
    private int frameRate;
    private long lastTime;
    public String savePath;
    private boolean zoomEnabled;

    @SimpleFunction(description = "Sets the Frame Data into a Image Component")
    @Deprecated
    public void SetFrameDataToImage(String str, Object obj) {
    }

    public NiotronCameraView(ComponentContainer componentContainer) {
        super(componentContainer);
        this.autoFocusEnabled = true;
        this.zoomEnabled = true;
        this.flashMode = 3;
        this.cameraFacing = 1;
        this.frameRate = 33;
        this.lastTime = 0L;
        this.savePath = "/storage/emulated/0/image.jpg";
        this.activity = componentContainer.$context();
        this.context = componentContainer.$context();
        this.cameraViewContainer = new FrameLayout(this.activity);
        CameraView cameraView = new CameraView(this.context);
        this.cameraView = cameraView;
        cameraView.setAutoFocus(this.autoFocusEnabled);
        this.cameraView.setZoomEnabled(this.zoomEnabled);
        this.cameraView.setFlash(this.flashMode);
        this.cameraView.setFacing(this.cameraFacing);
        this.cameraView.setOnPictureTakenListener(new CameraViewImpl.OnPictureTakenListener() { // from class: com.google.appinventor.components.runtime.NiotronCameraView.1
            public void onPictureTaken(Bitmap bitmap, int i) throws IOException {
                try {
                    Matrix matrix = new Matrix();
                    matrix.postRotate(-i);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                    FileOutputStream fileOutputStream = new FileOutputStream(NiotronCameraView.this.savePath);
                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    NiotronCameraView.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronCameraView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronCameraView niotronCameraView = NiotronCameraView.this;
                            niotronCameraView.PictureTaken(niotronCameraView.savePath);
                        }
                    });
                } catch (Exception e) {
                    NiotronCameraView.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronCameraView.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronCameraView.this.ErrorOccurred(e.getMessage());
                        }
                    });
                }
            }
        });
        this.cameraView.setOnCameraErrorListener(new CameraViewImpl.OnCameraErrorListener() { // from class: com.google.appinventor.components.runtime.NiotronCameraView.2
            public void onCameraError(Exception exc) {
                NiotronCameraView.this.ErrorOccurred(exc.getMessage());
            }
        });
        this.cameraViewContainer.addView((View) this.cameraView, 0, (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-1, -1));
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.cameraViewContainer;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Zoom enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ZoomEnabled(boolean z) {
        this.zoomEnabled = z;
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setZoomEnabled(z);
        }
    }

    @SimpleProperty(description = "zoom enabled")
    public boolean ZoomEnabled() {
        return this.zoomEnabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Auto focus enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AutoFocusEnabled(boolean z) {
        this.autoFocusEnabled = z;
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setAutoFocus(z);
        }
    }

    @SimpleProperty(description = "Auto focus enabled")
    public boolean AutoFocusEnabled() {
        return this.autoFocusEnabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Camera facing")
    @DesignerProperty(defaultValue = "Front", editorArgs = {"Front", "Back"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void CameraFacing(String str) {
        if (str.equals("Front")) {
            this.cameraFacing = 1;
        } else {
            this.cameraFacing = 0;
        }
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setFacing(this.cameraFacing);
        }
    }

    @SimpleProperty(description = "Camera facing")
    public String CameraFacing() {
        if (this.cameraFacing == 1) {
            return "Front";
        }
        return "Back";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets the flash mode")
    @DesignerProperty(defaultValue = "Auto", editorArgs = {"Auto", "On", "Off", "RedEye", "Torch"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void FlashMode(String str) {
        str.getClass();
        switch (str) {
            case "Auto":
                this.flashMode = 3;
            case "On":
                this.flashMode = 1;
            case "RedEye":
                this.flashMode = 4;
            case "Torch":
                this.flashMode = 2;
                break;
        }
        this.flashMode = 0;
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.setFlash(0);
        }
    }

    @SimpleProperty(description = "Returns the flash mode")
    public String FlashMode() {
        int i = this.flashMode;
        if (i == 1) {
            return "On";
        }
        if (i == 2) {
            return "Torch";
        }
        if (i == 3) {
            return "Auto";
        }
        if (i == 4) {
            return "RedEye";
        }
        return "Off";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets the frame rate")
    @DesignerProperty(defaultValue = "30", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    @Deprecated
    public void FrameRate(int i) {
        this.frameRate = 1000 / i;
    }

    @SimpleFunction(description = "Stats Getting a Live Preview from the Camera")
    public void StartPreview() {
        this.cameraView.start();
    }

    @SimpleFunction(description = "Stop live preview")
    public void StopLivePreview() {
        CameraView cameraView = this.cameraView;
        if (cameraView != null) {
            cameraView.stop();
        }
    }

    @SimpleFunction(description = "Take picture")
    public void TakePicture(String str) {
        this.savePath = str;
        this.cameraView.takePicture();
    }

    @SimpleEvent(description = "PictureTaken")
    public void PictureTaken(String str) {
        EventDispatcher.dispatchEvent(this, "PictureTaken", str);
    }

    @SimpleEvent(description = "FrameData")
    @Deprecated
    public void OnFrameData(String str) {
        EventDispatcher.dispatchEvent(this, "OnFrameData", str);
    }

    @SimpleEvent(description = "Some Error has Occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}

package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.VirtualDisplay;
import android.media.MediaRecorder;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.widget.ToggleButton;
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
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.RECORD_AUDIO, android.permission.WRITE_EXTERNAL_STORAGE")
@DesignerComponent(androidMinSdk = 21, category = ComponentCategory.MEDIA, description = "Record Screen and Save it as a Video File", iconName = "images/screenRecorder.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class ScreenRecorder extends AndroidNonvisibleComponent implements ActivityResultListener, OnDestroyListener {
    private int DISPLAY_HEIGHT;
    private int DISPLAY_WIDTH;
    private int PERMISSION_CODE;
    private final ComponentContainer container;
    private Context context;
    private MediaProjection mMediaProjection;
    private MediaProjectionCallback mMediaProjectionCallback;
    private MediaRecorder mMediaRecorder;
    private MediaProjectionManager mProjectionManager;
    private int mScreenDensity;
    private ToggleButton mToggleButton;
    private VirtualDisplay mVirtualDisplay;

    public ScreenRecorder(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.DISPLAY_WIDTH = 1080;
        this.DISPLAY_HEIGHT = 1920;
        this.context = componentContainer.$context();
        this.container = componentContainer;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) this.context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.mScreenDensity = displayMetrics.densityDpi;
        this.mProjectionManager = (MediaProjectionManager) this.context.getSystemService("media_projection");
        this.mMediaProjectionCallback = new MediaProjectionCallback(this, 0);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Width of recording")
    @DesignerProperty(defaultValue = "1080", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void DisplayWidth(int i) {
        this.DISPLAY_WIDTH = i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Height of recording")
    @DesignerProperty(defaultValue = "1920", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void DisplayHeight(int i) {
        this.DISPLAY_HEIGHT = i;
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        MediaProjection mediaProjection = this.mMediaProjection;
        if (mediaProjection != null) {
            mediaProjection.stop();
            this.mMediaProjection = null;
        }
    }

    public String getFilePath(String str, String str2) {
        java.io.File externalStorageDirectory = Environment.getExternalStorageDirectory();
        String str3 = java.io.File.separator;
        String str4 = externalStorageDirectory + str3 + str2;
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            OnErrorOccurred("Failed to get External Storage");
            return null;
        }
        java.io.File file = new java.io.File(str4);
        if (!file.exists() ? file.mkdir() : true) {
            return _COROUTINE.a.j(str4, str3, _COROUTINE.a.z(str, ".mp4"));
        }
        OnErrorOccurred("Failed to create Recordings directory");
        return null;
    }

    @SimpleFunction(description = "Initialize the Recorder First, then Start the Recording. Use Bitrate above 5000 for Good Quality. Framerate: 60 for smooth animations. FileName: Name of the recording and Folder in which you want to save to")
    public void InitializeRecorder(int i, int i2, String str, String str2) throws IllegalStateException, IOException {
        if (this.mMediaRecorder == null) {
            MediaRecorder mediaRecorder = new MediaRecorder();
            this.mMediaRecorder = mediaRecorder;
            mediaRecorder.setAudioSource(1);
            this.mMediaRecorder.setVideoSource(2);
            this.mMediaRecorder.setOutputFormat(2);
            this.mMediaRecorder.setVideoEncoder(2);
            this.mMediaRecorder.setAudioEncoder(1);
            this.mMediaRecorder.setVideoEncodingBitRate(i * 1000);
            this.mMediaRecorder.setVideoFrameRate(i2);
            this.mMediaRecorder.setVideoSize(this.DISPLAY_WIDTH, this.DISPLAY_HEIGHT);
            this.mMediaRecorder.setOutputFile(getFilePath(str, str2));
        }
        prepareRecorder();
    }

    private void prepareRecorder() throws IllegalStateException, IOException {
        try {
            this.mMediaRecorder.prepare();
            RecorderInitialized();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction(description = "Start the recording. Call only after Initializing the Recorder")
    public void StartRecording() throws IllegalStateException {
        shareScreen();
        ScreenRecordingStarted();
    }

    @SimpleFunction(description = "Stop the Recording and Save the File")
    public void StopRecording() throws IllegalStateException {
        this.mMediaRecorder.stop();
        this.mMediaRecorder.reset();
        stopScreenSharing();
        RecordingStopped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopScreenSharing() {
        VirtualDisplay virtualDisplay = this.mVirtualDisplay;
        if (virtualDisplay == null) {
            return;
        }
        virtualDisplay.release();
        this.mMediaRecorder.release();
        this.mMediaRecorder = null;
    }

    private void shareScreen() throws IllegalStateException {
        if (this.PERMISSION_CODE == 0) {
            this.PERMISSION_CODE = this.form.registerForActivityResult(this);
        }
        if (this.mMediaProjection == null) {
            this.container.$context().startActivityForResult(this.mProjectionManager.createScreenCaptureIntent(), this.PERMISSION_CODE);
        } else {
            this.mVirtualDisplay = createVirtualDisplay();
            this.mMediaRecorder.start();
        }
    }

    private VirtualDisplay createVirtualDisplay() {
        return this.mMediaProjection.createVirtualDisplay("Screen1", this.DISPLAY_WIDTH, this.DISPLAY_HEIGHT, this.mScreenDensity, 16, this.mMediaRecorder.getSurface(), null, null);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) throws IllegalStateException {
        if (i != this.PERMISSION_CODE) {
            OnErrorOccurred("Unknown request code: " + i);
        } else {
            if (i2 != -1) {
                ScreenCastPermissionDenied();
                return;
            }
            MediaProjection mediaProjection = this.mProjectionManager.getMediaProjection(i2, intent);
            this.mMediaProjection = mediaProjection;
            mediaProjection.registerCallback(this.mMediaProjectionCallback, null);
            this.mVirtualDisplay = createVirtualDisplay();
            this.mMediaRecorder.start();
        }
    }

    public class MediaProjectionCallback extends MediaProjection.Callback {
        public /* synthetic */ MediaProjectionCallback(ScreenRecorder screenRecorder, int i) {
            this();
        }

        private MediaProjectionCallback() {
        }

        @Override // android.media.projection.MediaProjection.Callback
        public void onStop() throws IllegalStateException {
            ScreenRecorder.this.mMediaRecorder.stop();
            ScreenRecorder.this.mMediaRecorder.reset();
            ScreenRecorder.this.mMediaProjection = null;
            ScreenRecorder.this.stopScreenSharing();
        }
    }

    @SimpleEvent(description = "Some Error Occurred")
    public void OnErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "OnErrorOccurred", str);
    }

    @SimpleEvent(description = "Recorder is initialized. Start Screen Recording after this event")
    public void RecorderInitialized() {
        EventDispatcher.dispatchEvent(this, "RecorderInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Permission Denied to record the Screen")
    public void ScreenCastPermissionDenied() {
        EventDispatcher.dispatchEvent(this, "ScreenCastPermissionDenied", new Object[0]);
    }

    @SimpleEvent(description = "Recording Stopped. Either due to error or user stopped it")
    public void RecordingStopped() {
        EventDispatcher.dispatchEvent(this, "RecordingStopped", new Object[0]);
    }

    @SimpleEvent(description = "Started Recording the Screen")
    public void ScreenRecordingStarted() {
        EventDispatcher.dispatchEvent(this, "ScreenRecordingStarted", new Object[0]);
    }
}

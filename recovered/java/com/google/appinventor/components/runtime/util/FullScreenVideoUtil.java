package com.google.appinventor.components.runtime.util;

import android.R;
import android.app.Dialog;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.VideoPlayer;
import com.google.appinventor.components.runtime.errors.PermissionException;
import java.io.IOException;

/* loaded from: classes.dex */
public class FullScreenVideoUtil implements MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener {
    public static final String ACTION_DATA = "ActionData";
    public static final String ACTION_SUCESS = "ActionSuccess";
    public static final int FULLSCREEN_VIDEO_ACTION_DURATION = 196;
    public static final int FULLSCREEN_VIDEO_ACTION_FULLSCREEN = 195;
    public static final int FULLSCREEN_VIDEO_ACTION_PAUSE = 192;
    public static final int FULLSCREEN_VIDEO_ACTION_PLAY = 191;
    public static final int FULLSCREEN_VIDEO_ACTION_SEEK = 190;
    public static final int FULLSCREEN_VIDEO_ACTION_SOURCE = 194;
    public static final int FULLSCREEN_VIDEO_ACTION_STOP = 193;
    public static final int FULLSCREEN_VIDEO_DIALOG_FLAG = 189;
    public static final String VIDEOPLAYER_FULLSCREEN = "FullScreenKey";
    public static final String VIDEOPLAYER_PLAYING = "PlayingKey";
    public static final String VIDEOPLAYER_POSITION = "PositionKey";
    public static final String VIDEOPLAYER_SOURCE = "SourceKey";
    private Form mForm;
    private Bundle mFullScreenVideoBundle;
    private CustomMediaController mFullScreenVideoController;
    private Dialog mFullScreenVideoDialog;
    private FrameLayout mFullScreenVideoHolder;
    private VideoView mFullScreenVideoView;
    private Handler mHandler;
    private FrameLayout.LayoutParams mMediaControllerParams = new FrameLayout.LayoutParams(-1, -2, 80);
    private VideoPlayer mFullScreenPlayer = null;

    public FullScreenVideoUtil(Form form, Handler handler) {
        this.mForm = form;
        this.mHandler = handler;
        this.mFullScreenVideoDialog = new Dialog(this.mForm, R.style.Theme.NoTitleBar.Fullscreen) { // from class: com.google.appinventor.components.runtime.util.FullScreenVideoUtil.1
            @Override // android.app.Dialog
            public void onBackPressed() {
                Bundle bundle = new Bundle();
                bundle.putInt(FullScreenVideoUtil.VIDEOPLAYER_POSITION, FullScreenVideoUtil.this.mFullScreenVideoView.getCurrentPosition());
                bundle.putBoolean(FullScreenVideoUtil.VIDEOPLAYER_PLAYING, FullScreenVideoUtil.this.mFullScreenVideoView.isPlaying());
                bundle.putString(FullScreenVideoUtil.VIDEOPLAYER_SOURCE, FullScreenVideoUtil.this.mFullScreenVideoBundle.getString(FullScreenVideoUtil.VIDEOPLAYER_SOURCE));
                FullScreenVideoUtil.this.mFullScreenPlayer.fullScreenKilled(bundle);
                super.onBackPressed();
            }

            @Override // android.app.Dialog
            public void onStart() {
                super.onStart();
                FullScreenVideoUtil.this.startDialog();
            }
        };
    }

    public synchronized Bundle performAction(int i, VideoPlayer videoPlayer, Object obj) {
        Log.i("Form.fullScreenVideoAction", "Actions:" + i + " Source:" + videoPlayer + ": Current Source:" + this.mFullScreenPlayer + " Data:" + obj);
        Bundle bundle = new Bundle();
        bundle.putBoolean(ACTION_SUCESS, true);
        if (videoPlayer == this.mFullScreenPlayer) {
            switch (i) {
                case FULLSCREEN_VIDEO_ACTION_SEEK /* 190 */:
                    if (showing()) {
                        this.mFullScreenVideoView.seekTo(((Integer) obj).intValue());
                        return bundle;
                    }
                    bundle.putBoolean(ACTION_SUCESS, false);
                    return bundle;
                case FULLSCREEN_VIDEO_ACTION_PLAY /* 191 */:
                    if (showing()) {
                        this.mFullScreenVideoView.start();
                        return bundle;
                    }
                    bundle.putBoolean(ACTION_SUCESS, false);
                    return bundle;
                case FULLSCREEN_VIDEO_ACTION_PAUSE /* 192 */:
                    if (showing()) {
                        this.mFullScreenVideoView.pause();
                        return bundle;
                    }
                    bundle.putBoolean(ACTION_SUCESS, false);
                    return bundle;
                case FULLSCREEN_VIDEO_ACTION_STOP /* 193 */:
                    if (showing()) {
                        this.mFullScreenVideoView.stopPlayback();
                        return bundle;
                    }
                    bundle.putBoolean(ACTION_SUCESS, false);
                    return bundle;
                case FULLSCREEN_VIDEO_ACTION_SOURCE /* 194 */:
                    if (showing()) {
                        bundle.putBoolean(ACTION_SUCESS, setSource((String) obj, true));
                        return bundle;
                    }
                    bundle.putBoolean(ACTION_SUCESS, false);
                    return bundle;
                case FULLSCREEN_VIDEO_ACTION_FULLSCREEN /* 195 */:
                    return doFullScreenVideoAction(videoPlayer, (Bundle) obj);
                case FULLSCREEN_VIDEO_ACTION_DURATION /* 196 */:
                    if (showing()) {
                        bundle.putInt(ACTION_DATA, this.mFullScreenVideoView.getDuration());
                        return bundle;
                    }
                    bundle.putBoolean(ACTION_SUCESS, false);
                    return bundle;
            }
        }
        if (i == 195) {
            if (showing() && this.mFullScreenPlayer != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putInt(VIDEOPLAYER_POSITION, this.mFullScreenVideoView.getCurrentPosition());
                bundle2.putBoolean(VIDEOPLAYER_PLAYING, this.mFullScreenVideoView.isPlaying());
                bundle2.putString(VIDEOPLAYER_SOURCE, this.mFullScreenVideoBundle.getString(VIDEOPLAYER_SOURCE));
                this.mFullScreenPlayer.fullScreenKilled(bundle2);
            }
            return doFullScreenVideoAction(videoPlayer, (Bundle) obj);
        }
        bundle.putBoolean(ACTION_SUCESS, false);
        return bundle;
    }

    private Bundle doFullScreenVideoAction(VideoPlayer videoPlayer, Bundle bundle) {
        Log.i("Form.doFullScreenVideoAction", "Source:" + videoPlayer + " Data:" + bundle);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean(ACTION_SUCESS, true);
        if (bundle.getBoolean(VIDEOPLAYER_FULLSCREEN)) {
            this.mFullScreenPlayer = videoPlayer;
            this.mFullScreenVideoBundle = bundle;
            if (!this.mFullScreenVideoDialog.isShowing()) {
                this.mForm.showDialog(FULLSCREEN_VIDEO_DIALOG_FLAG);
                return bundle2;
            }
            this.mFullScreenVideoView.pause();
            bundle2.putBoolean(ACTION_SUCESS, setSource(this.mFullScreenVideoBundle.getString(VIDEOPLAYER_SOURCE), false));
            return bundle2;
        }
        if (showing()) {
            bundle2.putBoolean(VIDEOPLAYER_PLAYING, this.mFullScreenVideoView.isPlaying());
            bundle2.putInt(VIDEOPLAYER_POSITION, this.mFullScreenVideoView.getCurrentPosition());
            bundle2.putString(VIDEOPLAYER_SOURCE, this.mFullScreenVideoBundle.getString(VIDEOPLAYER_SOURCE));
            this.mFullScreenPlayer = null;
            this.mFullScreenVideoBundle = null;
            this.mForm.dismissDialog(FULLSCREEN_VIDEO_DIALOG_FLAG);
            return bundle2;
        }
        bundle2.putBoolean(ACTION_SUCESS, false);
        return bundle2;
    }

    public Dialog createFullScreenVideoDialog() {
        if (this.mFullScreenVideoBundle == null) {
            Log.i("Form.createFullScreenVideoDialog", "mFullScreenVideoBundle is null");
        }
        this.mFullScreenVideoView = new VideoView(this.mForm);
        this.mFullScreenVideoHolder = new FrameLayout(this.mForm);
        this.mFullScreenVideoController = new CustomMediaController(this.mForm);
        VideoView videoView = this.mFullScreenVideoView;
        videoView.setId(videoView.hashCode());
        FrameLayout frameLayout = this.mFullScreenVideoHolder;
        frameLayout.setId(frameLayout.hashCode());
        this.mFullScreenVideoView.setMediaController(this.mFullScreenVideoController);
        this.mFullScreenVideoView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.appinventor.components.runtime.util.FullScreenVideoUtil.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                Log.i("FullScreenVideoUtil..onTouch", "Video Touched!!");
                return false;
            }
        });
        this.mFullScreenVideoController.setAnchorView(this.mFullScreenVideoView);
        String strScreenOrientation = this.mForm.ScreenOrientation();
        if (strScreenOrientation.equals("landscape") || strScreenOrientation.equals("sensorLandscape") || strScreenOrientation.equals("reverseLandscape")) {
            this.mFullScreenVideoView.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 17));
        } else {
            this.mFullScreenVideoView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 17));
        }
        this.mFullScreenVideoHolder.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mFullScreenVideoHolder.addView(this.mFullScreenVideoView);
        this.mFullScreenVideoController.addTo(this.mFullScreenVideoHolder, this.mMediaControllerParams);
        this.mFullScreenVideoDialog.setContentView(this.mFullScreenVideoHolder);
        return this.mFullScreenVideoDialog;
    }

    public void prepareFullScreenVideoDialog(Dialog dialog) {
        this.mFullScreenVideoView.setOnPreparedListener(this);
        this.mFullScreenVideoView.setOnCompletionListener(this);
    }

    public boolean dialogInitialized() {
        return this.mFullScreenVideoDialog != null;
    }

    public boolean showing() {
        return dialogInitialized() && this.mFullScreenVideoDialog.isShowing();
    }

    public boolean setSource(String str, boolean z) {
        if (z) {
            try {
                this.mFullScreenVideoBundle.putInt(VIDEOPLAYER_POSITION, 0);
            } catch (PermissionException e) {
                this.mForm.dispatchPermissionDeniedEvent(this.mFullScreenPlayer, "Source", e);
                return false;
            } catch (IOException unused) {
                this.mForm.dispatchErrorOccurredEvent(this.mFullScreenPlayer, "Source", ErrorMessages.ERROR_UNABLE_TO_LOAD_MEDIA, str);
                return false;
            }
        }
        MediaUtil.loadVideoView(this.mFullScreenVideoView, this.mForm, str);
        this.mFullScreenVideoBundle.putString(VIDEOPLAYER_SOURCE, str);
        return true;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        VideoPlayer videoPlayer = this.mFullScreenPlayer;
        if (videoPlayer != null) {
            videoPlayer.Completed();
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Log.i("FullScreenVideoUtil..onPrepared", "Seeking to:" + this.mFullScreenVideoBundle.getInt(VIDEOPLAYER_POSITION));
        this.mFullScreenVideoView.seekTo(this.mFullScreenVideoBundle.getInt(VIDEOPLAYER_POSITION));
        if (this.mFullScreenVideoBundle.getBoolean(VIDEOPLAYER_PLAYING)) {
            this.mFullScreenVideoView.start();
        } else {
            this.mFullScreenVideoView.start();
            this.mHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.util.FullScreenVideoUtil.3
                @Override // java.lang.Runnable
                public void run() {
                    FullScreenVideoUtil.this.mFullScreenVideoView.pause();
                }
            }, 100L);
        }
    }

    public void startDialog() {
        try {
            MediaUtil.loadVideoView(this.mFullScreenVideoView, this.mForm, this.mFullScreenVideoBundle.getString(VIDEOPLAYER_SOURCE));
        } catch (PermissionException e) {
            this.mForm.dispatchPermissionDeniedEvent(this.mFullScreenPlayer, "Source", e);
        } catch (IOException unused) {
            this.mForm.dispatchErrorOccurredEvent(this.mFullScreenPlayer, "Source", ErrorMessages.ERROR_UNABLE_TO_LOAD_MEDIA, this.mFullScreenVideoBundle.getString(VIDEOPLAYER_SOURCE));
        }
    }
}

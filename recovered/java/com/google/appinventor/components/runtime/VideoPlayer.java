package com.google.appinventor.components.runtime;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.MediaController;
import android.widget.VideoView;
import com.google.appinventor.components.annotations.Asset;
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
import com.google.appinventor.components.runtime.errors.PermissionException;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.appinventor.components.runtime.util.TiramisuUtil;
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.MEDIA, description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in 3GPP (.3gp) or MPEG-4 (.mp4) formats.  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p><p>You can also set the media source to a URL that points to a streaming video, but the URL must point to the video file itself, not to a program that plays the video.", iconName = "images/videoPlayer.png", version = 7)
@SimpleObject
/* loaded from: classes.dex */
public final class VideoPlayer extends AndroidViewComponent implements OnDestroyListener, Deleteable, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private final Handler androidUIHandler;
    private boolean delayedStart;
    private boolean inFullScreen;
    private MediaPlayer mPlayer;
    private boolean mediaReady;
    private String sourcePath;
    private final ResizableVideoView videoView;

    @SimpleEvent(description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead.", userVisible = false)
    public void VideoPlayerError(String str) {
    }

    public VideoPlayer(ComponentContainer componentContainer) {
        super(componentContainer);
        this.inFullScreen = false;
        this.mediaReady = false;
        this.delayedStart = false;
        this.androidUIHandler = new Handler();
        componentContainer.$form().registerForOnDestroy(this);
        ResizableVideoView resizableVideoView = new ResizableVideoView(componentContainer.$context());
        this.videoView = resizableVideoView;
        resizableVideoView.setMediaController(new MediaController(componentContainer.$context()));
        resizableVideoView.setOnCompletionListener(this);
        resizableVideoView.setOnErrorListener(this);
        resizableVideoView.setOnPreparedListener(this);
        componentContainer.$add(this);
        componentContainer.setChildWidth(this, 176);
        componentContainer.setChildHeight(this, 144);
        componentContainer.$form().setVolumeControlStream(3);
        this.sourcePath = "";
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.videoView;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer.")
    @UsesPermissions({"android.permission.READ_EXTERNAL_STORAGE"})
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Source(@Asset String str) {
        final String str2 = str == null ? "" : str;
        if (TiramisuUtil.requestVideoPermissions(this.container.$form(), str, new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.VideoPlayer.1
            @Override // com.google.appinventor.components.runtime.PermissionResultHandler
            public void HandlePermissionResponse(String str3, boolean z) {
                if (z) {
                    VideoPlayer.this.Source(str2);
                } else {
                    VideoPlayer.this.container.$form().dispatchPermissionDeniedEvent(VideoPlayer.this, "Source", str3);
                }
            }
        })) {
            return;
        }
        if (this.inFullScreen) {
            this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SOURCE, this, str);
            return;
        }
        if (str == null) {
            str = "";
        }
        this.sourcePath = str;
        this.videoView.invalidateMediaPlayer(true);
        if (this.videoView.isPlaying()) {
            this.videoView.stopPlayback();
        }
        this.videoView.setVideoURI(null);
        this.videoView.clearAnimation();
        if (this.sourcePath.length() > 0) {
            _COROUTINE.a.C("Source path is ", this.sourcePath, "VideoPlayer");
            try {
                this.mediaReady = false;
                MediaUtil.loadVideoView(this.videoView, this.container.$form(), this.sourcePath);
                Log.i("VideoPlayer", "loading video succeeded");
            } catch (PermissionException e) {
                this.container.$form().dispatchPermissionDeniedEvent(this, "Source", e);
            } catch (IOException unused) {
                this.container.$form().dispatchErrorOccurredEvent(this, "Source", ErrorMessages.ERROR_UNABLE_TO_LOAD_MEDIA, this.sourcePath);
            }
        }
    }

    @SimpleFunction(description = "Starts playback of the video.")
    public void Start() {
        Log.i("VideoPlayer", "Calling Start");
        if (this.inFullScreen) {
            this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PLAY, this, null);
        } else if (this.mediaReady) {
            this.videoView.start();
        } else {
            this.delayedStart = true;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets the volume to a number between 0 and 100. Values less than 0 will be treated as 0, and values greater than 100 will be treated as 100.")
    @DesignerProperty(defaultValue = "50", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void Volume(int i) {
        int iMin = Math.min(Math.max(i, 0), 100);
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            float f = iMin / 100.0f;
            mediaPlayer.setVolume(f, f);
        }
    }

    public void delayedStart() {
        this.delayedStart = true;
        Start();
    }

    @SimpleFunction(description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method.")
    public void Pause() {
        Log.i("VideoPlayer", "Calling Pause");
        if (this.inFullScreen) {
            this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, this, null);
            this.delayedStart = false;
        } else {
            this.delayedStart = false;
            this.videoView.pause();
        }
    }

    @SimpleFunction(description = "Resets to start of video and pauses it if video was playing.")
    public void Stop() {
        Log.i("VideoPlayer", "Calling Stop");
        Start();
        SeekTo(0);
        Pause();
    }

    @SimpleFunction(description = "Seeks to the requested time (specified in milliseconds) in the video. If the video is paused, the frame shown will not be updated by the seek. The player can jump only to key frames in the video, so seeking to times that differ by short intervals may not actually move to different frames.")
    public void SeekTo(int i) {
        Log.i("VideoPlayer", "Calling SeekTo");
        if (i < 0) {
            i = 0;
        }
        if (this.inFullScreen) {
            this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_SEEK, this, Integer.valueOf(i));
        } else {
            this.videoView.seekTo(i);
        }
    }

    @SimpleFunction(description = "Returns duration of the video in milliseconds.")
    public int GetDuration() {
        Log.i("VideoPlayer", "Calling GetDuration");
        if (this.inFullScreen) {
            Bundle bundleFullScreenVideoAction = this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, this, null);
            if (bundleFullScreenVideoAction.getBoolean(FullScreenVideoUtil.ACTION_SUCESS)) {
                return bundleFullScreenVideoAction.getInt(FullScreenVideoUtil.ACTION_DATA);
            }
            return 0;
        }
        return this.videoView.getDuration();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        Completed();
    }

    @SimpleEvent
    public void Completed() {
        EventDispatcher.dispatchEvent(this, "Completed", new Object[0]);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.videoView.invalidateMediaPlayer(true);
        this.delayedStart = false;
        this.mediaReady = false;
        Log.e("VideoPlayer", "onError: what is " + i + " 0x" + Integer.toHexString(i) + ", extra is " + i2 + " 0x" + Integer.toHexString(i2));
        this.container.$form().dispatchErrorOccurredEvent(this, "Source", ErrorMessages.ERROR_UNABLE_TO_LOAD_MEDIA, this.sourcePath);
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.mediaReady = true;
        this.delayedStart = false;
        this.mPlayer = mediaPlayer;
        this.videoView.setMediaPlayer(mediaPlayer, true);
        if (this.delayedStart) {
            Start();
        }
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        prepareToDie();
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        prepareToDie();
    }

    private void prepareToDie() {
        if (this.videoView.isPlaying()) {
            this.videoView.stopPlayback();
        }
        this.videoView.setVideoURI(null);
        this.videoView.clearAnimation();
        this.delayedStart = false;
        this.mediaReady = false;
        if (this.inFullScreen) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(FullScreenVideoUtil.VIDEOPLAYER_FULLSCREEN, false);
            this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN, this, bundle);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public int Width() {
        return super.Width();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = true)
    public void Width(int i) {
        super.Width(i);
        ResizableVideoView resizableVideoView = this.videoView;
        resizableVideoView.changeVideoSize(i, resizableVideoView.forcedHeight);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public int Height() {
        return super.Height();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(userVisible = true)
    public void Height(int i) {
        super.Height(i);
        ResizableVideoView resizableVideoView = this.videoView;
        resizableVideoView.changeVideoSize(resizableVideoView.forcedWidth, i);
    }

    @SimpleProperty
    public boolean FullScreen() {
        return this.inFullScreen;
    }

    @SimpleProperty(userVisible = true)
    public void FullScreen(boolean z) {
        if (z && SdkLevel.getLevel() <= 4) {
            this.container.$form().dispatchErrorOccurredEvent(this, "FullScreen(true)", ErrorMessages.ERROR_VIDEOPLAYER_FULLSCREEN_UNSUPPORTED, new Object[0]);
            return;
        }
        if (z != this.inFullScreen) {
            if (z) {
                Bundle bundle = new Bundle();
                bundle.putInt(FullScreenVideoUtil.VIDEOPLAYER_POSITION, this.videoView.getCurrentPosition());
                bundle.putBoolean(FullScreenVideoUtil.VIDEOPLAYER_PLAYING, this.videoView.isPlaying());
                this.videoView.pause();
                bundle.putBoolean(FullScreenVideoUtil.VIDEOPLAYER_FULLSCREEN, true);
                bundle.putString(FullScreenVideoUtil.VIDEOPLAYER_SOURCE, this.sourcePath);
                if (this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN, this, bundle).getBoolean(FullScreenVideoUtil.ACTION_SUCESS)) {
                    this.inFullScreen = true;
                    return;
                } else {
                    this.inFullScreen = false;
                    this.container.$form().dispatchErrorOccurredEvent(this, "FullScreen", ErrorMessages.ERROR_VIDEOPLAYER_FULLSCREEN_UNAVAILBLE, "");
                    return;
                }
            }
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean(FullScreenVideoUtil.VIDEOPLAYER_FULLSCREEN, false);
            Bundle bundleFullScreenVideoAction = this.container.$form().fullScreenVideoAction(FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_FULLSCREEN, this, bundle2);
            if (bundleFullScreenVideoAction.getBoolean(FullScreenVideoUtil.ACTION_SUCESS)) {
                fullScreenKilled(bundleFullScreenVideoAction);
            } else {
                this.inFullScreen = true;
                this.container.$form().dispatchErrorOccurredEvent(this, "FullScreen", ErrorMessages.ERROR_VIDEOPLAYER_FULLSCREEN_CANT_EXIT, "");
            }
        }
    }

    public void fullScreenKilled(Bundle bundle) {
        this.inFullScreen = false;
        String string = bundle.getString(FullScreenVideoUtil.VIDEOPLAYER_SOURCE);
        if (!string.equals(this.sourcePath)) {
            Source(string);
        }
        this.videoView.setVisibility(0);
        this.videoView.requestLayout();
        SeekTo(bundle.getInt(FullScreenVideoUtil.VIDEOPLAYER_POSITION));
        if (bundle.getBoolean(FullScreenVideoUtil.VIDEOPLAYER_PLAYING)) {
            Start();
        }
    }

    public int getPassedWidth() {
        return this.videoView.forcedWidth;
    }

    public int getPassedHeight() {
        return this.videoView.forcedHeight;
    }

    public class ResizableVideoView extends VideoView {
        public int forcedHeight;
        public int forcedWidth;
        private Boolean mFoundMediaPlayer;
        private MediaPlayer mVideoPlayer;

        public ResizableVideoView(Context context) {
            super(context);
            this.mFoundMediaPlayer = Boolean.FALSE;
            this.forcedWidth = -1;
            this.forcedHeight = -1;
        }

        @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
        public void onMeasure(int i, int i2) {
            onMeasure(i, i2, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x00ad, code lost:
        
            if (r0 != 1073741824) goto L12;
         */
        /* JADX WARN: Removed duplicated region for block: B:35:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x014a  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0163  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01a6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(final int r18, final int r19, final int r20) {
            /*
                Method dump skipped, instructions count: 462
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.VideoPlayer.ResizableVideoView.onMeasure(int, int, int):void");
        }

        public void changeVideoSize(int i, int i2) {
            this.forcedWidth = i;
            this.forcedHeight = i2;
            forceLayout();
            invalidate();
        }

        public void invalidateMediaPlayer(boolean z) {
            this.mFoundMediaPlayer = Boolean.FALSE;
            this.mVideoPlayer = null;
            if (z) {
                forceLayout();
                invalidate();
            }
        }

        public void setMediaPlayer(MediaPlayer mediaPlayer, boolean z) {
            this.mVideoPlayer = mediaPlayer;
            this.mFoundMediaPlayer = Boolean.TRUE;
            if (z) {
                forceLayout();
                invalidate();
            }
        }
    }
}

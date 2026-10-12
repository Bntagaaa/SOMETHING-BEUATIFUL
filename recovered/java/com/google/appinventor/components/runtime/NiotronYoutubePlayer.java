package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.PlayerConstants;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.YouTubePlayer;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.listeners.YouTubePlayerFullScreenListener;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.listeners.YouTubePlayerListener;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views.YouTubePlayerView;

@DesignerComponent(category = ComponentCategory.MEDIA, description = "A new component ", iconName = "images/niotronYoutubePlayer.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "youtube-player-core.aar, youtube-player-core.jar, kotlin-stdlib.jar, kotlin-stdlib-common.jar, annotations.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronYoutubePlayer extends AndroidViewComponent {
    private Context context;
    YouTubePlayer player;
    private String videoId;
    private final YouTubePlayerView view;
    private int volume;

    public NiotronYoutubePlayer(ComponentContainer componentContainer) {
        super(componentContainer);
        this.view = new YouTubePlayerView(componentContainer.$context());
        this.context = componentContainer.$context();
        componentContainer.$add(this);
        Init();
    }

    @SimpleFunction
    public void Play() {
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.play();
        }
    }

    @SimpleFunction
    public void Pause() {
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.pause();
        }
    }

    @SimpleFunction
    public void Mute() {
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.mute();
        }
    }

    @SimpleFunction
    public void UnMute() {
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.unMute();
        }
    }

    @SimpleFunction
    public void Load() {
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.loadVideo(this.videoId, 0.0f);
        }
    }

    @SimpleFunction
    public void ToggleFullScreen() {
        this.view.toggleFullScreen();
    }

    @SimpleFunction
    public void EnterFullScreen() {
        this.view.enterFullScreen();
    }

    @SimpleFunction
    public void ExitFullScreen() {
        this.view.exitFullScreen();
    }

    @SimpleProperty
    public void SeekTo(float f) {
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.seekTo(f);
        }
    }

    @SimpleProperty
    public void Volume(int i) {
        this.volume = i;
        YouTubePlayer youTubePlayer = this.player;
        if (youTubePlayer != null) {
            youTubePlayer.setVolume(i);
        }
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty
    public void VideoId(String str) {
        this.videoId = str;
    }

    @SimpleProperty
    public String VideoId() {
        return this.videoId;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void BackgroudPlay(boolean z) {
        this.view.enableBackgroundPlayback(z);
    }

    @SimpleEvent
    public void OnFullScreen() {
        EventDispatcher.dispatchEvent(this, "OnFullScreen", new Object[0]);
    }

    @SimpleEvent
    public void OnMinimizeScreen() {
        EventDispatcher.dispatchEvent(this, "OnMinimizeScreen", new Object[0]);
    }

    @SimpleEvent
    public void VideoLoded(float f) {
        EventDispatcher.dispatchEvent(this, "VideoLoded", Float.valueOf(f));
    }

    @SimpleEvent
    public void OnReady() {
        EventDispatcher.dispatchEvent(this, "OnReady", new Object[0]);
    }

    @SimpleEvent
    public void CurrentProgress(float f) {
        EventDispatcher.dispatchEvent(this, "CurrentProgress", Float.valueOf(f));
    }

    @SimpleEvent
    public void Error(String str) {
        EventDispatcher.dispatchEvent(this, "Error", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    private void Init() {
        this.view.setEnableAutomaticInitialization(false);
        this.view.initialize(new YouTubePlayerListener() { // from class: com.google.appinventor.components.runtime.NiotronYoutubePlayer.1
            public void onApiChange(YouTubePlayer youTubePlayer) {
            }

            public void onPlaybackQualityChange(YouTubePlayer youTubePlayer, PlayerConstants.PlaybackQuality playbackQuality) {
            }

            public void onPlaybackRateChange(YouTubePlayer youTubePlayer, PlayerConstants.PlaybackRate playbackRate) {
            }

            public void onStateChange(YouTubePlayer youTubePlayer, PlayerConstants.PlayerState playerState) {
            }

            public void onVideoDuration(YouTubePlayer youTubePlayer, float f) {
            }

            public void onVideoId(YouTubePlayer youTubePlayer, String str) {
            }

            public void onVideoLoadedFraction(YouTubePlayer youTubePlayer, float f) {
                NiotronYoutubePlayer.this.VideoLoded(f);
            }

            public void onReady(YouTubePlayer youTubePlayer) {
                NiotronYoutubePlayer niotronYoutubePlayer = NiotronYoutubePlayer.this;
                niotronYoutubePlayer.player = youTubePlayer;
                niotronYoutubePlayer.OnReady();
            }

            public void onError(YouTubePlayer youTubePlayer, PlayerConstants.PlayerError playerError) {
                NiotronYoutubePlayer.this.Error(playerError.toString());
            }

            public void onCurrentSecond(YouTubePlayer youTubePlayer, float f) {
                NiotronYoutubePlayer.this.CurrentProgress(f);
            }
        }, true);
        this.view.addFullScreenListener(new YouTubePlayerFullScreenListener() { // from class: com.google.appinventor.components.runtime.NiotronYoutubePlayer.2
            public void onYouTubePlayerEnterFullScreen() {
                NiotronYoutubePlayer.this.OnFullScreen();
            }

            public void onYouTubePlayerExitFullScreen() {
                NiotronYoutubePlayer.this.OnMinimizeScreen();
            }
        });
    }
}

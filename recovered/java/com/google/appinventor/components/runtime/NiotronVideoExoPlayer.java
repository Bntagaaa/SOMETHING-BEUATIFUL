package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ExoPlayerSize;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.jetbrains.annotations.Nullable;

@DesignerComponent(androidMinSdk = 24, category = ComponentCategory.MEDIA, description = "Exo player for videos", iconName = "images/niotronVideoExoPlayer.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "media3-extractor.aar, media3-extractor.jar, media3-container.aar, media3-container.jar, media3-datasource.aar, media3-datasource.jar, media3-decoder.aar, media3-decoder.jar, media3-database.aar, media3-database.jar, media3-common.aar, media3-common.jar, media3-exoplayer.aar, media3-exoplayer.jar, exifinterface.aar, exifinterface.jar, annotation.jar, media3-exoplayer-dash.aar, media3-exoplayer-dash.jar, failureaccess.jar, media3-ui.aar, media3-ui.jar, media.aar, media.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronVideoExoPlayer extends AndroidViewComponent implements OnDestroyListener, OnPauseListener {
    private Activity activity;
    private Context context;
    private ExoPlayer exoPlayer;
    private PlayerView exoPlayerView;
    private FrameLayout layout;
    private android.widget.LinearLayout layoutMain;
    private float volume;

    public NiotronVideoExoPlayer(ComponentContainer componentContainer) {
        super(componentContainer);
        this.volume = 1.0f;
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.activity = activity$context;
        this.exoPlayer = new ExoPlayer.Builder(this.context).build();
        PlayerView playerView = new PlayerView(this.activity);
        this.exoPlayerView = playerView;
        playerView.setPlayer(this.exoPlayer);
        this.exoPlayer.addListener(new Player.Listener() { // from class: com.google.appinventor.components.runtime.NiotronVideoExoPlayer.1
            public void onTimelineChanged(Timeline timeline, int i) {
                super.onTimelineChanged(timeline, i);
                NiotronVideoExoPlayer.this.TimelineChanged(timeline.getPeriodCount(), timeline.getPeriodCount(), i);
            }

            public void onMediaItemTransition(@Nullable MediaItem mediaItem, int i) {
                super.onMediaItemTransition(mediaItem, i);
                NiotronVideoExoPlayer.this.MediaItemTransition(NiotronVideoExoPlayer.this.getMediaMetadataDictionary(mediaItem.mediaMetadata), mediaItem.mediaId, i);
            }

            public void onTracksChanged(Tracks tracks) {
                super.onTracksChanged(tracks);
                NiotronVideoExoPlayer.this.TracksChanged();
            }

            public void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                super.onMediaMetadataChanged(mediaMetadata);
                NiotronVideoExoPlayer niotronVideoExoPlayer = NiotronVideoExoPlayer.this;
                niotronVideoExoPlayer.MediaMetadataChanged(niotronVideoExoPlayer.getMediaMetadataDictionary(mediaMetadata));
            }

            public void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                super.onPlaylistMetadataChanged(mediaMetadata);
                NiotronVideoExoPlayer niotronVideoExoPlayer = NiotronVideoExoPlayer.this;
                niotronVideoExoPlayer.PlaylistMetadataChanged(niotronVideoExoPlayer.getMediaMetadataDictionary(mediaMetadata));
            }

            public void onIsLoadingChanged(boolean z) {
                super.onIsLoadingChanged(z);
                NiotronVideoExoPlayer.this.IsLoadingChanged(z);
            }

            public void onAvailableCommandsChanged(Player.Commands commands) {
                super.onAvailableCommandsChanged(commands);
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < commands.size(); i++) {
                    arrayList.add(Integer.valueOf(commands.get(i)));
                }
                NiotronVideoExoPlayer.this.AvailableCommandsChanged(YailList.makeList((List) arrayList));
            }

            public void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
                super.onTrackSelectionParametersChanged(trackSelectionParameters);
                NiotronVideoExoPlayer niotronVideoExoPlayer = NiotronVideoExoPlayer.this;
                niotronVideoExoPlayer.TrackSelectionParametersChanged(niotronVideoExoPlayer.getTrackParameter(trackSelectionParameters));
            }

            public void onPlaybackStateChanged(int i) {
                super.onPlaybackStateChanged(i);
                NiotronVideoExoPlayer.this.PlaybackStateChanged(i);
            }

            public void onPlayWhenReadyChanged(boolean z, int i) {
                super.onPlayWhenReadyChanged(z, i);
                NiotronVideoExoPlayer.this.PlayWhenReadyChanged(z, i);
            }

            public void onPlaybackSuppressionReasonChanged(int i) {
                super.onPlaybackSuppressionReasonChanged(i);
                NiotronVideoExoPlayer.this.PlaybackSuppressionReasonChanged(i);
            }

            public void onIsPlayingChanged(boolean z) {
                super.onIsPlayingChanged(z);
                NiotronVideoExoPlayer.this.IsPlayingChanged(z);
            }

            public void onRepeatModeChanged(int i) {
                super.onRepeatModeChanged(i);
                NiotronVideoExoPlayer.this.RepeatModeChanged(i);
            }

            public void onShuffleModeEnabledChanged(boolean z) {
                super.onShuffleModeEnabledChanged(z);
                NiotronVideoExoPlayer.this.ShuffleModeEnabledChanged(z);
            }

            public void onPlayerError(PlaybackException playbackException) {
                super.onPlayerError(playbackException);
                NiotronVideoExoPlayer.this.PlayerError(playbackException.getMessage(), playbackException.errorCode);
            }

            public void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
                super.onPlayerErrorChanged(playbackException);
                NiotronVideoExoPlayer.this.PlayerErrorChanged(playbackException.getMessage(), playbackException.errorCode);
            }

            public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
                super.onPositionDiscontinuity(positionInfo, positionInfo2, i);
                NiotronVideoExoPlayer.this.PositionDiscontinuity(positionInfo.positionMs, positionInfo2.positionMs, i);
            }

            public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                super.onPlaybackParametersChanged(playbackParameters);
                NiotronVideoExoPlayer.this.PlaybackParametersChanged(playbackParameters.pitch, playbackParameters.speed);
            }

            public void onSeekBackIncrementChanged(long j) {
                super.onSeekBackIncrementChanged(j);
                NiotronVideoExoPlayer.this.SeekBackIncrementChanged(j);
            }

            public void onSeekForwardIncrementChanged(long j) {
                super.onSeekForwardIncrementChanged(j);
                NiotronVideoExoPlayer.this.SeekForwardIncrementChanged(j);
            }

            public void onMaxSeekToPreviousPositionChanged(long j) {
                super.onMaxSeekToPreviousPositionChanged(j);
                NiotronVideoExoPlayer.this.MaxSeekToPreviousPositionChanged(j);
            }

            public void onAudioSessionIdChanged(int i) {
                super.onAudioSessionIdChanged(i);
                NiotronVideoExoPlayer.this.AudioSessionIdChanged(i);
            }

            public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                super.onAudioAttributesChanged(audioAttributes);
                NiotronVideoExoPlayer niotronVideoExoPlayer = NiotronVideoExoPlayer.this;
                niotronVideoExoPlayer.AudioAttributesChanged(niotronVideoExoPlayer.getAudioAttributes(audioAttributes));
            }

            public void onVolumeChanged(float f) {
                super.onVolumeChanged(f);
                NiotronVideoExoPlayer.this.VolumeChanged(f);
            }

            public void onSkipSilenceEnabledChanged(boolean z) {
                super.onSkipSilenceEnabledChanged(z);
                NiotronVideoExoPlayer.this.SkipSilenceEnabledChanged(z);
            }

            public void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                super.onDeviceInfoChanged(deviceInfo);
                NiotronVideoExoPlayer.this.DeviceInfoChanged(deviceInfo.maxVolume, deviceInfo.minVolume, deviceInfo.playbackType);
            }

            public void onDeviceVolumeChanged(int i, boolean z) {
                super.onDeviceVolumeChanged(i, z);
                NiotronVideoExoPlayer.this.DeviceVolumeChanged(i, z);
            }

            public void onVideoSizeChanged(VideoSize videoSize) {
                super.onVideoSizeChanged(videoSize);
                NiotronVideoExoPlayer.this.VideoSizeChanged(videoSize.width, videoSize.height, videoSize.pixelWidthHeightRatio, videoSize.unappliedRotationDegrees);
            }

            public void onSurfaceSizeChanged(int i, int i2) {
                super.onSurfaceSizeChanged(i, i2);
                NiotronVideoExoPlayer.this.SurfaceSizeChanged(i, i2);
            }

            public void onRenderedFirstFrame() {
                super.onRenderedFirstFrame();
                NiotronVideoExoPlayer.this.RenderedFirstFrame();
            }

            public void onCues(CueGroup cueGroup) {
                super.onCues(cueGroup);
                NiotronVideoExoPlayer.this.Cues();
            }

            public void onMetadata(Metadata metadata) {
                super.onMetadata(metadata);
                NiotronVideoExoPlayer niotronVideoExoPlayer = NiotronVideoExoPlayer.this;
                niotronVideoExoPlayer.Metadata(niotronVideoExoPlayer.getMetadata(metadata));
            }
        });
        this.layoutMain = new android.widget.LinearLayout(this.context);
        FrameLayout frameLayout = new FrameLayout(this.context);
        this.layout = frameLayout;
        frameLayout.addView(this.exoPlayerView);
        this.exoPlayerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        componentContainer.$add(this);
        this.layoutMain.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.layoutMain.addView(this.layout, new LinearLayout.LayoutParams(-1, -2));
        Height(-1);
        componentContainer.$form().registerForOnDestroy(this);
        componentContainer.$form().registerForOnPause(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i == -1) {
            i = 600;
        }
        super.Height(i);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty
    public void Url(String str) {
        this.exoPlayer.setMediaItem(MediaItem.fromUri(str));
        this.exoPlayer.setPlayWhenReady(true);
        this.exoPlayer.prepare();
    }

    @SimpleProperty
    public void FullScreen(boolean z) {
        if (z) {
            this.activity.setRequestedOrientation(0);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.exoPlayerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.exoPlayerView.setLayoutParams(layoutParams);
            return;
        }
        this.activity.setRequestedOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.exoPlayerView.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = 600;
        this.exoPlayerView.setLayoutParams(layoutParams2);
    }

    @SimpleFunction
    public long GetBufferedPercentage() {
        return this.exoPlayer.getBufferedPercentage();
    }

    @SimpleFunction
    public long GetBufferedPosition() {
        return this.exoPlayer.getBufferedPosition();
    }

    @SimpleFunction
    public void SeekTo(int i) {
        this.exoPlayer.seekTo(i);
    }

    @SimpleFunction
    public long GetDuration() {
        return this.exoPlayer.getDuration();
    }

    @SimpleFunction
    public long GetCurrentPosition() {
        return this.exoPlayer.getCurrentPosition();
    }

    @SimpleFunction
    public boolean IsLoading() {
        return this.exoPlayer.isLoading();
    }

    @SimpleFunction
    public void Play() {
        this.exoPlayer.setPlayWhenReady(true);
    }

    @SimpleFunction
    public void Pause() {
        this.exoPlayer.setPlayWhenReady(false);
    }

    @SimpleFunction
    public void Stop() {
        this.exoPlayer.stop();
    }

    @SimpleFunction
    public boolean IsPlaying() {
        return this.exoPlayer.isPlaying();
    }

    @SimpleFunction
    public void Mute() {
        this.exoPlayer.setVolume(0.0f);
    }

    @SimpleFunction
    public void Unmute() {
        this.exoPlayer.setVolume(this.volume);
    }

    @SimpleFunction
    public void SetVolume(int i) {
        float f = i;
        this.exoPlayer.setVolume(f);
        this.volume = f;
    }

    @SimpleFunction
    public void SetPlaybackSpeed(String str) {
        this.exoPlayer.setPlaybackParameters(new PlaybackParameters(Float.parseFloat(str)));
    }

    @SimpleFunction
    public void SetResizeMode(@Options(ExoPlayerSize.class) int i) {
        this.exoPlayerView.setResizeMode(i);
    }

    @SimpleFunction
    public int GetPlaybackState() {
        return this.exoPlayer.getPlaybackState();
    }

    @SimpleFunction
    public void HideController() {
        this.exoPlayerView.hideController();
    }

    @SimpleFunction
    public void ShowController() {
        this.exoPlayerView.showController();
    }

    @SimpleFunction
    public void AddCustomView(AndroidViewComponent androidViewComponent) {
        if (androidViewComponent.getView().getParent() != null) {
            ((ViewGroup) androidViewComponent.getView().getParent()).removeView(androidViewComponent.getView());
        }
        this.layout.addView(androidViewComponent.getView());
    }

    @SimpleEvent
    @Deprecated
    public void ErrorOccurredWhileCreating(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurredWhileCreating", str);
    }

    @SimpleEvent
    public void MediaItemTransition(YailDictionary yailDictionary, String str, int i) {
        EventDispatcher.dispatchEvent(this, "MediaItemTransition", yailDictionary, str, Integer.valueOf(i));
    }

    @SimpleEvent
    public void TracksChanged() {
        EventDispatcher.dispatchEvent(this, "TracksChanged", new Object[0]);
    }

    @SimpleEvent
    public void MediaMetadataChanged(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "MediaMetadataChanged", yailDictionary);
    }

    @SimpleEvent
    public void PlaylistMetadataChanged(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "PlaylistMetadataChanged", yailDictionary);
    }

    @SimpleEvent
    public void IsLoadingChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "IsLoadingChanged", Boolean.valueOf(z));
    }

    @SimpleEvent
    public void TimelineChanged(int i, int i2, int i3) {
        EventDispatcher.dispatchEvent(this, "TimelineChanged", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @SimpleEvent
    public void AvailableCommandsChanged(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "AvailableCommandsChanged", yailList);
    }

    @SimpleEvent
    public void PlaybackStateChanged(int i) {
        EventDispatcher.dispatchEvent(this, "PlaybackStateChanged", Integer.valueOf(i));
    }

    @SimpleEvent
    public void PlayWhenReadyChanged(boolean z, int i) {
        EventDispatcher.dispatchEvent(this, "PlayWhenReadyChanged", Boolean.valueOf(z), Integer.valueOf(i));
    }

    @SimpleEvent
    public void PlaybackSuppressionReasonChanged(int i) {
        EventDispatcher.dispatchEvent(this, "PlaybackSuppressionReasonChanged", Integer.valueOf(i));
    }

    @SimpleEvent
    public void RepeatModeChanged(int i) {
        EventDispatcher.dispatchEvent(this, "RepeatModeChanged", Integer.valueOf(i));
    }

    @SimpleEvent
    public void ShuffleModeEnabledChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "ShuffleModeEnabledChanged", Boolean.valueOf(z));
    }

    @SimpleEvent
    public void PlayerErrorChanged(String str, int i) {
        EventDispatcher.dispatchEvent(this, "PlayerErrorChanged", str, Integer.valueOf(i));
    }

    @SimpleEvent
    public void SeekBackIncrementChanged(long j) {
        EventDispatcher.dispatchEvent(this, "SeekBackIncrementChanged", Long.valueOf(j));
    }

    @SimpleEvent
    public void SeekForwardIncrementChanged(long j) {
        EventDispatcher.dispatchEvent(this, "SeekForwardIncrementChanged", Long.valueOf(j));
    }

    @SimpleEvent
    public void MaxSeekToPreviousPositionChanged(long j) {
        EventDispatcher.dispatchEvent(this, "MaxSeekToPreviousPositionChanged", Long.valueOf(j));
    }

    @SimpleEvent
    public void AudioSessionIdChanged(long j) {
        EventDispatcher.dispatchEvent(this, "AudioSessionIdChanged", Long.valueOf(j));
    }

    @SimpleEvent
    public void AudioAttributesChanged(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "AudioAttributesChanged", yailDictionary);
    }

    @SimpleEvent
    public void VolumeChanged(float f) {
        EventDispatcher.dispatchEvent(this, "VolumeChanged", Float.valueOf(f));
    }

    @SimpleEvent
    public void SkipSilenceEnabledChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "SkipSilenceEnabledChanged", Boolean.valueOf(z));
    }

    @SimpleEvent
    public void DeviceInfoChanged(int i, int i2, int i3) {
        EventDispatcher.dispatchEvent(this, "DeviceInfoChanged", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @SimpleEvent
    public void DeviceVolumeChanged(int i, boolean z) {
        EventDispatcher.dispatchEvent(this, "DeviceVolumeChanged", Integer.valueOf(i), Boolean.valueOf(z));
    }

    @SimpleEvent
    public void VideoSizeChanged(int i, int i2, float f, int i3) {
        EventDispatcher.dispatchEvent(this, "VideoSizeChanged", Integer.valueOf(i), Integer.valueOf(i2), Float.valueOf(f), Integer.valueOf(i3));
    }

    @SimpleEvent
    public void SurfaceSizeChanged(int i, int i2) {
        EventDispatcher.dispatchEvent(this, "SurfaceSizeChanged", Integer.valueOf(i), Integer.valueOf(i2));
    }

    @SimpleEvent
    public void Metadata(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "Metadata", yailList);
    }

    @SimpleEvent
    public void RenderedFirstFrame() {
        EventDispatcher.dispatchEvent(this, "RenderedFirstFrame", new Object[0]);
    }

    @SimpleEvent
    public void PositionDiscontinuity(long j, long j2, int i) {
        EventDispatcher.dispatchEvent(this, "PositionDiscontinuity", Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i));
    }

    @SimpleEvent
    public void PlaybackParametersChanged(float f, float f2) {
        EventDispatcher.dispatchEvent(this, "PlaybackParametersChanged", Float.valueOf(f), Float.valueOf(f2));
    }

    @SimpleEvent
    public void TrackSelectionParametersChanged(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "TrackSelectionParametersChanged", yailDictionary);
    }

    @SimpleEvent
    public void Cues() {
        EventDispatcher.dispatchEvent(this, "Cues", new Object[0]);
    }

    @SimpleEvent
    public void IsPlayingChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "IsPlayingChanged", Boolean.valueOf(z));
    }

    @SimpleEvent
    public void PlayerError(String str, int i) {
        EventDispatcher.dispatchEvent(this, "PlayerError", str, Integer.valueOf(i));
    }

    @SimpleEvent
    public void LoadingChanged(boolean z) {
        EventDispatcher.dispatchEvent(this, "LoadingChanged", Boolean.valueOf(z));
    }

    @SimpleEvent
    public void VideoBuffering() {
        EventDispatcher.dispatchEvent(this, "VideoBuffering", new Object[0]);
    }

    @SimpleEvent
    public void IdleState() {
        EventDispatcher.dispatchEvent(this, "IdleState", new Object[0]);
    }

    @SimpleEvent
    public void VideoReadyToPlay() {
        EventDispatcher.dispatchEvent(this, "VideoReadyToPlay", new Object[0]);
    }

    @SimpleEvent
    public void VideoEnded() {
        EventDispatcher.dispatchEvent(this, "VideoEnded", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.layoutMain;
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        this.exoPlayer.stop();
        this.exoPlayer.release();
    }

    @Override // com.google.appinventor.components.runtime.OnPauseListener
    public void onPause() {
        this.exoPlayer.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public YailDictionary getMediaMetadataDictionary(MediaMetadata mediaMetadata) {
        YailDictionary yailDictionary = new YailDictionary();
        yailDictionary.put("albumArtist", mediaMetadata.albumArtist);
        yailDictionary.put("albumTitle", mediaMetadata.albumTitle);
        yailDictionary.put("artist", mediaMetadata.artist);
        yailDictionary.put("mediaType", mediaMetadata.mediaType);
        yailDictionary.put("artworkUri", mediaMetadata.artworkUri);
        yailDictionary.put("compilation", mediaMetadata.compilation);
        yailDictionary.put("composer", mediaMetadata.composer);
        yailDictionary.put("conductor", mediaMetadata.conductor);
        yailDictionary.put("description", mediaMetadata.description);
        yailDictionary.put("discNumber", mediaMetadata.discNumber);
        yailDictionary.put("displayTitle", mediaMetadata.displayTitle);
        yailDictionary.put("durationMs", mediaMetadata.durationMs);
        yailDictionary.put("genre", mediaMetadata.genre);
        yailDictionary.put("isBrowsable", mediaMetadata.isBrowsable);
        yailDictionary.put("isPlayable", mediaMetadata.isPlayable);
        yailDictionary.put("overallRating", mediaMetadata.overallRating);
        yailDictionary.put("recordingDay", mediaMetadata.recordingDay);
        yailDictionary.put("recordingMonth", mediaMetadata.recordingMonth);
        yailDictionary.put("recordingYear", mediaMetadata.recordingYear);
        yailDictionary.put("releaseDay", mediaMetadata.releaseDay);
        yailDictionary.put("releaseMonth", mediaMetadata.releaseMonth);
        yailDictionary.put("releaseYear", mediaMetadata.releaseYear);
        yailDictionary.put("station", mediaMetadata.station);
        yailDictionary.put("title", mediaMetadata.title);
        yailDictionary.put("subtitle", mediaMetadata.subtitle);
        yailDictionary.put("totalDiscCount", mediaMetadata.totalDiscCount);
        yailDictionary.put("totalTrackCount", mediaMetadata.totalTrackCount);
        yailDictionary.put("trackNumber", mediaMetadata.trackNumber);
        yailDictionary.put("userRating", mediaMetadata.userRating);
        return yailDictionary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public YailDictionary getAudioAttributes(AudioAttributes audioAttributes) {
        android.media.AudioAttributes audioAttributes2 = audioAttributes.getAudioAttributesV21().audioAttributes;
        YailDictionary yailDictionary = new YailDictionary();
        yailDictionary.put("areHapticChannelsMuted", Boolean.valueOf(audioAttributes2.areHapticChannelsMuted()));
        yailDictionary.put("describeContents", Integer.valueOf(audioAttributes2.describeContents()));
        yailDictionary.put("flags", Integer.valueOf(audioAttributes2.getFlags()));
        yailDictionary.put("contentType", Integer.valueOf(audioAttributes2.getContentType()));
        yailDictionary.put("allowedCapturePolicy", Integer.valueOf(audioAttributes2.getAllowedCapturePolicy()));
        yailDictionary.put("usage", Integer.valueOf(audioAttributes2.getUsage()));
        yailDictionary.put("spatializationBehavior", Integer.valueOf(audioAttributes2.getSpatializationBehavior()));
        yailDictionary.put("volumeControlStream", Integer.valueOf(audioAttributes2.getVolumeControlStream()));
        yailDictionary.put("isContentSpatialized", Boolean.valueOf(audioAttributes2.isContentSpatialized()));
        return yailDictionary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public YailList getMetadata(Metadata metadata) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < metadata.length(); i++) {
            YailDictionary yailDictionary = new YailDictionary();
            Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            Objects.requireNonNull(wrappedMetadataFormat);
            yailDictionary.put("averageBitrate", Integer.valueOf(wrappedMetadataFormat.averageBitrate));
            Format wrappedMetadataFormat2 = metadata.get(i).getWrappedMetadataFormat();
            Objects.requireNonNull(wrappedMetadataFormat2);
            yailDictionary.put("bitrate", Integer.valueOf(wrappedMetadataFormat2.bitrate));
            Format wrappedMetadataFormat3 = metadata.get(i).getWrappedMetadataFormat();
            Objects.requireNonNull(wrappedMetadataFormat3);
            yailDictionary.put("height", Integer.valueOf(wrappedMetadataFormat3.height));
            Format wrappedMetadataFormat4 = metadata.get(i).getWrappedMetadataFormat();
            Objects.requireNonNull(wrappedMetadataFormat4);
            yailDictionary.put("width", Integer.valueOf(wrappedMetadataFormat4.width));
            Format wrappedMetadataFormat5 = metadata.get(i).getWrappedMetadataFormat();
            Objects.requireNonNull(wrappedMetadataFormat5);
            yailDictionary.put("channelCount", Integer.valueOf(wrappedMetadataFormat5.channelCount));
            arrayList.add(yailDictionary);
        }
        return YailList.makeList((List) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public YailDictionary getTrackParameter(TrackSelectionParameters trackSelectionParameters) {
        YailDictionary yailDictionary = new YailDictionary();
        yailDictionary.put("maxVideoWidth", Integer.valueOf(trackSelectionParameters.maxVideoWidth));
        yailDictionary.put("maxVideoHeight", Integer.valueOf(trackSelectionParameters.maxVideoHeight));
        yailDictionary.put("maxVideoFrameRate", Integer.valueOf(trackSelectionParameters.maxVideoFrameRate));
        yailDictionary.put("maxVideoBitrate", Integer.valueOf(trackSelectionParameters.maxVideoBitrate));
        yailDictionary.put("minVideoWidth", Integer.valueOf(trackSelectionParameters.minVideoWidth));
        yailDictionary.put("minVideoHeight", Integer.valueOf(trackSelectionParameters.minVideoHeight));
        yailDictionary.put("minVideoFrameRate", Integer.valueOf(trackSelectionParameters.minVideoFrameRate));
        yailDictionary.put("minVideoBitrate", Integer.valueOf(trackSelectionParameters.minVideoBitrate));
        yailDictionary.put("viewportWidth", Integer.valueOf(trackSelectionParameters.viewportWidth));
        yailDictionary.put("viewportHeight", Integer.valueOf(trackSelectionParameters.viewportHeight));
        yailDictionary.put("viewportOrientationMayChange", Boolean.valueOf(trackSelectionParameters.viewportOrientationMayChange));
        yailDictionary.put("maxAudioChannelCount", Integer.valueOf(trackSelectionParameters.maxAudioChannelCount));
        yailDictionary.put("maxAudioBitrate", Integer.valueOf(trackSelectionParameters.maxAudioBitrate));
        return yailDictionary;
    }
}

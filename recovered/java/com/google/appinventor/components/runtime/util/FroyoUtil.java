package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.media.AudioManager;
import android.view.Display;
import android.webkit.WebViewClient;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.Player;
import java.io.IOException;

/* loaded from: classes.dex */
public class FroyoUtil {
    private FroyoUtil() {
    }

    public static int getRotation(Display display) {
        return display.getRotation();
    }

    public static AudioManager setAudioManager(Activity activity) {
        return (AudioManager) activity.getSystemService("audio");
    }

    public static Object setAudioFocusChangeListener(final Player player) {
        return new AudioManager.OnAudioFocusChangeListener() { // from class: com.google.appinventor.components.runtime.util.FroyoUtil.1
            private boolean playbackFlag = false;

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                Player player2;
                if (i == -3 || i == -2) {
                    Player player3 = player;
                    if (player3 == null || player3.playerState != Player.State.PLAYING) {
                        return;
                    }
                    player3.pause();
                    this.playbackFlag = true;
                    return;
                }
                if (i == -1) {
                    this.playbackFlag = false;
                    player.OtherPlayerStarted();
                } else if (i == 1 && (player2 = player) != null && this.playbackFlag && player2.playerState == Player.State.PAUSED_BY_EVENT) {
                    player2.Start();
                    this.playbackFlag = false;
                }
            }
        };
    }

    public static boolean focusRequestGranted(AudioManager audioManager, Object obj) {
        return audioManager.requestAudioFocus((AudioManager.OnAudioFocusChangeListener) obj, 3, 1) == 1;
    }

    public static void abandonFocus(AudioManager audioManager, Object obj) {
        audioManager.abandonAudioFocus((AudioManager.OnAudioFocusChangeListener) obj);
    }

    public static WebViewClient getWebViewClient(boolean z, boolean z2, Form form, Component component) {
        return new FroyoWebViewClient(z2, z, form, component);
    }

    public static void throwIOException(Throwable th) throws IOException {
        throw new IOException(th.toString());
    }
}

package androidx.core.app;

import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class PictureInPictureModeChangedInfo {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f923a;

    /* renamed from: b, reason: collision with root package name */
    public final Configuration f924b;

    public PictureInPictureModeChangedInfo(boolean z) {
        this.f923a = z;
        this.f924b = null;
    }

    @RequiresApi(26)
    public PictureInPictureModeChangedInfo(boolean z, @NonNull Configuration configuration) {
        this.f923a = z;
        this.f924b = configuration;
    }

    public boolean isInPictureInPictureMode() {
        return this.f923a;
    }

    @NonNull
    @RequiresApi(26)
    public Configuration getNewConfig() {
        Configuration configuration = this.f924b;
        if (configuration != null) {
            return configuration;
        }
        throw new IllegalStateException("PictureInPictureModeChangedInfo must be constructed with the constructor that takes a Configuration to call getNewConfig(). Are you running on an API 26 or higher device that makes this information available?");
    }
}

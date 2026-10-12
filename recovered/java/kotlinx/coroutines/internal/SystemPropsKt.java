package kotlinx.coroutines.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"kotlinx/coroutines/internal/f", "kotlinx/coroutines/internal/g"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SystemPropsKt {
    public static final int getAVAILABLE_PROCESSORS() {
        return f.getAVAILABLE_PROCESSORS();
    }

    public static final int systemProp(@NotNull String str, int i, int i2, int i3) {
        return g.systemProp(str, i, i2, i3);
    }

    public static final long systemProp(@NotNull String str, long j, long j2, long j3) {
        return g.systemProp(str, j, j2, j3);
    }

    @Nullable
    public static final String systemProp(@NotNull String str) {
        return f.systemProp(str);
    }

    @NotNull
    public static final String systemProp(@NotNull String str, @NotNull String str2) {
        return g.systemProp(str, str2);
    }

    public static final boolean systemProp(@NotNull String str, boolean z) {
        return g.systemProp(str, z);
    }
}

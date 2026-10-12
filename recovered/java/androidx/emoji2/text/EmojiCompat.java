package androidx.emoji2.text;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.AnyThread;
import androidx.annotation.CheckResult;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.DefaultEmojiCompatConfig;
import com.google.appinventor.components.runtime.Component;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@AnyThread
/* loaded from: classes.dex */
public class EmojiCompat {
    public static final String EDITOR_INFO_METAVERSION_KEY = "android.support.text.emoji.emojiCompat_metadataVersion";
    public static final String EDITOR_INFO_REPLACE_ALL_KEY = "android.support.text.emoji.emojiCompat_replaceAll";
    public static final int EMOJI_FALLBACK = 2;
    public static final int EMOJI_SUPPORTED = 1;
    public static final int EMOJI_UNSUPPORTED = 0;
    public static final int LOAD_STATE_DEFAULT = 3;
    public static final int LOAD_STATE_FAILED = 2;
    public static final int LOAD_STATE_LOADING = 0;
    public static final int LOAD_STATE_SUCCEEDED = 1;
    public static final int LOAD_STRATEGY_DEFAULT = 0;
    public static final int LOAD_STRATEGY_MANUAL = 1;
    public static final int REPLACE_STRATEGY_ALL = 1;
    public static final int REPLACE_STRATEGY_DEFAULT = 0;
    public static final int REPLACE_STRATEGY_NON_EXISTENT = 2;
    public static final Object n = new Object();
    public static final Object o = new Object();
    public static volatile EmojiCompat p;
    public static volatile boolean q;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f1497a;

    /* renamed from: b, reason: collision with root package name */
    public final ArraySet f1498b;
    public volatile int c;
    public final Handler d;
    public final a e;
    public final MetadataRepoLoader f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1499g;
    public final boolean h;
    public final int[] i;
    public final boolean j;
    public final int k;
    public final int l;
    public final GlyphChecker m;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface CodepointSequenceMatchResult {
    }

    public interface GlyphChecker {
        boolean hasGlyph(@NonNull CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3);
    }

    public static abstract class InitCallback {
        public void onFailed(@Nullable Throwable th) {
        }

        public void onInitialized() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface LoadStrategy {
    }

    public interface MetadataRepoLoader {
        void load(@NonNull MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    public static abstract class MetadataRepoLoaderCallback {
        public abstract void onFailed(@Nullable Throwable th);

        public abstract void onLoaded(@NonNull MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ReplaceStrategy {
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class d {
    }

    public static boolean handleOnKeyDown(@NonNull Editable editable, int i, @NonNull KeyEvent keyEvent) {
        boolean zA;
        if (i == 67) {
            zA = i.a(editable, keyEvent, false);
        } else {
            zA = i != 112 ? false : i.a(editable, keyEvent, true);
        }
        if (!zA) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0049, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0086, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0070 A[EDGE_INSN: B:92:0x0070->B:48:0x0070 BREAK  A[LOOP:2: B:49:0x0072->B:60:0x0089, LOOP_LABEL: LOOP:2: B:49:0x0072->B:60:0x0089], EDGE_INSN: B:95:0x0070->B:48:0x0070 BREAK  A[LOOP:2: B:49:0x0072->B:60:0x0089]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00a6 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean handleDeleteSurroundingText(@androidx.annotation.NonNull android.view.inputmethod.InputConnection r7, @androidx.annotation.NonNull android.text.Editable r8, @androidx.annotation.IntRange(from = 0) int r9, @androidx.annotation.IntRange(from = 0) int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiCompat.handleDeleteSurroundingText(android.view.inputmethod.InputConnection, android.text.Editable, int, int, boolean):boolean");
    }

    public EmojiCompat(Config config) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f1497a = reentrantReadWriteLock;
        this.c = 3;
        this.f1499g = config.f1501b;
        this.h = config.c;
        this.i = config.d;
        this.j = config.f;
        this.k = config.f1502g;
        MetadataRepoLoader metadataRepoLoader = config.f1500a;
        this.f = metadataRepoLoader;
        int i = config.h;
        this.l = i;
        this.m = config.i;
        this.d = new Handler(Looper.getMainLooper());
        ArraySet arraySet = new ArraySet();
        this.f1498b = arraySet;
        ArraySet arraySet2 = config.e;
        if (arraySet2 != null && !arraySet2.isEmpty()) {
            arraySet.addAll((Collection) config.e);
        }
        a aVar = new a(this);
        this.e = aVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.c = 0;
            } catch (Throwable th) {
                this.f1497a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (getLoadState() == 0) {
            try {
                metadataRepoLoader.load(new e(aVar));
            } catch (Throwable th2) {
                b(th2);
            }
        }
    }

    @Nullable
    public static EmojiCompat init(@NonNull Context context) {
        return init(context, null);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static EmojiCompat init(@NonNull Context context, @Nullable DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory defaultEmojiCompatConfigFactory) {
        EmojiCompat emojiCompat;
        if (q) {
            return p;
        }
        if (defaultEmojiCompatConfigFactory == null) {
            defaultEmojiCompatConfigFactory = new DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory(null);
        }
        Config configCreate = defaultEmojiCompatConfigFactory.create(context);
        synchronized (o) {
            try {
                if (!q) {
                    if (configCreate != null) {
                        init(configCreate);
                    }
                    q = true;
                }
                emojiCompat = p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return emojiCompat;
    }

    @NonNull
    public static EmojiCompat init(@NonNull Config config) {
        EmojiCompat emojiCompat;
        EmojiCompat emojiCompat2 = p;
        if (emojiCompat2 != null) {
            return emojiCompat2;
        }
        synchronized (n) {
            try {
                emojiCompat = p;
                if (emojiCompat == null) {
                    emojiCompat = new EmojiCompat(config);
                    p = emojiCompat;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return emojiCompat;
    }

    public static boolean isConfigured() {
        return p != null;
    }

    @NonNull
    public static EmojiCompat reset(@NonNull Config config) {
        EmojiCompat emojiCompat;
        synchronized (n) {
            emojiCompat = new EmojiCompat(config);
            p = emojiCompat;
        }
        return emojiCompat;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static EmojiCompat reset(@Nullable EmojiCompat emojiCompat) {
        EmojiCompat emojiCompat2;
        synchronized (n) {
            p = emojiCompat;
            emojiCompat2 = p;
        }
        return emojiCompat2;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public static void skipDefaultConfigurationLookup(boolean z) {
        synchronized (o) {
            q = z;
        }
    }

    @NonNull
    public static EmojiCompat get() {
        EmojiCompat emojiCompat;
        synchronized (n) {
            emojiCompat = p;
            Preconditions.checkState(emojiCompat != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return emojiCompat;
    }

    public void load() {
        Preconditions.checkState(this.l == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (a()) {
            return;
        }
        this.f1497a.writeLock().lock();
        try {
            if (this.c == 0) {
                return;
            }
            this.c = 0;
            this.f1497a.writeLock().unlock();
            a aVar = this.e;
            EmojiCompat emojiCompat = aVar.f1504a;
            try {
                emojiCompat.f.load(new e(aVar));
            } catch (Throwable th) {
                emojiCompat.b(th);
            }
        } finally {
            this.f1497a.writeLock().unlock();
        }
    }

    public final void b(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f1497a.writeLock().lock();
        try {
            this.c = 2;
            arrayList.addAll(this.f1498b);
            this.f1498b.clear();
            this.f1497a.writeLock().unlock();
            this.d.post(new c(arrayList, this.c, th));
        } catch (Throwable th2) {
            this.f1497a.writeLock().unlock();
            throw th2;
        }
    }

    public void registerInitCallback(@NonNull InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
        this.f1497a.writeLock().lock();
        try {
            if (this.c == 1 || this.c == 2) {
                this.d.post(new c(Arrays.asList((InitCallback) Preconditions.checkNotNull(initCallback, "initCallback cannot be null")), this.c, null));
            } else {
                this.f1498b.add(initCallback);
            }
            this.f1497a.writeLock().unlock();
        } catch (Throwable th) {
            this.f1497a.writeLock().unlock();
            throw th;
        }
    }

    public void unregisterInitCallback(@NonNull InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
        ReentrantReadWriteLock reentrantReadWriteLock = this.f1497a;
        reentrantReadWriteLock.writeLock().lock();
        try {
            this.f1498b.remove(initCallback);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    public int getLoadState() {
        this.f1497a.readLock().lock();
        try {
            return this.c;
        } finally {
            this.f1497a.readLock().unlock();
        }
    }

    public final boolean a() {
        return getLoadState() == 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isEmojiSpanIndicatorEnabled() {
        return this.j;
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiSpanIndicatorColor() {
        return this.k;
    }

    @Deprecated
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence) {
        Preconditions.checkState(a(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        i iVar = this.e.f1503b;
        return iVar.b(charSequence, iVar.f1563a.f1517a.version()) == 1;
    }

    @Deprecated
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        Preconditions.checkState(a(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.e.f1503b.b(charSequence, i) == 1;
    }

    public int getEmojiMatch(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        Preconditions.checkState(a(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.e.getEmojiMatch(charSequence, i);
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence) {
        return process(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return process(charSequence, i, i2, Integer.MAX_VALUE);
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3) {
        return process(charSequence, i, i2, i3, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x01dd, code lost:
    
        if (r11 != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01df, code lost:
    
        ((androidx.emoji2.text.SpannableBuilder) r18).endBatchEdit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01e5, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01e6, code lost:
    
        if (r11 != false) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0193 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0197 A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01be A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01d3 A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a2 A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b1 A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cf A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0164 A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:32:0x0079, B:35:0x007e, B:37:0x0082, B:39:0x008f, B:44:0x00a2, B:46:0x00aa, B:48:0x00ad, B:50:0x00b1, B:52:0x00bd, B:53:0x00c0, B:55:0x00cf, B:61:0x00de, B:63:0x00ed, B:66:0x0106, B:74:0x0116, B:76:0x0120, B:77:0x012d, B:83:0x013b, B:84:0x0145, B:86:0x0157, B:88:0x015e, B:89:0x0164, B:91:0x016f, B:94:0x0177, B:96:0x017c, B:98:0x0182, B:100:0x0187, B:108:0x0197, B:110:0x01a1, B:111:0x01ae, B:117:0x01be, B:118:0x01c3, B:120:0x01d3, B:42:0x0098), top: B:133:0x0079 }] */
    @androidx.annotation.Nullable
    @androidx.annotation.CheckResult
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence process(@androidx.annotation.Nullable java.lang.CharSequence r18, @androidx.annotation.IntRange(from = 0) int r19, @androidx.annotation.IntRange(from = 0) int r20, @androidx.annotation.IntRange(from = 0) int r21, int r22) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiCompat.process(java.lang.CharSequence, int, int, int, int):java.lang.CharSequence");
    }

    @NonNull
    public String getAssetSignature() {
        Preconditions.checkState(a(), "Not initialized yet");
        String strSourceSha = this.e.c.getMetadataList().sourceSha();
        return strSourceSha == null ? "" : strSourceSha;
    }

    public void updateEditorInfo(@NonNull EditorInfo editorInfo) {
        if (!a() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        a aVar = this.e;
        aVar.getClass();
        editorInfo.extras.putInt(EDITOR_INFO_METAVERSION_KEY, aVar.c.f1517a.version());
        editorInfo.extras.putBoolean(EDITOR_INFO_REPLACE_ALL_KEY, aVar.f1504a.f1499g);
    }

    public static abstract class Config {

        /* renamed from: a, reason: collision with root package name */
        public final MetadataRepoLoader f1500a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1501b;
        public boolean c;
        public int[] d;
        public ArraySet e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public int f1502g = Component.COLOR_GREEN;
        public int h = 0;
        public GlyphChecker i = new androidx.emoji2.text.d();

        public Config(@NonNull MetadataRepoLoader metadataRepoLoader) {
            Preconditions.checkNotNull(metadataRepoLoader, "metadataLoader cannot be null.");
            this.f1500a = metadataRepoLoader;
        }

        @NonNull
        public Config registerInitCallback(@NonNull InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
            if (this.e == null) {
                this.e = new ArraySet();
            }
            this.e.add(initCallback);
            return this;
        }

        @NonNull
        public Config unregisterInitCallback(@NonNull InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
            ArraySet arraySet = this.e;
            if (arraySet != null) {
                arraySet.remove(initCallback);
            }
            return this;
        }

        @NonNull
        public Config setReplaceAll(boolean z) {
            this.f1501b = z;
            return this;
        }

        @NonNull
        public Config setUseEmojiAsDefaultStyle(boolean z) {
            return setUseEmojiAsDefaultStyle(z, null);
        }

        @NonNull
        public Config setUseEmojiAsDefaultStyle(boolean z, @Nullable List<Integer> list) {
            this.c = z;
            if (z && list != null) {
                this.d = new int[list.size()];
                Iterator<Integer> it = list.iterator();
                int i = 0;
                while (it.hasNext()) {
                    this.d[i] = it.next().intValue();
                    i++;
                }
                Arrays.sort(this.d);
                return this;
            }
            this.d = null;
            return this;
        }

        @NonNull
        public Config setEmojiSpanIndicatorEnabled(boolean z) {
            this.f = z;
            return this;
        }

        @NonNull
        public Config setEmojiSpanIndicatorColor(@ColorInt int i) {
            this.f1502g = i;
            return this;
        }

        @NonNull
        public Config setMetadataLoadStrategy(int i) {
            this.h = i;
            return this;
        }

        @NonNull
        public Config setGlyphChecker(@NonNull GlyphChecker glyphChecker) {
            Preconditions.checkNotNull(glyphChecker, "GlyphChecker cannot be null");
            this.i = glyphChecker;
            return this;
        }

        @NonNull
        public final MetadataRepoLoader getMetadataRepoLoader() {
            return this.f1500a;
        }
    }

    public static class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f1505a;

        /* renamed from: b, reason: collision with root package name */
        public final Throwable f1506b;
        public final int c;

        public c(List list, int i, Throwable th) {
            Preconditions.checkNotNull(list, "initCallbacks cannot be null");
            this.f1505a = new ArrayList(list);
            this.c = i;
            this.f1506b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = this.f1505a;
            int size = arrayList.size();
            int i = 0;
            if (this.c != 1) {
                while (i < size) {
                    ((InitCallback) arrayList.get(i)).onFailed(this.f1506b);
                    i++;
                }
            } else {
                while (i < size) {
                    ((InitCallback) arrayList.get(i)).onInitialized();
                    i++;
                }
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final EmojiCompat f1504a;

        public b(EmojiCompat emojiCompat) {
            this.f1504a = emojiCompat;
        }
    }

    @RequiresApi(19)
    public static final class a extends b {

        /* renamed from: b, reason: collision with root package name */
        public volatile i f1503b;
        public volatile MetadataRepo c;

        public int getEmojiMatch(CharSequence charSequence, int i) {
            return this.f1503b.b(charSequence, i);
        }
    }
}

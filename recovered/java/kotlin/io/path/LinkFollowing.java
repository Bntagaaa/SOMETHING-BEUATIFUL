package kotlin.io.path;

import java.nio.file.FileVisitOption;
import java.nio.file.LinkOption;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlin/io/path/LinkFollowing;", "", "<init>", "()V", "", "followLinks", "", "Ljava/nio/file/LinkOption;", "toLinkOptions", "(Z)[Ljava/nio/file/LinkOption;", "", "Ljava/nio/file/FileVisitOption;", "toVisitOptions", "(Z)Ljava/util/Set;", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class LinkFollowing {

    @NotNull
    public static final LinkFollowing INSTANCE = new LinkFollowing();

    /* renamed from: a, reason: collision with root package name */
    public static final LinkOption[] f5799a = {LinkOption.NOFOLLOW_LINKS};

    /* renamed from: b, reason: collision with root package name */
    public static final LinkOption[] f5800b = new LinkOption[0];
    public static final Set c = SetsKt.emptySet();
    public static final Set d = SetsKt.setOf(FileVisitOption.FOLLOW_LINKS);

    private LinkFollowing() {
    }

    @NotNull
    public final LinkOption[] toLinkOptions(boolean followLinks) {
        return followLinks ? f5800b : f5799a;
    }

    @NotNull
    public final Set<FileVisitOption> toVisitOptions(boolean followLinks) {
        return followLinks ? d : c;
    }
}

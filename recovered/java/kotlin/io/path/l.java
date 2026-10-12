package kotlin.io.path;

import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;

/* loaded from: classes2.dex */
public final /* synthetic */ class l implements Function3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5822a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5823b;

    public /* synthetic */ l(boolean z, int i) {
        this.f5822a = i;
        this.f5823b = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CopyActionContext copyToRecursively = (CopyActionContext) obj;
        Path src = (Path) obj2;
        Path dst = (Path) obj3;
        switch (this.f5822a) {
            case 0:
                Intrinsics.checkNotNullParameter(copyToRecursively, "$this$copyToRecursively");
                Intrinsics.checkNotNullParameter(src, "src");
                Intrinsics.checkNotNullParameter(dst, "dst");
                LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(this.f5823b);
                boolean zIsDirectory = Files.isDirectory(dst, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1));
                LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                if (!Files.isDirectory(src, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) || !zIsDirectory) {
                    if (zIsDirectory) {
                        PathsKt__PathRecursiveFunctionsKt.deleteRecursively(dst);
                    }
                    SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                    spreadBuilder.addSpread(linkOptions);
                    spreadBuilder.add(StandardCopyOption.REPLACE_EXISTING);
                    CopyOption[] copyOptionArr = (CopyOption[]) spreadBuilder.toArray(new CopyOption[spreadBuilder.size()]);
                    Intrinsics.checkNotNullExpressionValue(Files.copy(src, dst, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length)), "copy(...)");
                }
                return CopyActionResult.CONTINUE;
            default:
                Intrinsics.checkNotNullParameter(copyToRecursively, "<this>");
                Intrinsics.checkNotNullParameter(src, "src");
                Intrinsics.checkNotNullParameter(dst, "dst");
                return copyToRecursively.copyToIgnoringExistingDirectory(src, dst, this.f5823b);
        }
    }
}

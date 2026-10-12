package kotlin.uuid;

import java.security.SecureRandom;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlin/uuid/a;", "", "<init>", "()V", "Ljava/security/SecureRandom;", "b", "Ljava/security/SecureRandom;", "getInstance", "()Ljava/security/SecureRandom;", "instance", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f6104a = new a();

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final SecureRandom instance = new SecureRandom();

    private a() {
    }

    @NotNull
    public final SecureRandom getInstance() {
        return instance;
    }
}

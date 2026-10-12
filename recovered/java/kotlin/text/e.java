package kotlin.text;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/text/e;", "", "", "", PropertyTypeConstants.PROPERTY_TYPE_STRING, "<init>", "(Ljava/lang/CharSequence;)V", "", "hasNext", "()Z", "next", "()Ljava/lang/String;", "a", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class e implements Iterator<String>, KMappedMarker {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f6066a;

    /* renamed from: b, reason: collision with root package name */
    public int f6067b;
    public int c;
    public int d;
    public int e;

    static {
        new a(null);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/text/e$a;", "", "<init>", "()V", "", "UNKNOWN", "I", "HAS_NEXT", "EXHAUSTED", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e(@NotNull CharSequence string) {
        Intrinsics.checkNotNullParameter(string, "string");
        this.f6066a = string;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i;
        int i2;
        int i3 = this.f6067b;
        if (i3 != 0) {
            return i3 == 1;
        }
        if (this.e < 0) {
            this.f6067b = 2;
            return false;
        }
        CharSequence charSequence = this.f6066a;
        int length = charSequence.length();
        int length2 = charSequence.length();
        for (int i4 = this.c; i4 < length2; i4++) {
            char cCharAt = charSequence.charAt(i4);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i = (cCharAt == '\r' && (i2 = i4 + 1) < charSequence.length() && charSequence.charAt(i2) == '\n') ? 2 : 1;
                length = i4;
                this.f6067b = 1;
                this.e = i;
                this.d = length;
                return true;
            }
        }
        i = -1;
        this.f6067b = 1;
        this.e = i;
        this.d = length;
        return true;
    }

    @Override // java.util.Iterator
    @NotNull
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f6067b = 0;
        int i = this.d;
        int i2 = this.c;
        this.c = this.e + i;
        return this.f6066a.subSequence(i2, i).toString();
    }
}

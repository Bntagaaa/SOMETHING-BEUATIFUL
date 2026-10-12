package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.SinceKotlin;
import kotlin.reflect.KDeclarationContainer;

@SinceKotlin(version = "1.4")
/* loaded from: classes2.dex */
public class AdaptedFunctionReference implements FunctionBase, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Class f5831a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5832b;
    public final String c;
    public final boolean d;
    public final int e;
    public final int f;
    protected final Object receiver;

    public AdaptedFunctionReference(int i, Class cls, String str, String str2, int i2) {
        this(i, CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    public AdaptedFunctionReference(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.receiver = obj;
        this.f5831a = cls;
        this.f5832b = str;
        this.c = str2;
        this.d = (i2 & 1) == 1;
        this.e = i;
        this.f = i2 >> 1;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.e;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.f5831a;
        if (cls == null) {
            return null;
        }
        return this.d ? Reflection.getOrCreateKotlinPackage(cls) : Reflection.getOrCreateKotlinClass(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptedFunctionReference)) {
            return false;
        }
        AdaptedFunctionReference adaptedFunctionReference = (AdaptedFunctionReference) obj;
        return this.d == adaptedFunctionReference.d && this.e == adaptedFunctionReference.e && this.f == adaptedFunctionReference.f && Intrinsics.areEqual(this.receiver, adaptedFunctionReference.receiver) && Intrinsics.areEqual(this.f5831a, adaptedFunctionReference.f5831a) && this.f5832b.equals(adaptedFunctionReference.f5832b) && this.c.equals(adaptedFunctionReference.c);
    }

    public int hashCode() {
        Object obj = this.receiver;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Class cls = this.f5831a;
        return ((((((this.c.hashCode() + ((this.f5832b.hashCode() + ((iHashCode + (cls != null ? cls.hashCode() : 0)) * 31)) * 31)) * 31) + (this.d ? 1231 : 1237)) * 31) + this.e) * 31) + this.f;
    }

    public String toString() {
        return Reflection.renderLambdaToString(this);
    }
}

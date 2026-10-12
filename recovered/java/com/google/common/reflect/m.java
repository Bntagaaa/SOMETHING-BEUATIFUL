package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.text.Typography;

/* loaded from: classes.dex */
final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final Function f4846a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final Joiner f4847b = Joiner.on(", ").useForNull("null");

    public static final class e<X> {

        /* renamed from: a, reason: collision with root package name */
        public static final boolean f4853a = !e.class.getTypeParameters()[0].equals(m.e(e.class, "X", new Type[0]));
    }

    public static class a implements Function<Type, String> {
        @Override // com.google.common.base.Function
        public String apply(Type type) {
            return d.c.b(type);
        }
    }

    public static Type d(Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Preconditions.checkArgument(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
            if (lowerBounds.length != 1) {
                Type[] upperBounds = wildcardType.getUpperBounds();
                Preconditions.checkArgument(upperBounds.length == 1, "Wildcard should have only one upper bound.");
                return new i(new Type[0], new Type[]{d(upperBounds[0])});
            }
            return new i(new Type[]{d(lowerBounds[0])}, new Type[]{Object.class});
        }
        return d.c.a(type);
    }

    public static ParameterizedType f(Type type, Class cls, Type... typeArr) {
        if (type != null) {
            Preconditions.checkNotNull(typeArr);
            Preconditions.checkArgument(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
            return new f(type, cls, typeArr);
        }
        return new f(b.f4848a.a(cls), cls, typeArr);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4848a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ b[] f4849b = {new a(), new C0138b()};

        /* JADX INFO: Fake field, exist only in values array */
        b EF2;

        public abstract Class a(Class cls);

        public enum a extends b {
            public a() {
                super("OWNED_BY_ENCLOSING_CLASS", 0);
            }

            @Override // com.google.common.reflect.m.b
            public final Class a(Class cls) {
                return cls.getEnclosingClass();
            }
        }

        /* renamed from: com.google.common.reflect.m$b$b, reason: collision with other inner class name */
        public enum C0138b extends b {
            public C0138b() {
                super("LOCAL_CLASS_HAS_NO_OWNER", 1);
            }

            @Override // com.google.common.reflect.m.b
            public final Class a(Class cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }

        public static b[] values() {
            return (b[]) f4849b.clone();
        }

        static {
            new p();
            ParameterizedType parameterizedType = (ParameterizedType) p.class.getGenericSuperclass();
            for (b bVar : values()) {
                if (bVar.a(o.class) == parameterizedType.getOwnerType()) {
                    f4848a = bVar;
                    return;
                }
            }
            throw new AssertionError();
        }
    }

    public static TypeVariable e(GenericDeclaration genericDeclaration, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return (TypeVariable) Reflection.newProxy(TypeVariable.class, new h(new g(genericDeclaration, str, typeArr)));
    }

    public static Type c(Type type) {
        Preconditions.checkNotNull(type);
        AtomicReference atomicReference = new AtomicReference();
        new n(atomicReference).visit(type);
        return (Type) atomicReference.get();
    }

    public static Type a(Type[] typeArr) {
        for (Type type : typeArr) {
            Type typeC = c(type);
            if (typeC != null) {
                if (typeC instanceof Class) {
                    Class cls = (Class) typeC;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return new i(new Type[0], new Type[]{typeC});
            }
        }
        return null;
    }

    public static final class c implements GenericArrayType, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Type f4850a;

        public c(Type type) {
            this.f4850a = d.c.d(type);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f4850a;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Function function = m.f4846a;
            Type type = this.f4850a;
            return _COROUTINE.a.m(sb, type instanceof Class ? ((Class) type).getName() : type.toString(), "[]");
        }

        public int hashCode() {
            return this.f4850a.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return Objects.equal(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }
    }

    public static final class f implements ParameterizedType, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Type f4854a;

        /* renamed from: b, reason: collision with root package name */
        public final ImmutableList f4855b;
        public final Class c;

        public f(Type type, Class cls, Type[] typeArr) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkArgument(typeArr.length == cls.getTypeParameters().length);
            m.b(typeArr, "type parameter");
            this.f4854a = type;
            this.c = cls;
            this.f4855b = d.c.c(typeArr);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            Function function = m.f4846a;
            return (Type[]) this.f4855b.toArray(new Type[0]);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.c;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f4854a;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Type type = this.f4854a;
            if (type != null) {
                d dVar = d.c;
                dVar.getClass();
                if (!(dVar instanceof d.C0139d)) {
                    sb.append(dVar.b(type));
                    sb.append('.');
                }
            }
            sb.append(this.c.getName());
            sb.append(Typography.less);
            sb.append(m.f4847b.join(Iterables.transform(this.f4855b, m.f4846a)));
            sb.append(Typography.greater);
            return sb.toString();
        }

        public int hashCode() {
            Type type = this.f4854a;
            return ((type == null ? 0 : type.hashCode()) ^ this.f4855b.hashCode()) ^ this.c.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && Objects.equal(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }
    }

    public static final class h implements InvocationHandler {

        /* renamed from: b, reason: collision with root package name */
        public static final ImmutableMap f4858b;

        /* renamed from: a, reason: collision with root package name */
        public final g f4859a;

        static {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            for (Method method : g.class.getMethods()) {
                if (method.getDeclaringClass().equals(g.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    builder.put(method.getName(), method);
                }
            }
            f4858b = builder.build();
        }

        public h(g gVar) {
            this.f4859a = gVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = (Method) f4858b.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.f4859a, objArr);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }
    }

    public static final class g<D extends GenericDeclaration> {

        /* renamed from: a, reason: collision with root package name */
        public final GenericDeclaration f4856a;

        /* renamed from: b, reason: collision with root package name */
        public final String f4857b;
        public final ImmutableList c;

        public g(GenericDeclaration genericDeclaration, String str, Type[] typeArr) {
            m.b(typeArr, "bound for type variable");
            this.f4856a = (GenericDeclaration) Preconditions.checkNotNull(genericDeclaration);
            this.f4857b = (String) Preconditions.checkNotNull(str);
            this.c = ImmutableList.copyOf(typeArr);
        }

        public D getGenericDeclaration() {
            return (D) this.f4856a;
        }

        public String getName() {
            return this.f4857b;
        }

        public String toString() {
            return this.f4857b;
        }

        public int hashCode() {
            return this.f4856a.hashCode() ^ this.f4857b.hashCode();
        }

        public boolean equals(Object obj) {
            boolean z = e.f4853a;
            GenericDeclaration genericDeclaration = this.f4856a;
            String str = this.f4857b;
            if (z) {
                if (obj != null && Proxy.isProxyClass(obj.getClass()) && (Proxy.getInvocationHandler(obj) instanceof h)) {
                    g gVar = ((h) Proxy.getInvocationHandler(obj)).f4859a;
                    if (str.equals(gVar.getName()) && genericDeclaration.equals(gVar.getGenericDeclaration()) && this.c.equals(gVar.c)) {
                        return true;
                    }
                }
                return false;
            }
            if (obj instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) obj;
                if (str.equals(typeVariable.getName()) && genericDeclaration.equals(typeVariable.getGenericDeclaration())) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class i implements WildcardType, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableList f4860a;

        /* renamed from: b, reason: collision with root package name */
        public final ImmutableList f4861b;

        public i(Type[] typeArr, Type[] typeArr2) {
            m.b(typeArr, "lower bound for wildcard");
            m.b(typeArr2, "upper bound for wildcard");
            d dVar = d.c;
            this.f4860a = dVar.c(typeArr);
            this.f4861b = dVar.c(typeArr2);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Function function = m.f4846a;
            return (Type[]) this.f4860a.toArray(new Type[0]);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            Function function = m.f4846a;
            return (Type[]) this.f4861b.toArray(new Type[0]);
        }

        public boolean equals(Object obj) {
            if (obj instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) obj;
                if (this.f4860a.equals(Arrays.asList(wildcardType.getLowerBounds()))) {
                    if (this.f4861b.equals(Arrays.asList(wildcardType.getUpperBounds()))) {
                        return true;
                    }
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f4860a.hashCode() ^ this.f4861b.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            UnmodifiableIterator it = this.f4860a.iterator();
            while (it.hasNext()) {
                Type type = (Type) it.next();
                sb.append(" super ");
                sb.append(d.c.b(type));
            }
            Function function = m.f4846a;
            for (Type type2 : Iterables.filter(this.f4861b, Predicates.not(Predicates.equalTo(Object.class)))) {
                sb.append(" extends ");
                sb.append(d.c.b(type2));
            }
            return sb.toString();
        }
    }

    public static void b(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Preconditions.checkArgument(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class d {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4851a;

        /* renamed from: b, reason: collision with root package name */
        public static final c f4852b;
        public static final d c;

        public static class e extends com.google.common.reflect.d<Map.Entry<String, int[][]>> {
        }

        public static class f extends com.google.common.reflect.d<int[]> {
        }

        public abstract Type a(Type type);

        public abstract Type d(Type type);

        public enum a extends d {
            public a() {
                super("JAVA6", 0);
            }

            @Override // com.google.common.reflect.m.d
            public final Type a(Type type) {
                return new c(type);
            }

            @Override // com.google.common.reflect.m.d
            public final Type d(Type type) {
                Preconditions.checkNotNull(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new c(cls.getComponentType()) : type;
            }
        }

        public enum b extends d {
            public b() {
                super("JAVA7", 1);
            }

            @Override // com.google.common.reflect.m.d
            public final Type a(Type type) {
                if (type instanceof Class) {
                    Function function = m.f4846a;
                    return Array.newInstance((Class<?>) type, 0).getClass();
                }
                return new c(type);
            }

            @Override // com.google.common.reflect.m.d
            public final Type d(Type type) {
                return (Type) Preconditions.checkNotNull(type);
            }
        }

        public enum c extends d {
            public c() {
                super("JAVA8", 2);
            }

            @Override // com.google.common.reflect.m.d
            public final Type d(Type type) {
                return (Type) Preconditions.checkNotNull(type);
            }

            @Override // com.google.common.reflect.m.d
            public final Type a(Type type) {
                return d.f4851a.a(type);
            }

            @Override // com.google.common.reflect.m.d
            public final String b(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }

        /* renamed from: com.google.common.reflect.m$d$d, reason: collision with other inner class name */
        public enum C0139d extends d {
            public C0139d() {
                super("JAVA9", 3);
            }

            @Override // com.google.common.reflect.m.d
            public final Type d(Type type) {
                return (Type) Preconditions.checkNotNull(type);
            }

            @Override // com.google.common.reflect.m.d
            public final Type a(Type type) {
                return d.f4851a.a(type);
            }

            @Override // com.google.common.reflect.m.d
            public final String b(Type type) {
                return d.f4852b.b(type);
            }
        }

        static {
            a aVar = new a();
            b bVar = new b();
            f4851a = bVar;
            c cVar = new c();
            f4852b = cVar;
            C0139d c0139d = new C0139d();
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new e().a().toString().contains("java.util.Map.java.util.Map")) {
                    c = cVar;
                    return;
                } else {
                    c = c0139d;
                    return;
                }
            }
            if (new f().a() instanceof Class) {
                c = bVar;
            } else {
                c = aVar;
            }
        }

        public final ImmutableList c(Type[] typeArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (Type type : typeArr) {
                builder.add((ImmutableList.Builder) d(type));
            }
            return builder.build();
        }

        public String b(Type type) {
            Function function = m.f4846a;
            return type instanceof Class ? ((Class) type).getName() : type.toString();
        }
    }

    private m() {
    }
}

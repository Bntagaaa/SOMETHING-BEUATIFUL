package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
final class q5 {
    private q5() {
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4325a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4326b = new b();
        public static final C0117c c = new C0117c();
        public static final d d = new d();

        public abstract int resultIndex(Comparator comparator, Object obj, List list, int i);

        public enum a extends c {
            @Override // com.google.common.collect.q5.c
            public final int resultIndex(Comparator comparator, Object obj, List list, int i) {
                return i;
            }

            public a() {
                super("ANY_PRESENT", 0);
            }
        }

        public enum b extends c {
            public b() {
                super("LAST_PRESENT", 1);
            }

            @Override // com.google.common.collect.q5.c
            public final int resultIndex(Comparator comparator, Object obj, List list, int i) {
                int size = list.size() - 1;
                while (i < size) {
                    int i2 = ((i + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i2), obj) > 0) {
                        size = i2 - 1;
                    } else {
                        i = i2;
                    }
                }
                return i;
            }
        }

        /* renamed from: com.google.common.collect.q5$c$c, reason: collision with other inner class name */
        public enum C0117c extends c {
            public C0117c() {
                super("FIRST_PRESENT", 2);
            }

            @Override // com.google.common.collect.q5.c
            public final int resultIndex(Comparator comparator, Object obj, List list, int i) {
                int i2 = 0;
                while (i2 < i) {
                    int i3 = (i2 + i) >>> 1;
                    if (comparator.compare(list.get(i3), obj) < 0) {
                        i2 = i3 + 1;
                    } else {
                        i = i3;
                    }
                }
                return i2;
            }
        }

        public enum d extends c {
            public d() {
                super("FIRST_AFTER", 3);
            }

            @Override // com.google.common.collect.q5.c
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return c.f4326b.resultIndex(comparator, e, list, i) + 1;
            }
        }

        public enum e extends c {
            public e() {
                super("LAST_BEFORE", 4);
            }

            @Override // com.google.common.collect.q5.c
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return c.c.resultIndex(comparator, e, list, i) - 1;
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4323a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final C0116b f4324b = new C0116b();

        public abstract int resultIndex(int i);

        public enum a extends b {
            @Override // com.google.common.collect.q5.b
            public final int resultIndex(int i) {
                return i - 1;
            }

            public a() {
                super("NEXT_LOWER", 0);
            }
        }

        /* renamed from: com.google.common.collect.q5$b$b, reason: collision with other inner class name */
        public enum C0116b extends b {
            @Override // com.google.common.collect.q5.b
            public int resultIndex(int i) {
                return i;
            }

            public C0116b() {
                super("NEXT_HIGHER", 1);
            }
        }

        public enum c extends b {
            @Override // com.google.common.collect.q5.b
            public int resultIndex(int i) {
                return ~i;
            }

            public c() {
                super("INVERTED_INSERTION_INDEX", 2);
            }
        }
    }

    public static <E, K extends Comparable> int binarySearch(List<E> list, Function<? super E, K> function, @NullableDecl K k, c cVar, b bVar) {
        return binarySearch(list, function, k, Ordering.natural(), cVar, bVar);
    }

    public static <E, K> int binarySearch(List<E> list, Function<? super E, K> function, @NullableDecl K k, Comparator<? super K> comparator, c cVar, b bVar) {
        return binarySearch((List<? extends K>) Lists.transform(list, function), k, comparator, cVar, bVar);
    }

    public static <E> int binarySearch(List<? extends E> list, @NullableDecl E e, Comparator<? super E> comparator, c cVar, b bVar) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(cVar);
        Preconditions.checkNotNull(bVar);
        if (!(list instanceof RandomAccess)) {
            list = Lists.newArrayList(list);
        }
        int size = list.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            int iCompare = comparator.compare(e, list.get(i2));
            if (iCompare < 0) {
                size = i2 - 1;
            } else {
                if (iCompare <= 0) {
                    return i + cVar.resultIndex(comparator, e, list.subList(i, size + 1), i2 - i);
                }
                i = i2 + 1;
            }
        }
        return bVar.resultIndex(i);
    }
}

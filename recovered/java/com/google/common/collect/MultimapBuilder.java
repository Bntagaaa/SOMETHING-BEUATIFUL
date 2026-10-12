package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class MultimapBuilder<K0, V0> {
    public abstract <K extends K0, V extends V0> Multimap<K, V> build();

    public static class a extends MultimapBuilderWithKeys<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4052a;

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        public final Map a() {
            return k0.createWithExpectedSize(this.f4052a);
        }

        public a(int i) {
            this.f4052a = i;
        }
    }

    public static class b extends MultimapBuilderWithKeys<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4053a;

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        public final Map a() {
            return n0.createWithExpectedSize(this.f4053a);
        }

        public b(int i) {
            this.f4053a = i;
        }
    }

    public static final class g<V> implements Supplier<Set<V>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final int f4058a;

        @Override // com.google.common.base.Supplier
        public Set<V> get() {
            return l0.createWithExpectedSize(this.f4058a);
        }

        public g(int i) {
            g0.b(i, "expectedValuesPerKey");
            this.f4058a = i;
        }
    }

    public static final class h<V> implements Supplier<Set<V>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final int f4059a;

        @Override // com.google.common.base.Supplier
        public Set<V> get() {
            return o0.createWithExpectedSize(this.f4059a);
        }

        public h(int i) {
            g0.b(i, "expectedValuesPerKey");
            this.f4059a = i;
        }
    }

    public /* synthetic */ MultimapBuilder(int i2) {
        this();
    }

    private MultimapBuilder() {
    }

    public static MultimapBuilderWithKeys<Object> hashKeys() {
        return hashKeys(8);
    }

    public static MultimapBuilderWithKeys<Object> hashKeys(int i2) {
        g0.b(i2, "expectedKeys");
        return new a(i2);
    }

    public static MultimapBuilderWithKeys<Object> linkedHashKeys() {
        return linkedHashKeys(8);
    }

    public static MultimapBuilderWithKeys<Object> linkedHashKeys(int i2) {
        g0.b(i2, "expectedKeys");
        return new b(i2);
    }

    public static MultimapBuilderWithKeys<Comparable> treeKeys() {
        return treeKeys(Ordering.natural());
    }

    public static class c extends MultimapBuilderWithKeys<K0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Comparator f4054a;

        public c(Comparator comparator) {
            this.f4054a = comparator;
        }

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        public final Map a() {
            return new TreeMap(this.f4054a);
        }
    }

    public static <K0> MultimapBuilderWithKeys<K0> treeKeys(Comparator<K0> comparator) {
        Preconditions.checkNotNull(comparator);
        return new c(comparator);
    }

    public static class d extends MultimapBuilderWithKeys<K0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Class f4055a;

        public d(Class cls) {
            this.f4055a = cls;
        }

        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        public final Map a() {
            return new EnumMap(this.f4055a);
        }
    }

    public static <K0 extends Enum<K0>> MultimapBuilderWithKeys<K0> enumKeys(Class<K0> cls) {
        Preconditions.checkNotNull(cls);
        return new d(cls);
    }

    public static final class e<V> implements Supplier<List<V>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final int f4056a;

        public e(int i) {
            g0.b(i, "expectedValuesPerKey");
            this.f4056a = i;
        }

        @Override // com.google.common.base.Supplier
        public List<V> get() {
            return new ArrayList(this.f4056a);
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class i implements Supplier<List<Object>> {

        /* renamed from: a, reason: collision with root package name */
        public static final i f4060a = new i("INSTANCE", 0);

        public static <V> Supplier<List<V>> instance() {
            return f4060a;
        }

        @Override // com.google.common.base.Supplier
        public List<Object> get() {
            return new LinkedList();
        }
    }

    public static final class j<V> implements Supplier<SortedSet<V>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Comparator f4061a;

        public j(Comparator comparator) {
            this.f4061a = (Comparator) Preconditions.checkNotNull(comparator);
        }

        @Override // com.google.common.base.Supplier
        public SortedSet<V> get() {
            return new TreeSet(this.f4061a);
        }
    }

    public static final class f<V extends Enum<V>> implements Supplier<Set<V>>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Class f4057a;

        public f(Class cls) {
            this.f4057a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Supplier
        public Set<V> get() {
            return EnumSet.noneOf(this.f4057a);
        }
    }

    public static abstract class MultimapBuilderWithKeys<K0> {
        public abstract Map a();

        public ListMultimapBuilder<K0, Object> arrayListValues() {
            return arrayListValues(2);
        }

        public class a extends ListMultimapBuilder<K0, Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f4041a;

            public a(int i) {
                this.f4041a = i;
            }

            @Override // com.google.common.collect.MultimapBuilder.ListMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> ListMultimap<K, V> build() {
                return Multimaps.newListMultimap(MultimapBuilderWithKeys.this.a(), new e(this.f4041a));
            }
        }

        public ListMultimapBuilder<K0, Object> arrayListValues(int i) {
            g0.b(i, "expectedValuesPerKey");
            return new a(i);
        }

        public class b extends ListMultimapBuilder<K0, Object> {
            public b() {
            }

            @Override // com.google.common.collect.MultimapBuilder.ListMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> ListMultimap<K, V> build() {
                return Multimaps.newListMultimap(MultimapBuilderWithKeys.this.a(), i.instance());
            }
        }

        public ListMultimapBuilder<K0, Object> linkedListValues() {
            return new b();
        }

        public SetMultimapBuilder<K0, Object> hashSetValues() {
            return hashSetValues(2);
        }

        public class c extends SetMultimapBuilder<K0, Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f4044a;

            public c(int i) {
                this.f4044a = i;
            }

            @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> SetMultimap<K, V> build() {
                return Multimaps.newSetMultimap(MultimapBuilderWithKeys.this.a(), new g(this.f4044a));
            }
        }

        public SetMultimapBuilder<K0, Object> hashSetValues(int i) {
            g0.b(i, "expectedValuesPerKey");
            return new c(i);
        }

        public SetMultimapBuilder<K0, Object> linkedHashSetValues() {
            return linkedHashSetValues(2);
        }

        public class d extends SetMultimapBuilder<K0, Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f4046a;

            public d(int i) {
                this.f4046a = i;
            }

            @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V> SetMultimap<K, V> build() {
                return Multimaps.newSetMultimap(MultimapBuilderWithKeys.this.a(), new h(this.f4046a));
            }
        }

        public SetMultimapBuilder<K0, Object> linkedHashSetValues(int i) {
            g0.b(i, "expectedValuesPerKey");
            return new d(i);
        }

        public SortedSetMultimapBuilder<K0, Comparable> treeSetValues() {
            return treeSetValues(Ordering.natural());
        }

        public class e extends SortedSetMultimapBuilder<K0, V0> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Comparator f4048a;

            public e(Comparator comparator) {
                this.f4048a = comparator;
            }

            @Override // com.google.common.collect.MultimapBuilder.SortedSetMultimapBuilder, com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V extends V0> SortedSetMultimap<K, V> build() {
                return Multimaps.newSortedSetMultimap(MultimapBuilderWithKeys.this.a(), new j(this.f4048a));
            }
        }

        public <V0> SortedSetMultimapBuilder<K0, V0> treeSetValues(Comparator<V0> comparator) {
            Preconditions.checkNotNull(comparator, "comparator");
            return new e(comparator);
        }

        public class f extends SetMultimapBuilder<K0, V0> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Class f4050a;

            public f(Class cls) {
                this.f4050a = cls;
            }

            @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
            public <K extends K0, V extends V0> SetMultimap<K, V> build() {
                return Multimaps.newSetMultimap(MultimapBuilderWithKeys.this.a(), new f(this.f4050a));
            }
        }

        public <V0 extends Enum<V0>> SetMultimapBuilder<K0, V0> enumSetValues(Class<V0> cls) {
            Preconditions.checkNotNull(cls, "valueClass");
            return new f(cls);
        }
    }

    public <K extends K0, V extends V0> Multimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
        Multimap<K, V> multimapBuild = build();
        multimapBuild.putAll(multimap);
        return multimapBuild;
    }

    public static abstract class ListMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
        @Override // com.google.common.collect.MultimapBuilder
        public abstract <K extends K0, V extends V0> ListMultimap<K, V> build();

        public ListMultimapBuilder() {
            super(0);
        }

        @Override // com.google.common.collect.MultimapBuilder
        public <K extends K0, V extends V0> ListMultimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
            return (ListMultimap) super.build((Multimap) multimap);
        }
    }

    public static abstract class SetMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
        @Override // com.google.common.collect.MultimapBuilder
        public abstract <K extends K0, V extends V0> SetMultimap<K, V> build();

        public SetMultimapBuilder() {
            super(0);
        }

        @Override // com.google.common.collect.MultimapBuilder
        public <K extends K0, V extends V0> SetMultimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
            return (SetMultimap) super.build((Multimap) multimap);
        }
    }

    public static abstract class SortedSetMultimapBuilder<K0, V0> extends SetMultimapBuilder<K0, V0> {
        @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
        public abstract <K extends K0, V extends V0> SortedSetMultimap<K, V> build();

        @Override // com.google.common.collect.MultimapBuilder.SetMultimapBuilder, com.google.common.collect.MultimapBuilder
        public <K extends K0, V extends V0> SortedSetMultimap<K, V> build(Multimap<? extends K, ? extends V> multimap) {
            return (SortedSetMultimap) super.build((Multimap) multimap);
        }
    }
}

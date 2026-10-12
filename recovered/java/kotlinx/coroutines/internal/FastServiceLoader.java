package kotlinx.coroutines.internal;

import androidx.core.app.NotificationCompat;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.l;
import kotlin.collections.o;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.q;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J1\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/internal/FastServiceLoader;", "", "<init>", "()V", "", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "loadMainDispatcherFactory$kotlinx_coroutines_core", "()Ljava/util/List;", "loadMainDispatcherFactory", "S", "Ljava/lang/Class;", NotificationCompat.CATEGORY_SERVICE, "Ljava/lang/ClassLoader;", "loader", "loadProviders$kotlinx_coroutines_core", "(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;", "loadProviders", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,169:1\n85#1,5:170\n85#1,5:175\n139#1,13:191\n1#2:180\n1368#3:181\n1454#3,5:182\n1557#3:187\n1628#3,3:188\n1069#4,2:204\n*S KotlinDebug\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n*L\n62#1:170,5\n69#1:175,5\n125#1:191,13\n107#1:181\n107#1:182,5\n109#1:187\n109#1:188,3\n161#1:204,2\n*E\n"})
/* loaded from: classes2.dex */
public final class FastServiceLoader {

    @NotNull
    public static final FastServiceLoader INSTANCE = new FastServiceLoader();

    private FastServiceLoader() {
    }

    @NotNull
    public final List<MainDispatcherFactory> loadMainDispatcherFactory$kotlinx_coroutines_core() {
        MainDispatcherFactory mainDispatcherFactory;
        if (!FastServiceLoaderKt.getANDROID_DETECTED()) {
            ClassLoader classLoader = MainDispatcherFactory.class.getClassLoader();
            try {
                return loadProviders$kotlinx_coroutines_core(MainDispatcherFactory.class, classLoader);
            } catch (Throwable unused) {
                return CollectionsKt.toList(ServiceLoader.load(MainDispatcherFactory.class, classLoader));
            }
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            MainDispatcherFactory mainDispatcherFactory2 = null;
            try {
                mainDispatcherFactory = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
                mainDispatcherFactory = null;
            }
            if (mainDispatcherFactory == null) {
                ClassLoader classLoader2 = MainDispatcherFactory.class.getClassLoader();
                try {
                    return loadProviders$kotlinx_coroutines_core(MainDispatcherFactory.class, classLoader2);
                } catch (Throwable unused3) {
                    return CollectionsKt.toList(ServiceLoader.load(MainDispatcherFactory.class, classLoader2));
                }
            }
            arrayList.add(mainDispatcherFactory);
            try {
                mainDispatcherFactory2 = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused4) {
            }
            if (mainDispatcherFactory2 == null) {
                return arrayList;
            }
            arrayList.add(mainDispatcherFactory2);
            return arrayList;
        } catch (Throwable unused5) {
            ClassLoader classLoader3 = MainDispatcherFactory.class.getClassLoader();
            try {
                return loadProviders$kotlinx_coroutines_core(MainDispatcherFactory.class, classLoader3);
            } catch (Throwable unused6) {
                return CollectionsKt.toList(ServiceLoader.load(MainDispatcherFactory.class, classLoader3));
            }
        }
    }

    @NotNull
    public final <S> List<S> loadProviders$kotlinx_coroutines_core(@NotNull Class<S> service, @NotNull ClassLoader loader) throws IOException, ClassNotFoundException {
        BufferedReader bufferedReader;
        List listA;
        ArrayList<URL> list = Collections.list(loader.getResources("META-INF/services/".concat(service.getName())));
        Intrinsics.checkNotNullExpressionValue(list, "list(...)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            INSTANCE.getClass();
            String string = url.toString();
            if (q.startsWith$default(string, "jar", false, 2, null)) {
                String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringAfter$default(string, "jar:file:", (String) null, 2, (Object) null), '!', (String) null, 2, (Object) null);
                String strSubstringAfter$default = StringsKt__StringsKt.substringAfter$default(string, "!/", (String) null, 2, (Object) null);
                JarFile jarFile = new JarFile(strSubstringBefore$default, false);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(strSubstringAfter$default)), "UTF-8"));
                    try {
                        listA = a(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                        jarFile.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            jarFile.close();
                            throw th2;
                        } catch (Throwable th3) {
                            ExceptionsKt.addSuppressed(th, th3);
                            throw th;
                        }
                    }
                }
            } else {
                bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
                try {
                    List listA2 = a(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                    listA = listA2;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } finally {
                    }
                }
            }
            o.addAll(arrayList, listA);
        }
        Set<String> set = CollectionsKt___CollectionsKt.toSet(arrayList);
        if (set.isEmpty()) {
            throw new IllegalArgumentException("No providers were loaded with FastServiceLoader");
        }
        ArrayList arrayList2 = new ArrayList(l.collectionSizeOrDefault(set, 10));
        for (String str : set) {
            INSTANCE.getClass();
            Class<?> cls = Class.forName(str, false, loader);
            if (!service.isAssignableFrom(cls)) {
                throw new IllegalArgumentException(("Expected service of class " + service + ", but found " + cls).toString());
            }
            arrayList2.add(service.cast(cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])));
        }
        return arrayList2;
    }

    public static List a(BufferedReader bufferedReader) throws IOException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                String string = StringsKt__StringsKt.trim(StringsKt__StringsKt.substringBefore$default(line, "#", (String) null, 2, (Object) null)).toString();
                for (int i = 0; i < string.length(); i++) {
                    char cCharAt = string.charAt(i);
                    if (cCharAt != '.' && !Character.isJavaIdentifierPart(cCharAt)) {
                        throw new IllegalArgumentException("Illegal service provider class name: ".concat(string).toString());
                    }
                }
                if (string.length() > 0) {
                    linkedHashSet.add(string);
                }
            } else {
                return CollectionsKt.toList(linkedHashSet);
            }
        }
    }
}

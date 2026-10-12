package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.base.StandardSystemProperty;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.io.ByteSource;
import com.google.common.io.CharSource;
import com.google.common.io.Resources;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
/* loaded from: classes.dex */
public final class ClassPath {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f4807b = Logger.getLogger(ClassPath.class.getName());
    public static final Predicate c = new a();
    public static final Splitter d = Splitter.on(" ").omitEmptyStrings();

    /* renamed from: a, reason: collision with root package name */
    public final ImmutableSet f4808a;

    public ClassPath(ImmutableSet immutableSet) {
        this.f4808a = immutableSet;
    }

    public static ClassPath from(ClassLoader classLoader) throws IOException {
        Object resourceInfo;
        b bVar = new b();
        bVar.scan(classLoader);
        ImmutableSet.Builder builder = ImmutableSet.builder();
        for (Map.Entry entry : bVar.f4811b.entries()) {
            String str = (String) entry.getValue();
            ClassLoader classLoader2 = (ClassLoader) entry.getKey();
            if (str.endsWith(".class")) {
                resourceInfo = new ClassInfo(classLoader2, str);
            } else {
                resourceInfo = new ResourceInfo(classLoader2, str);
            }
            builder.add((ImmutableSet.Builder) resourceInfo);
        }
        return new ClassPath(builder.build());
    }

    public ImmutableSet<ResourceInfo> getResources() {
        return this.f4808a;
    }

    public ImmutableSet<ClassInfo> getAllClasses() {
        return FluentIterable.from(this.f4808a).filter(ClassInfo.class).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses() {
        return FluentIterable.from(this.f4808a).filter(ClassInfo.class).filter(c).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses(String str) {
        Preconditions.checkNotNull(str);
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it = getTopLevelClasses().iterator();
        while (it.hasNext()) {
            ClassInfo next = it.next();
            if (next.getPackageName().equals(str)) {
                builder.add((ImmutableSet.Builder) next);
            }
        }
        return builder.build();
    }

    public ImmutableSet<ClassInfo> getTopLevelClassesRecursive(String str) {
        Preconditions.checkNotNull(str);
        String str2 = str + '.';
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it = getTopLevelClasses().iterator();
        while (it.hasNext()) {
            ClassInfo next = it.next();
            if (next.getName().startsWith(str2)) {
                builder.add((ImmutableSet.Builder) next);
            }
        }
        return builder.build();
    }

    @Beta
    public static class ResourceInfo {

        /* renamed from: a, reason: collision with root package name */
        public final String f4809a;

        /* renamed from: b, reason: collision with root package name */
        public final ClassLoader f4810b;

        public ResourceInfo(ClassLoader classLoader, String str) {
            this.f4809a = (String) Preconditions.checkNotNull(str);
            this.f4810b = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        public final URL url() {
            ClassLoader classLoader = this.f4810b;
            String str = this.f4809a;
            URL resource = classLoader.getResource(str);
            if (resource != null) {
                return resource;
            }
            throw new NoSuchElementException(str);
        }

        public final ByteSource asByteSource() {
            return Resources.asByteSource(url());
        }

        public final CharSource asCharSource(Charset charset) {
            return Resources.asCharSource(url(), charset);
        }

        public final String getResourceName() {
            return this.f4809a;
        }

        public int hashCode() {
            return this.f4809a.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof ResourceInfo) {
                ResourceInfo resourceInfo = (ResourceInfo) obj;
                if (this.f4809a.equals(resourceInfo.f4809a) && this.f4810b == resourceInfo.f4810b) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return this.f4809a;
        }
    }

    public static class a implements Predicate<ClassInfo> {
        @Override // com.google.common.base.Predicate
        public boolean apply(ClassInfo classInfo) {
            return classInfo.c.indexOf(36) == -1;
        }
    }

    @Beta
    public static final class ClassInfo extends ResourceInfo {
        public final String c;

        public ClassInfo(ClassLoader classLoader, String str) {
            super(classLoader, str);
            Logger logger = ClassPath.f4807b;
            this.c = str.substring(0, str.length() - 6).replace('/', '.');
        }

        public String getPackageName() {
            return Reflection.getPackageName(this.c);
        }

        public String getSimpleName() {
            String str = this.c;
            int iLastIndexOf = str.lastIndexOf(36);
            if (iLastIndexOf != -1) {
                return CharMatcher.inRange('0', '9').trimLeadingFrom(str.substring(iLastIndexOf + 1));
            }
            String packageName = getPackageName();
            return packageName.isEmpty() ? str : str.substring(packageName.length() + 1);
        }

        public String getName() {
            return this.c;
        }

        public Class<?> load() {
            try {
                return this.f4810b.loadClass(this.c);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.reflect.ClassPath.ResourceInfo
        public String toString() {
            return this.c;
        }
    }

    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f4812a = Sets.newHashSet();

        public abstract void scanDirectory(ClassLoader classLoader, File file) throws IOException;

        public abstract void scanJarFile(ClassLoader classLoader, JarFile jarFile) throws IOException;

        public final void scan(ClassLoader classLoader) throws IOException {
            UnmodifiableIterator it = a(classLoader).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                c((ClassLoader) entry.getValue(), (File) entry.getKey());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void c(ClassLoader classLoader, File file) throws IOException {
            if (this.f4812a.add(file.getCanonicalFile())) {
                try {
                    if (file.exists()) {
                        if (file.isDirectory()) {
                            scanDirectory(classLoader, file);
                            return;
                        }
                        try {
                            JarFile jarFile = new JarFile(file);
                            try {
                                UnmodifiableIterator it = b(file, jarFile.getManifest()).iterator();
                                while (it.hasNext()) {
                                    c(classLoader, (File) it.next());
                                }
                                scanJarFile(classLoader, jarFile);
                                jarFile.close();
                            } catch (Throwable th) {
                                try {
                                    jarFile.close();
                                } catch (IOException unused) {
                                }
                                throw th;
                            }
                        } catch (IOException unused2) {
                        }
                    }
                } catch (SecurityException e) {
                    ClassPath.f4807b.warning("Cannot access " + file + ": " + e);
                }
            }
        }

        public static ImmutableSet b(File file, Manifest manifest) {
            if (manifest == null) {
                return ImmutableSet.of();
            }
            ImmutableSet.Builder builder = ImmutableSet.builder();
            String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
            if (value != null) {
                for (String str : ClassPath.d.split(value)) {
                    try {
                        URL url = new URL(file.toURI().toURL(), str);
                        if (url.getProtocol().equals("file")) {
                            builder.add((ImmutableSet.Builder) ClassPath.a(url));
                        }
                    } catch (MalformedURLException unused) {
                        ClassPath.f4807b.warning("Invalid Class-Path entry: " + str);
                    }
                }
            }
            return builder.build();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ImmutableMap a(ClassLoader classLoader) {
            ImmutableList immutableListOf;
            LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
            ClassLoader parent = classLoader.getParent();
            if (parent != null) {
                linkedHashMapNewLinkedHashMap.putAll(a(parent));
            }
            if (classLoader instanceof URLClassLoader) {
                immutableListOf = ImmutableList.copyOf(((URLClassLoader) classLoader).getURLs());
            } else if (!classLoader.equals(ClassLoader.getSystemClassLoader())) {
                immutableListOf = ImmutableList.of();
            } else {
                ImmutableList.Builder builder = ImmutableList.builder();
                for (String str : Splitter.on(StandardSystemProperty.PATH_SEPARATOR.value()).split(StandardSystemProperty.JAVA_CLASS_PATH.value())) {
                    try {
                        try {
                            builder.add((ImmutableList.Builder) new File(str).toURI().toURL());
                        } catch (SecurityException unused) {
                            builder.add((ImmutableList.Builder) new URL("file", (String) null, new File(str).getAbsolutePath()));
                        }
                    } catch (MalformedURLException e) {
                        ClassPath.f4807b.log(Level.WARNING, "malformed classpath entry: " + str, (Throwable) e);
                    }
                }
                immutableListOf = builder.build();
            }
            UnmodifiableIterator it = immutableListOf.iterator();
            while (it.hasNext()) {
                URL url = (URL) it.next();
                if (url.getProtocol().equals("file")) {
                    File fileA = ClassPath.a(url);
                    if (!linkedHashMapNewLinkedHashMap.containsKey(fileA)) {
                        linkedHashMapNewLinkedHashMap.put(fileA, classLoader);
                    }
                }
            }
            return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
        }
    }

    @VisibleForTesting
    public static final class b extends c {

        /* renamed from: b, reason: collision with root package name */
        public final SetMultimap f4811b = MultimapBuilder.hashKeys().linkedHashSetValues().build();

        @Override // com.google.common.reflect.ClassPath.c
        public void scanJarFile(ClassLoader classLoader, JarFile jarFile) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                if (!jarEntryNextElement.isDirectory() && !jarEntryNextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    this.f4811b.get((SetMultimap) classLoader).add(jarEntryNextElement.getName());
                }
            }
        }

        @Override // com.google.common.reflect.ClassPath.c
        public void scanDirectory(ClassLoader classLoader, File file) throws IOException {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            d(file, classLoader, "", hashSet);
        }

        public final void d(File file, ClassLoader classLoader, String str, HashSet hashSet) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                ClassPath.f4807b.warning("Cannot read directory " + file);
                return;
            }
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (hashSet.add(canonicalFile)) {
                        d(canonicalFile, classLoader, _COROUTINE.a.j(str, name, "/"), hashSet);
                        hashSet.remove(canonicalFile);
                    }
                } else {
                    String strZ = _COROUTINE.a.z(str, name);
                    if (!strZ.equals("META-INF/MANIFEST.MF")) {
                        this.f4811b.get((SetMultimap) classLoader).add(strZ);
                    }
                }
            }
        }
    }

    public static File a(URL url) {
        Preconditions.checkArgument(url.getProtocol().equals("file"));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }
}

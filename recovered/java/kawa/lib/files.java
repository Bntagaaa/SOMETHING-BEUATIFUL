package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.FileUtils;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.IsEqual;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.text.FilePath;
import gnu.text.Path;
import gnu.text.URIPath;
import java.io.File;
import java.io.IOException;
import kawa.standard.readchar;

/* loaded from: classes2.dex */
public class files extends ModuleBody {
    public static final ModuleMethod $Mn$Grpathname;
    public static final ModuleMethod $Pcfile$Mnseparator;
    public static final files $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SimpleSymbol Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final SimpleSymbol Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final SimpleSymbol Lit27;
    static final SimpleSymbol Lit28;
    static final SimpleSymbol Lit29;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SimpleSymbol Lit9;
    public static final ModuleMethod URI$Qu;
    public static final ModuleMethod absolute$Mnpath$Qu;
    public static final ModuleMethod copy$Mnfile;
    public static final ModuleMethod create$Mndirectory;
    public static final ModuleMethod delete$Mnfile;
    public static final ModuleMethod directory$Mnfiles;
    public static final ModuleMethod file$Mndirectory$Qu;
    public static final ModuleMethod file$Mnexists$Qu;
    public static final ModuleMethod file$Mnreadable$Qu;
    public static final ModuleMethod file$Mnwritable$Qu;
    public static final ModuleMethod filepath$Qu;
    public static final ModuleMethod make$Mntemporary$Mnfile;
    public static final ModuleMethod path$Mnauthority;
    public static final ModuleMethod path$Mndirectory;
    public static final ModuleMethod path$Mnextension;
    public static final ModuleMethod path$Mnfile;
    public static final ModuleMethod path$Mnfragment;
    public static final ModuleMethod path$Mnhost;
    public static final ModuleMethod path$Mnlast;
    public static final ModuleMethod path$Mnparent;
    public static final ModuleMethod path$Mnport;
    public static final ModuleMethod path$Mnquery;
    public static final ModuleMethod path$Mnscheme;
    public static final ModuleMethod path$Mnuser$Mninfo;
    public static final ModuleMethod path$Qu;
    public static final ModuleMethod rename$Mnfile;
    public static final ModuleMethod resolve$Mnuri;
    public static final ModuleMethod system$Mntmpdir;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("make-temporary-file");
        Lit29 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("resolve-uri");
        Lit28 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("system-tmpdir");
        Lit27 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("%file-separator");
        Lit26 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("->pathname");
        Lit25 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("directory-files");
        Lit24 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("create-directory");
        Lit23 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f("copy-file");
        Lit22 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("rename-file");
        Lit21 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("delete-file");
        Lit20 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("file-writable?");
        Lit19 = simpleSymbol11;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("file-readable?");
        Lit18 = simpleSymbol12;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f("file-directory?");
        Lit17 = simpleSymbol13;
        SimpleSymbol simpleSymbol14 = (SimpleSymbol) a.f("file-exists?");
        Lit16 = simpleSymbol14;
        SimpleSymbol simpleSymbol15 = (SimpleSymbol) a.f("path-fragment");
        Lit15 = simpleSymbol15;
        SimpleSymbol simpleSymbol16 = (SimpleSymbol) a.f("path-query");
        Lit14 = simpleSymbol16;
        SimpleSymbol simpleSymbol17 = (SimpleSymbol) a.f("path-port");
        Lit13 = simpleSymbol17;
        SimpleSymbol simpleSymbol18 = (SimpleSymbol) a.f("path-extension");
        Lit12 = simpleSymbol18;
        SimpleSymbol simpleSymbol19 = (SimpleSymbol) a.f("path-last");
        Lit11 = simpleSymbol19;
        SimpleSymbol simpleSymbol20 = (SimpleSymbol) a.f("path-parent");
        Lit10 = simpleSymbol20;
        SimpleSymbol simpleSymbol21 = (SimpleSymbol) a.f("path-directory");
        Lit9 = simpleSymbol21;
        SimpleSymbol simpleSymbol22 = (SimpleSymbol) a.f("path-file");
        Lit8 = simpleSymbol22;
        SimpleSymbol simpleSymbol23 = (SimpleSymbol) a.f("path-host");
        Lit7 = simpleSymbol23;
        SimpleSymbol simpleSymbol24 = (SimpleSymbol) a.f("path-user-info");
        Lit6 = simpleSymbol24;
        SimpleSymbol simpleSymbol25 = (SimpleSymbol) a.f("path-authority");
        Lit5 = simpleSymbol25;
        SimpleSymbol simpleSymbol26 = (SimpleSymbol) a.f("path-scheme");
        Lit4 = simpleSymbol26;
        SimpleSymbol simpleSymbol27 = (SimpleSymbol) a.f("absolute-path?");
        Lit3 = simpleSymbol27;
        SimpleSymbol simpleSymbol28 = (SimpleSymbol) a.f("URI?");
        Lit2 = simpleSymbol28;
        SimpleSymbol simpleSymbol29 = (SimpleSymbol) a.f("filepath?");
        Lit1 = simpleSymbol29;
        SimpleSymbol simpleSymbol30 = (SimpleSymbol) a.f("path?");
        Lit0 = simpleSymbol30;
        files filesVar = new files();
        $instance = filesVar;
        path$Qu = new ModuleMethod(filesVar, 1, simpleSymbol30, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        filepath$Qu = new ModuleMethod(filesVar, 2, simpleSymbol29, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        URI$Qu = new ModuleMethod(filesVar, 3, simpleSymbol28, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        absolute$Mnpath$Qu = new ModuleMethod(filesVar, 4, simpleSymbol27, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnscheme = new ModuleMethod(filesVar, 5, simpleSymbol26, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnauthority = new ModuleMethod(filesVar, 6, simpleSymbol25, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnuser$Mninfo = new ModuleMethod(filesVar, 7, simpleSymbol24, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnhost = new ModuleMethod(filesVar, 8, simpleSymbol23, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnfile = new ModuleMethod(filesVar, 9, simpleSymbol22, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mndirectory = new ModuleMethod(filesVar, 10, simpleSymbol21, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnparent = new ModuleMethod(filesVar, 11, simpleSymbol20, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnlast = new ModuleMethod(filesVar, 12, simpleSymbol19, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnextension = new ModuleMethod(filesVar, 13, simpleSymbol18, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnport = new ModuleMethod(filesVar, 14, simpleSymbol17, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnquery = new ModuleMethod(filesVar, 15, simpleSymbol16, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        path$Mnfragment = new ModuleMethod(filesVar, 16, simpleSymbol15, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        file$Mnexists$Qu = new ModuleMethod(filesVar, 17, simpleSymbol14, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        file$Mndirectory$Qu = new ModuleMethod(filesVar, 18, simpleSymbol13, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        file$Mnreadable$Qu = new ModuleMethod(filesVar, 19, simpleSymbol12, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        file$Mnwritable$Qu = new ModuleMethod(filesVar, 20, simpleSymbol11, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        delete$Mnfile = new ModuleMethod(filesVar, 21, simpleSymbol10, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        rename$Mnfile = new ModuleMethod(filesVar, 22, simpleSymbol9, 8194);
        copy$Mnfile = new ModuleMethod(filesVar, 23, simpleSymbol8, 8194);
        create$Mndirectory = new ModuleMethod(filesVar, 24, simpleSymbol7, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        directory$Mnfiles = new ModuleMethod(filesVar, 25, simpleSymbol6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Mn$Grpathname = new ModuleMethod(filesVar, 26, simpleSymbol5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $Pcfile$Mnseparator = new ModuleMethod(filesVar, 27, simpleSymbol4, 0);
        system$Mntmpdir = new ModuleMethod(filesVar, 28, simpleSymbol3, 0);
        resolve$Mnuri = new ModuleMethod(filesVar, 29, simpleSymbol2, 8194);
        make$Mntemporary$Mnfile = new ModuleMethod(filesVar, 30, simpleSymbol, 4096);
        filesVar.run();
    }

    public files() {
        ModuleInfo.register(this);
    }

    public static FilePath makeTemporaryFile() {
        return makeTemporaryFile("kawa~d.tmp");
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 1:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 2:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 3:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 4:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 5:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 6:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 7:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 8:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 9:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 10:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 11:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 12:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 13:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 14:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 15:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 16:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 17:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 18:
                if (Path.coerceToPathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 19:
                if (FilePath.coerceToFilePathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 20:
                if (FilePath.coerceToFilePathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 21:
                if (FilePath.coerceToFilePathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 22:
            case 23:
            case 27:
            case 28:
            case 29:
            default:
                return super.match1(moduleMethod, obj, callContext);
            case 24:
                if (FilePath.coerceToFilePathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 25:
                if (FilePath.coerceToFilePathOrNull(obj) == null) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 26:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 30:
                if (!(obj instanceof CharSequence)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
        }
    }

    public static boolean isPath(Object obj) {
        return obj instanceof Path;
    }

    public static boolean isFilepath(Object obj) {
        return obj instanceof FilePath;
    }

    public static boolean URI$Qu(Object obj) {
        return obj instanceof URIPath;
    }

    public static boolean isAbsolutePath(Path path) {
        return path.isAbsolute();
    }

    public static Object pathScheme(Path path) {
        String scheme = path.getScheme();
        return scheme == null ? Boolean.FALSE : scheme;
    }

    public static Object pathAuthority(Path path) {
        String authority = path.getAuthority();
        return authority == null ? Boolean.FALSE : authority;
    }

    public static Object pathUserInfo(Path path) {
        String userInfo = path.getUserInfo();
        return userInfo == null ? Boolean.FALSE : userInfo;
    }

    public static String pathHost(Path path) {
        return path.getHost();
    }

    public static Object pathFile(Path path) {
        String path2 = path.getPath();
        return path2 == null ? Boolean.FALSE : path2;
    }

    public static Object pathDirectory(Path path) {
        Path directory = path.getDirectory();
        return directory == null ? Boolean.FALSE : directory.toString();
    }

    public static Object pathParent(Path path) {
        Path parent = path.getParent();
        return parent == null ? Boolean.FALSE : parent.toString();
    }

    public static Object pathLast(Path path) {
        String last = path.getLast();
        return last == null ? Boolean.FALSE : last;
    }

    public static Object pathExtension(Path path) {
        String extension = path.getExtension();
        return extension == null ? Boolean.FALSE : extension;
    }

    public static int pathPort(Path path) {
        return path.getPort();
    }

    public static Object pathQuery(Path path) {
        String query = path.getQuery();
        return query == null ? Boolean.FALSE : query;
    }

    public static Object pathFragment(Path path) {
        String fragment = path.getFragment();
        return fragment == null ? Boolean.FALSE : fragment;
    }

    public static boolean isFileExists(Path path) {
        return path.exists();
    }

    public static boolean isFileDirectory(Path path) {
        return path.isDirectory();
    }

    public static boolean isFileReadable(FilePath filePath) {
        return filePath.toFile().canRead();
    }

    public static boolean isFileWritable(FilePath filePath) {
        return filePath.toFile().canWrite();
    }

    public static void deleteFile(FilePath filePath) throws IOException {
        if (!filePath.delete()) {
            throw new IOException(Format.formatToString(0, "cannot delete ~a", filePath).toString());
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 22) {
            if (FilePath.coerceToFilePathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (FilePath.coerceToFilePathOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i == 23) {
            if (Path.coerceToPathOrNull(obj) == null) {
                return -786431;
            }
            callContext.value1 = obj;
            if (Path.coerceToPathOrNull(obj2) == null) {
                return -786430;
            }
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
        if (i != 29) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        if (Path.coerceToPathOrNull(obj) == null) {
            return -786431;
        }
        callContext.value1 = obj;
        if (Path.coerceToPathOrNull(obj2) == null) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    public static boolean renameFile(FilePath filePath, FilePath filePath2) {
        return filePath.toFile().renameTo(filePath2.toFile());
    }

    public static void copyFile(Path path, Path path2) throws IOException {
        InPort inPortOpenInputFile = ports.openInputFile(path);
        OutPort outPortOpenOutputFile = ports.openOutputFile(path2);
        while (true) {
            Object objApply1 = readchar.readChar.apply1(inPortOpenInputFile);
            if (ports.isEofObject(objApply1)) {
                ports.closeOutputPort(outPortOpenOutputFile);
                ports.closeInputPort(inPortOpenInputFile);
                return;
            }
            ports.writeChar(objApply1, outPortOpenOutputFile);
        }
    }

    public static boolean createDirectory(FilePath filePath) {
        return filePath.toFile().mkdir();
    }

    public static Object directoryFiles(FilePath filePath) {
        File file = filePath.toFile();
        String[] list = new File(file == null ? null : file.toString()).list();
        if (list == null) {
            return Boolean.FALSE;
        }
        return LList.makeList(list, 0);
    }

    @Override // gnu.expr.ModuleBody
    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 27) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i == 28) {
            callContext.proc = moduleMethod;
            callContext.pc = 0;
            return 0;
        }
        if (i != 30) {
            return super.match0(moduleMethod, callContext);
        }
        callContext.proc = moduleMethod;
        callContext.pc = 0;
        return 0;
    }

    public static String $PcFileSeparator() {
        return System.getProperty("file.separator");
    }

    public static String systemTmpdir() {
        String property = System.getProperty("java.io.tmpdir");
        return property != null ? property : IsEqual.apply($PcFileSeparator(), "\\") ? "C:\\temp" : "/tmp";
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws IOException {
        int i = moduleMethod.selector;
        if (i == 22) {
            try {
                try {
                    return renameFile(FilePath.makeFilePath(obj), FilePath.makeFilePath(obj2)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "rename-file", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "rename-file", 1, obj);
            }
        }
        if (i == 23) {
            try {
                try {
                    copyFile(Path.valueOf(obj), Path.valueOf(obj2));
                    return Values.empty;
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "copy-file", 2, obj2);
                }
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "copy-file", 1, obj);
            }
        }
        if (i != 29) {
            return super.apply2(moduleMethod, obj, obj2);
        }
        try {
            try {
                return resolveUri(Path.valueOf(obj), Path.valueOf(obj2));
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "resolve-uri", 2, obj2);
            }
        } catch (ClassCastException e6) {
            throw new WrongType(e6, "resolve-uri", 1, obj);
        }
    }

    public static Path resolveUri(Path path, Path path2) {
        return path2.resolve(path);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply0(ModuleMethod moduleMethod) {
        int i = moduleMethod.selector;
        if (i == 27) {
            return $PcFileSeparator();
        }
        if (i != 28) {
            return i != 30 ? super.apply0(moduleMethod) : makeTemporaryFile();
        }
        return systemTmpdir();
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) throws IOException {
        switch (moduleMethod.selector) {
            case 1:
                return isPath(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 2:
                return isFilepath(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 3:
                return URI$Qu(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 4:
                try {
                    return isAbsolutePath(Path.valueOf(obj)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "absolute-path?", 1, obj);
                }
            case 5:
                try {
                    return pathScheme(Path.valueOf(obj));
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "path-scheme", 1, obj);
                }
            case 6:
                try {
                    return pathAuthority(Path.valueOf(obj));
                } catch (ClassCastException e3) {
                    throw new WrongType(e3, "path-authority", 1, obj);
                }
            case 7:
                try {
                    return pathUserInfo(Path.valueOf(obj));
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "path-user-info", 1, obj);
                }
            case 8:
                try {
                    return pathHost(Path.valueOf(obj));
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "path-host", 1, obj);
                }
            case 9:
                try {
                    return pathFile(Path.valueOf(obj));
                } catch (ClassCastException e6) {
                    throw new WrongType(e6, "path-file", 1, obj);
                }
            case 10:
                try {
                    return pathDirectory(Path.valueOf(obj));
                } catch (ClassCastException e7) {
                    throw new WrongType(e7, "path-directory", 1, obj);
                }
            case 11:
                try {
                    return pathParent(Path.valueOf(obj));
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "path-parent", 1, obj);
                }
            case 12:
                try {
                    return pathLast(Path.valueOf(obj));
                } catch (ClassCastException e9) {
                    throw new WrongType(e9, "path-last", 1, obj);
                }
            case 13:
                try {
                    return pathExtension(Path.valueOf(obj));
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "path-extension", 1, obj);
                }
            case 14:
                try {
                    return Integer.valueOf(pathPort(Path.valueOf(obj)));
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "path-port", 1, obj);
                }
            case 15:
                try {
                    return pathQuery(Path.valueOf(obj));
                } catch (ClassCastException e12) {
                    throw new WrongType(e12, "path-query", 1, obj);
                }
            case 16:
                try {
                    return pathFragment(Path.valueOf(obj));
                } catch (ClassCastException e13) {
                    throw new WrongType(e13, "path-fragment", 1, obj);
                }
            case 17:
                try {
                    return isFileExists(Path.valueOf(obj)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e14) {
                    throw new WrongType(e14, "file-exists?", 1, obj);
                }
            case 18:
                try {
                    return isFileDirectory(Path.valueOf(obj)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e15) {
                    throw new WrongType(e15, "file-directory?", 1, obj);
                }
            case 19:
                try {
                    return isFileReadable(FilePath.makeFilePath(obj)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e16) {
                    throw new WrongType(e16, "file-readable?", 1, obj);
                }
            case 20:
                try {
                    return isFileWritable(FilePath.makeFilePath(obj)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e17) {
                    throw new WrongType(e17, "file-writable?", 1, obj);
                }
            case 21:
                try {
                    deleteFile(FilePath.makeFilePath(obj));
                    return Values.empty;
                } catch (ClassCastException e18) {
                    throw new WrongType(e18, "delete-file", 1, obj);
                }
            case 22:
            case 23:
            case 27:
            case 28:
            case 29:
            default:
                return super.apply1(moduleMethod, obj);
            case 24:
                try {
                    return createDirectory(FilePath.makeFilePath(obj)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e19) {
                    throw new WrongType(e19, "create-directory", 1, obj);
                }
            case 25:
                try {
                    return directoryFiles(FilePath.makeFilePath(obj));
                } catch (ClassCastException e20) {
                    throw new WrongType(e20, "directory-files", 1, obj);
                }
            case 26:
                return Path.valueOf(obj);
            case 30:
                try {
                    return makeTemporaryFile((CharSequence) obj);
                } catch (ClassCastException e21) {
                    throw new WrongType(e21, "make-temporary-file", 1, obj);
                }
        }
    }

    public static FilePath makeTemporaryFile(CharSequence charSequence) {
        return FilePath.makeFilePath(FileUtils.createTempFile(charSequence.toString()));
    }
}

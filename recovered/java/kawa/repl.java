package kawa;

import _COROUTINE.a;
import com.google.appinventor.components.runtime.Component;
import gnu.bytecode.ClassType;
import gnu.expr.ApplicationMainSupport;
import gnu.expr.Compilation;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleExp;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleManager;
import gnu.kawa.servlet.HttpRequestContext;
import gnu.lists.FString;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.Environment;
import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure0or1;
import gnu.mapping.Values;
import gnu.text.Options;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.text.WriterManager;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Vector;

/* loaded from: classes2.dex */
public class repl extends Procedure0or1 {
    public static String compilationTopname = null;
    static int defaultParseOptions = 72;
    public static String homeDirectory;
    public static boolean noConsole;
    static Language previousLanguage;
    static boolean shutdownRegistered = WriterManager.instance.registerShutdownHook();
    Language language;

    public repl(Language language) {
        this.language = language;
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public Object apply0() {
        Shell.run(this.language, Environment.getCurrent());
        return Values.empty;
    }

    @Override // gnu.mapping.Procedure0or1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        Shell.run(this.language, (Environment) obj);
        return Values.empty;
    }

    public static void bad_option(String str) {
        System.err.println("kawa: bad option '" + str + "'");
        printOptions(System.err);
        System.exit(-1);
    }

    public static void printOption(PrintStream printStream, String str, String str2) {
        printStream.print(" ");
        printStream.print(str);
        int length = str.length() + 1;
        for (int i = 0; i < 30 - length; i++) {
            printStream.print(" ");
        }
        printStream.print(" ");
        printStream.println(str2);
    }

    public static void printOptions(PrintStream printStream) {
        printStream.println("Usage: [java kawa.repl | kawa] [options ...]");
        printStream.println();
        printStream.println(" Generic options:");
        printOption(printStream, "--help", "Show help about options");
        printOption(printStream, "--author", "Show author information");
        printOption(printStream, "--version", "Show version information");
        printStream.println();
        printStream.println(" Options");
        printOption(printStream, "-e <expr>", "Evaluate expression <expr>");
        printOption(printStream, "-c <expr>", "Same as -e, but make sure ~/.kawarc.scm is run first");
        printOption(printStream, "-f <filename>", "File to interpret");
        printOption(printStream, "-s| --", "Start reading commands interactively from console");
        printOption(printStream, "-w", "Launch the interpreter in a GUI window");
        printOption(printStream, "--server <port>", "Start a server accepting telnet connections on <port>");
        printOption(printStream, "--debug-dump-zip", "Compiled interactive expressions to a zip archive");
        printOption(printStream, "--debug-print-expr", "Print generated internal expressions");
        printOption(printStream, "--debug-print-final-expr", "Print expression after any optimizations");
        printOption(printStream, "--debug-error-prints-stack-trace", "Print stack trace with errors");
        printOption(printStream, "--debug-warning-prints-stack-trace", "Print stack trace with warnings");
        printOption(printStream, "--[no-]full-tailcalls", "(Don't) use full tail-calls");
        printOption(printStream, "-C <filename> ...", "Compile named files to Java class files");
        printOption(printStream, "--output-format <format>", "Use <format> when printing top-level output");
        printOption(printStream, "--<language>", "Select source language, one of:");
        String[][] languages = Language.getLanguages();
        for (int i = 0; i < languages.length; i++) {
            printStream.print("   ");
            String[] strArr = languages[i];
            int length = strArr.length - 1;
            for (int i2 = 0; i2 < length; i2++) {
                printStream.print(strArr[i2] + " ");
            }
            if (i == 0) {
                printStream.print("[default]");
            }
            printStream.println();
        }
        printStream.println(" Compilation options, must be specified before -C");
        printOption(printStream, "-d <dirname>", "Directory to place .class files in");
        printOption(printStream, "-P <prefix>", "Prefix to prepand to class names");
        printOption(printStream, "-T <topname>", "name to give to top-level class");
        printOption(printStream, "--main", "Generate an application, with a main method");
        printOption(printStream, "--applet", "Generate an applet");
        printOption(printStream, "--servlet", "Generate a servlet");
        printOption(printStream, "--module-static", "Top-level definitions are by default static");
        ArrayList<String> arrayListKeys = Compilation.options.keys();
        for (int i3 = 0; i3 < arrayListKeys.size(); i3++) {
            String str = arrayListKeys.get(i3);
            printOption(printStream, a.i("--", str), Compilation.options.getDoc(str));
        }
        printStream.println();
        printStream.println("For more information go to:  http://www.gnu.org/software/kawa/");
    }

    public static void checkInitFile() {
        Object fString;
        File file;
        if (homeDirectory == null) {
            String property = System.getProperty("user.home");
            homeDirectory = property;
            if (property != null) {
                fString = new FString(property);
                file = new File(homeDirectory, "/".equals(System.getProperty("file.separator")) ? ".kawarc.scm" : "kawarc.scm");
            } else {
                fString = Boolean.FALSE;
                file = null;
            }
            Environment.getCurrent().put("home-directory", fString);
            if (file == null || !file.exists() || Shell.runFileOrClass(file.getPath(), true, 0)) {
                return;
            }
            System.exit(-1);
        }
    }

    public static void setArgs(String[] strArr, int i) {
        ApplicationMainSupport.setArgs(strArr, i);
    }

    public static void getLanguageFromFilenameExtension(String str) throws ClassNotFoundException {
        if (previousLanguage == null) {
            Language instanceFromFilenameExtension = Language.getInstanceFromFilenameExtension(str);
            previousLanguage = instanceFromFilenameExtension;
            if (instanceFromFilenameExtension != null) {
                Language.setDefaults(instanceFromFilenameExtension);
                return;
            }
        }
        getLanguage();
    }

    public static void getLanguage() throws ClassNotFoundException {
        if (previousLanguage == null) {
            Language language = Language.getInstance(null);
            previousLanguage = language;
            Language.setDefaults(language);
        }
    }

    public static int processArgs(String[] strArr, int i, int i2) throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException, IOException {
        int i3;
        SourceMessages sourceMessages;
        int i4;
        int i5;
        PrintStream printStream;
        StringBuilder sb;
        OutPort outPortErrDefault;
        Throwable thRun;
        String strSubstring;
        int i6;
        int i7 = 0;
        int i8 = i;
        boolean z = false;
        while (i8 < i2) {
            String str = strArr[i8];
            if (str.equals("-c") || str.equals("-e")) {
                i3 = i8 + 1;
                if (i3 == i2) {
                    bad_option(str);
                }
                getLanguage();
                setArgs(strArr, i8 + 2);
                if (str.equals("-c")) {
                    checkInitFile();
                }
                Language defaultLanguage = Language.getDefaultLanguage();
                SourceMessages sourceMessages2 = new SourceMessages();
                Throwable thRun2 = Shell.run(defaultLanguage, Environment.getCurrent(), new CharArrayInPort(strArr[i3]), OutPort.outDefault(), (OutPort) null, sourceMessages2);
                if (thRun2 != null) {
                    Shell.printError(thRun2, sourceMessages2, OutPort.errDefault());
                    System.exit(-1);
                }
            } else {
                if (!str.equals("-f")) {
                    if (str.startsWith("--script")) {
                        String strSubstring2 = str.substring(8);
                        int i9 = i8 + 1;
                        if (strSubstring2.length() > 0) {
                            try {
                                i7 = Integer.parseInt(strSubstring2);
                            } catch (Throwable unused) {
                                i9 = i2;
                            }
                        }
                        if (i9 == i2) {
                            bad_option(str);
                        }
                        String str2 = strArr[i9];
                        getLanguageFromFilenameExtension(str2);
                        setArgs(strArr, i9 + 1);
                        checkInitFile();
                        if (!Shell.runFileOrClass(str2, true, i7)) {
                            System.exit(-1);
                        }
                        return -1;
                    }
                    if (str.equals("\\")) {
                        int i10 = i8 + 1;
                        if (i10 == i2) {
                            bad_option(str);
                        }
                        String str3 = strArr[i10];
                        SourceMessages sourceMessages3 = new SourceMessages();
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str3));
                            int i11 = bufferedInputStream.read();
                            if (i11 == 35) {
                                try {
                                    StringBuffer stringBuffer = new StringBuffer(100);
                                    Vector vector = new Vector(10);
                                    while (i11 != 10 && i11 != 13 && i11 >= 0) {
                                        i11 = bufferedInputStream.read();
                                    }
                                    int i12 = 0;
                                    while (true) {
                                        int i13 = bufferedInputStream.read();
                                        if (i13 < 0) {
                                            i4 = -1;
                                            try {
                                                printStream = System.err;
                                                sb = new StringBuilder();
                                                i5 = 1;
                                            } catch (Throwable th) {
                                                th = th;
                                                i5 = 1;
                                                sourceMessages = sourceMessages3;
                                                Shell.printError(th, sourceMessages, OutPort.errDefault());
                                                System.exit(i5);
                                                return i4;
                                            }
                                            try {
                                                sb.append("unexpected end-of-file processing argument line for: '");
                                                sb.append(str3);
                                                sb.append('\'');
                                                printStream.println(sb.toString());
                                                System.exit(-1);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                sourceMessages = sourceMessages3;
                                                Shell.printError(th, sourceMessages, OutPort.errDefault());
                                                System.exit(i5);
                                                return i4;
                                            }
                                        } else {
                                            i4 = -1;
                                            i5 = 1;
                                        }
                                        if (i12 == 0) {
                                            if (i13 != 92 && i13 != 39 && i13 != 34) {
                                                if (i13 == 10 || i13 == 13) {
                                                    break;
                                                }
                                                if (i13 == 32 || i13 == 9) {
                                                    if (stringBuffer.length() > 0) {
                                                        vector.addElement(stringBuffer.toString());
                                                        stringBuffer.setLength(0);
                                                    }
                                                }
                                            } else {
                                                i12 = i13;
                                            }
                                        } else if (i12 == 92) {
                                            i12 = 0;
                                        } else if (i13 == i12) {
                                            i12 = 0;
                                        }
                                        stringBuffer.append((char) i13);
                                    }
                                    if (stringBuffer.length() > 0) {
                                        vector.addElement(stringBuffer.toString());
                                    }
                                    int size = vector.size();
                                    if (size > 0) {
                                        String[] strArr2 = new String[size];
                                        vector.copyInto(strArr2);
                                        int iProcessArgs = processArgs(strArr2, 0, size);
                                        if (iProcessArgs >= 0 && iProcessArgs < size) {
                                            System.err.println("" + (size - iProcessArgs) + " unused meta args");
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    i4 = -1;
                                }
                            } else {
                                i4 = -1;
                                i5 = 1;
                            }
                            getLanguageFromFilenameExtension(str3);
                            InPort inPortOpenFile = InPort.openFile(bufferedInputStream, str3);
                            setArgs(strArr, i8 + 2);
                            checkInitFile();
                            outPortErrDefault = OutPort.errDefault();
                            thRun = Shell.run(Language.getDefaultLanguage(), Environment.getCurrent(), inPortOpenFile, OutPort.outDefault(), (OutPort) null, sourceMessages3);
                            sourceMessages = sourceMessages3;
                        } catch (Throwable th4) {
                            th = th4;
                            sourceMessages = sourceMessages3;
                            i4 = -1;
                            i5 = 1;
                        }
                        try {
                            sourceMessages.printAll(outPortErrDefault, 20);
                            if (thRun != null) {
                                if (!(thRun instanceof SyntaxException)) {
                                    throw thRun;
                                }
                                if (((SyntaxException) thRun).getMessages() != sourceMessages) {
                                    throw thRun;
                                }
                                System.exit(i5);
                                throw thRun;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            Shell.printError(th, sourceMessages, OutPort.errDefault());
                            System.exit(i5);
                            return i4;
                        }
                        return i4;
                    }
                    if (!str.equals("-s") && !str.equals("--")) {
                        if (str.equals("-w")) {
                            i8++;
                            getLanguage();
                            setArgs(strArr, i8);
                            checkInitFile();
                            startGuiConsole();
                            z = true;
                        } else if (str.equals("-d")) {
                            i8++;
                            if (i8 == i2) {
                                bad_option(str);
                            }
                            ModuleManager.getInstance().setCompilationDirectory(strArr[i8]);
                        } else if (str.equals("--target") || str.equals("target")) {
                            i8++;
                            if (i8 == i2) {
                                bad_option(str);
                            }
                            String str4 = strArr[i8];
                            if (str4.equals("7")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_7_VERSION;
                            }
                            if (str4.equals("6") || str4.equals("1.6")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_6_VERSION;
                            } else if (str4.equals(Component.TYPEFACE_FONT_AWESOME) || str4.equals("1.5")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_5_VERSION;
                            } else if (str4.equals("1.4")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_4_VERSION;
                            } else if (str4.equals("1.3")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_3_VERSION;
                            } else if (str4.equals("1.2")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_2_VERSION;
                            } else if (str4.equals("1.1")) {
                                Compilation.defaultClassFileVersion = ClassType.JDK_1_1_VERSION;
                            } else {
                                bad_option(str4);
                            }
                        } else if (str.equals("-P")) {
                            i8++;
                            if (i8 == i2) {
                                bad_option(str);
                            }
                            Compilation.classPrefixDefault = strArr[i8];
                        } else if (str.equals("-T")) {
                            i8++;
                            if (i8 == i2) {
                                bad_option(str);
                            }
                            compilationTopname = strArr[i8];
                        } else {
                            if (str.equals("-C")) {
                                int i14 = i8 + 1;
                                if (i14 == i2) {
                                    bad_option(str);
                                }
                                compileFiles(strArr, i14, i2);
                                return -1;
                            }
                            if (str.equals("--output-format") || str.equals("--format")) {
                                i8++;
                                if (i8 == i2) {
                                    bad_option(str);
                                }
                                Shell.setDefaultFormat(strArr[i8]);
                            } else {
                                String strSubstring3 = null;
                                if (str.equals("--connect")) {
                                    i8++;
                                    if (i8 == i2) {
                                        bad_option(str);
                                    }
                                    if (strArr[i8].equals("-")) {
                                        i6 = 0;
                                    } else {
                                        try {
                                            i6 = Integer.parseInt(strArr[i8]);
                                        } catch (NumberFormatException unused2) {
                                            bad_option("--connect port#");
                                            i6 = -1;
                                        }
                                    }
                                    try {
                                        Telnet telnet = new Telnet(new Socket(InetAddress.getByName(null), i6), true);
                                        TelnetInputStream inputStream = telnet.getInputStream();
                                        PrintStream printStream2 = new PrintStream((OutputStream) telnet.getOutputStream(), true);
                                        System.setIn(inputStream);
                                        System.setOut(printStream2);
                                        System.setErr(printStream2);
                                    } catch (IOException e) {
                                        e.printStackTrace(System.err);
                                        throw new Error(e.toString());
                                    }
                                } else if (str.equals("--server")) {
                                    getLanguage();
                                    int i15 = i8 + 1;
                                    if (i15 == i2) {
                                        bad_option(str);
                                    }
                                    if (!strArr[i15].equals("-")) {
                                        try {
                                            i7 = Integer.parseInt(strArr[i15]);
                                        } catch (NumberFormatException unused3) {
                                            bad_option("--server port#");
                                            i7 = -1;
                                        }
                                    }
                                    try {
                                        ServerSocket serverSocket = new ServerSocket(i7);
                                        int localPort = serverSocket.getLocalPort();
                                        System.err.println("Listening on port " + localPort);
                                        while (true) {
                                            System.err.print("waiting ... ");
                                            System.err.flush();
                                            Socket socketAccept = serverSocket.accept();
                                            System.err.println("got connection from " + socketAccept.getInetAddress() + " port:" + socketAccept.getPort());
                                            TelnetRepl.serve(Language.getDefaultLanguage(), socketAccept);
                                        }
                                    } catch (IOException e2) {
                                        throw new Error(e2.toString());
                                    }
                                } else if (str.equals("--http-auto-handler")) {
                                    i8 += 2;
                                    if (i8 >= i2) {
                                        bad_option(str);
                                    }
                                    System.err.println("kawa: HttpServer classes not found");
                                    System.exit(-1);
                                } else if (str.equals("--http-start")) {
                                    i8++;
                                    if (i8 >= i2) {
                                        bad_option("missing httpd port argument");
                                    }
                                    System.err.println("kawa: HttpServer classes not found");
                                    System.exit(-1);
                                } else if (str.equals("--main")) {
                                    Compilation.generateMainDefault = true;
                                } else if (str.equals("--applet")) {
                                    defaultParseOptions |= 16;
                                } else if (str.equals("--servlet")) {
                                    defaultParseOptions |= 32;
                                    HttpRequestContext.importServletDefinitions = 2;
                                } else if (str.equals("--debug-dump-zip")) {
                                    ModuleExp.dumpZipPrefix = "kawa-zip-dump-";
                                } else if (str.equals("--debug-print-expr")) {
                                    Compilation.debugPrintExpr = true;
                                } else if (str.equals("--debug-print-final-expr")) {
                                    Compilation.debugPrintFinalExpr = true;
                                } else if (str.equals("--debug-error-prints-stack-trace")) {
                                    SourceMessages.debugStackTraceOnError = true;
                                } else if (str.equals("--debug-warning-prints-stack-trace")) {
                                    SourceMessages.debugStackTraceOnWarning = true;
                                } else if (str.equals("--module-nonstatic") || str.equals("--no-module-static")) {
                                    Compilation.moduleStatic = -1;
                                } else if (str.equals("--module-static")) {
                                    Compilation.moduleStatic = 1;
                                } else if (str.equals("--module-static-run")) {
                                    Compilation.moduleStatic = 2;
                                } else if (str.equals("--no-inline") || str.equals("--inline=none")) {
                                    Compilation.inlineOk = false;
                                } else if (str.equals("--no-console")) {
                                    noConsole = true;
                                } else if (str.equals("--inline")) {
                                    Compilation.inlineOk = true;
                                } else if (str.equals("--cps")) {
                                    Compilation.defaultCallConvention = 4;
                                } else if (str.equals("--full-tailcalls")) {
                                    Compilation.defaultCallConvention = 3;
                                } else if (str.equals("--no-full-tailcalls")) {
                                    Compilation.defaultCallConvention = 1;
                                } else if (str.equals("--pedantic")) {
                                    Language.requirePedantic = true;
                                } else if (str.equals("--help")) {
                                    printOptions(System.out);
                                    System.exit(0);
                                } else if (str.equals("--author")) {
                                    System.out.println("Per Bothner <per@bothner.com>");
                                    System.exit(0);
                                } else if (str.equals("--version")) {
                                    System.out.print("Kawa ");
                                    System.out.print(Version.getVersion());
                                    System.out.println();
                                    System.out.println("Copyright (C) 2009 Per Bothner");
                                    z = true;
                                } else if (str.length() > 0 && str.charAt(0) == '-') {
                                    if (str.length() <= 2 || str.charAt(0) != '-') {
                                        strSubstring = str;
                                    } else {
                                        strSubstring = str.substring(str.charAt(1) != '-' ? 1 : 2);
                                    }
                                    Language language = Language.getInstance(strSubstring);
                                    if (language != null) {
                                        if (previousLanguage == null) {
                                            Language.setDefaults(language);
                                        } else {
                                            Language.setCurrentLanguage(language);
                                        }
                                        previousLanguage = language;
                                    } else {
                                        int iIndexOf = strSubstring.indexOf("=");
                                        if (iIndexOf >= 0) {
                                            strSubstring3 = strSubstring.substring(iIndexOf + 1);
                                            strSubstring = strSubstring.substring(0, iIndexOf);
                                        }
                                        boolean z2 = strSubstring.startsWith("no-") && strSubstring.length() > 3;
                                        if (strSubstring3 == null && z2) {
                                            strSubstring = strSubstring.substring(3);
                                            strSubstring3 = "no";
                                        }
                                        String strA = Compilation.options.set(strSubstring, strSubstring3);
                                        if (strA != null) {
                                            if (z2 && strA == Options.UNKNOWN) {
                                                strA = a.A("both '--no-' prefix and '=", strSubstring3, "' specified");
                                            }
                                            if (strA == Options.UNKNOWN) {
                                                bad_option(str);
                                            } else {
                                                System.err.println("kawa: bad option '" + str + "': " + strA);
                                                System.exit(-1);
                                            }
                                        }
                                    }
                                } else if (!ApplicationMainSupport.processSetProperty(str)) {
                                    break;
                                }
                            }
                        }
                        i8++;
                    }
                    getLanguage();
                    setArgs(strArr, i8 + 1);
                    checkInitFile();
                    Shell.run(Language.getDefaultLanguage(), Environment.getCurrent());
                    return -1;
                }
                i3 = i8 + 1;
                if (i3 == i2) {
                    bad_option(str);
                }
                String str5 = strArr[i3];
                getLanguageFromFilenameExtension(str5);
                setArgs(strArr, i8 + 2);
                checkInitFile();
                if (!Shell.runFileOrClass(str5, true, 0)) {
                    System.exit(-1);
                }
            }
            i8 = i3;
            z = true;
            i8++;
        }
        if (z) {
            return -1;
        }
        return i8;
    }

    public static void compileFiles(String[] strArr, int i, int i2) throws ClassNotFoundException {
        ModuleManager moduleManager = ModuleManager.getInstance();
        int i3 = i2 - i;
        Compilation[] compilationArr = new Compilation[i3];
        ModuleInfo[] moduleInfoArr = new ModuleInfo[i3];
        SourceMessages sourceMessages = new SourceMessages();
        for (int i4 = i; i4 < i2; i4++) {
            String str = strArr[i4];
            getLanguageFromFilenameExtension(str);
            try {
                try {
                    Compilation compilation = Language.getDefaultLanguage().parse(InPort.openFile(str), sourceMessages, defaultParseOptions);
                    String str2 = compilationTopname;
                    if (str2 != null) {
                        ClassType classType = new ClassType(Compilation.mangleNameIfNeeded(str2));
                        ModuleExp module = compilation.getModule();
                        module.setType(classType);
                        module.setName(compilationTopname);
                        compilation.mainClass = classType;
                    }
                    int i5 = i4 - i;
                    moduleInfoArr[i5] = moduleManager.find(compilation);
                    compilationArr[i5] = compilation;
                } catch (FileNotFoundException e) {
                    System.err.println(e);
                    System.exit(-1);
                    break;
                }
            } catch (Throwable th) {
                if (!(th instanceof SyntaxException) || th.getMessages() != sourceMessages) {
                    internalError(th, null, str);
                }
            }
            if (sourceMessages.seenErrorsOrWarnings()) {
                System.err.println("(compiling " + str + ')');
                if (sourceMessages.checkErrors(System.err, 20)) {
                    System.exit(1);
                }
            }
        }
        for (int i6 = i; i6 < i2; i6++) {
            String str3 = strArr[i6];
            int i7 = i6 - i;
            Compilation compilation2 = compilationArr[i7];
            try {
                System.err.println("(compiling " + str3 + " to " + compilation2.mainClass.getName() + ')');
                moduleInfoArr[i7].loadByStages(14);
                boolean zSeenErrors = sourceMessages.seenErrors();
                sourceMessages.checkErrors(System.err, 50);
                if (zSeenErrors) {
                    System.exit(-1);
                }
                compilationArr[i7] = compilation2;
                boolean zSeenErrors2 = sourceMessages.seenErrors();
                sourceMessages.checkErrors(System.err, 50);
                if (zSeenErrors2) {
                    System.exit(-1);
                }
            } catch (Throwable th2) {
                internalError(th2, compilation2, str3);
            }
        }
    }

    public static void internalError(Throwable th, Compilation compilation, Object obj) {
        StringBuffer stringBuffer = new StringBuffer();
        if (compilation != null) {
            String fileName = compilation.getFileName();
            int lineNumber = compilation.getLineNumber();
            if (fileName != null && lineNumber > 0) {
                stringBuffer.append(fileName);
                stringBuffer.append(':');
                stringBuffer.append(lineNumber);
                stringBuffer.append(": ");
            }
        }
        stringBuffer.append("internal error while compiling ");
        stringBuffer.append(obj);
        System.err.println(stringBuffer.toString());
        th.printStackTrace(System.err);
        System.exit(-1);
    }

    public static void main(String[] strArr) {
        try {
            int iProcessArgs = processArgs(strArr, 0, strArr.length);
            if (iProcessArgs < 0) {
                return;
            }
            if (iProcessArgs < strArr.length) {
                String str = strArr[iProcessArgs];
                getLanguageFromFilenameExtension(str);
                setArgs(strArr, iProcessArgs + 1);
                checkInitFile();
                Shell.runFileOrClass(str, false, 0);
            } else {
                getLanguage();
                setArgs(strArr, iProcessArgs);
                checkInitFile();
                if (shouldUseGuiConsole()) {
                    startGuiConsole();
                } else if (!Shell.run(Language.getDefaultLanguage(), Environment.getCurrent())) {
                    System.exit(-1);
                }
            }
            if (!shutdownRegistered) {
                OutPort.runCleanups();
            }
            ModuleBody.exitDecrement();
        } finally {
            if (!shutdownRegistered) {
                OutPort.runCleanups();
            }
            ModuleBody.exitDecrement();
        }
    }

    public static boolean shouldUseGuiConsole() {
        if (noConsole) {
            return true;
        }
        return System.class.getMethod("console", new Class[0]).invoke(new Object[0], new Object[0]) == null;
    }

    private static void startGuiConsole() throws IllegalAccessException, InstantiationException {
        try {
            Class.forName("kawa.GuiConsole").newInstance();
        } catch (Exception e) {
            System.err.println("failed to create Kawa window: " + e);
            System.exit(-1);
        }
    }
}

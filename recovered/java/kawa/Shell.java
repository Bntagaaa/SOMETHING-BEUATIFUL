package kawa;

import gnu.bytecode.ZipLoader;
import gnu.expr.Compilation;
import gnu.expr.CompiledModule;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleExp;
import gnu.expr.ModuleManager;
import gnu.lists.AbstractFormat;
import gnu.lists.Consumer;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.TtyInPort;
import gnu.mapping.Values;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongArguments;
import gnu.text.FilePath;
import gnu.text.Path;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.URL;

/* loaded from: classes2.dex */
public class Shell {
    private static Class[] boolClasses;
    public static ThreadLocal currentLoadPath = new ThreadLocal();
    public static Object[] defaultFormatInfo;
    public static Method defaultFormatMethod;
    public static String defaultFormatName;
    static Object[][] formats;
    private static Class[] httpPrinterClasses;
    private static Class[] noClasses;
    private static Object portArg;
    private static Class[] xmlPrinterClasses;

    static {
        Class[] clsArr = new Class[0];
        noClasses = clsArr;
        Class[] clsArr2 = {Boolean.TYPE};
        boolClasses = clsArr2;
        Class[] clsArr3 = {OutPort.class, Object.class};
        xmlPrinterClasses = clsArr3;
        Class[] clsArr4 = {OutPort.class};
        httpPrinterClasses = clsArr4;
        portArg = "(port)";
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        formats = new Object[][]{new Object[]{"scheme", "gnu.kawa.functions.DisplayFormat", "getSchemeFormat", clsArr2, bool}, new Object[]{"readable-scheme", "gnu.kawa.functions.DisplayFormat", "getSchemeFormat", clsArr2, bool2}, new Object[]{"elisp", "gnu.kawa.functions.DisplayFormat", "getEmacsLispFormat", clsArr2, bool}, new Object[]{"readable-elisp", "gnu.kawa.functions.DisplayFormat", "getEmacsLispFormat", clsArr2, bool2}, new Object[]{"clisp", "gnu.kawa.functions.DisplayFormat", "getCommonLispFormat", clsArr2, bool}, new Object[]{"readable-clisp", "gnu.kawa.functions.DisplayFormat", "getCommonLispFormat", clsArr2, bool2}, new Object[]{"commonlisp", "gnu.kawa.functions.DisplayFormat", "getCommonLispFormat", clsArr2, bool}, new Object[]{"readable-commonlisp", "gnu.kawa.functions.DisplayFormat", "getCommonLispFormat", clsArr2, bool2}, new Object[]{"xml", "gnu.xml.XMLPrinter", "make", clsArr3, "(port)", null}, new Object[]{"html", "gnu.xml.XMLPrinter", "make", clsArr3, "(port)", "html"}, new Object[]{"xhtml", "gnu.xml.XMLPrinter", "make", clsArr3, "(port)", "xhtml"}, new Object[]{"cgi", "gnu.kawa.xml.HttpPrinter", "make", clsArr4, "(port)"}, new Object[]{"ignore", "gnu.lists.VoidConsumer", "getInstance", clsArr}, new Object[]{null}};
    }

    public static void setDefaultFormat(String str) {
        Object[] objArr;
        String strIntern = str.intern();
        defaultFormatName = strIntern;
        int i = 0;
        while (true) {
            objArr = formats[i];
            Object obj = objArr[0];
            if (obj == null) {
                System.err.println("kawa: unknown output format '" + strIntern + "'");
                System.exit(-1);
            } else if (obj == strIntern) {
                break;
            }
            i++;
        }
        defaultFormatInfo = objArr;
        try {
            defaultFormatMethod = Class.forName((String) objArr[1]).getMethod((String) objArr[2], (Class[]) objArr[3]);
        } catch (Throwable th) {
            System.err.println("kawa:  caught " + th + " while looking for format '" + strIntern + "'");
            System.exit(-1);
        }
        if (defaultFormatInfo[1].equals("gnu.lists.VoidConsumer")) {
            return;
        }
        ModuleBody.setMainPrintValues(true);
    }

    public static Consumer getOutputConsumer(OutPort outPort) {
        Object[] objArr = defaultFormatInfo;
        if (outPort == null) {
            return VoidConsumer.getInstance();
        }
        if (objArr == null) {
            return Language.getDefaultLanguage().getOutputConsumer(outPort);
        }
        try {
            int length = objArr.length - 4;
            Object[] objArr2 = new Object[length];
            System.arraycopy(objArr, 4, objArr2, 0, length);
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                if (objArr2[length] == portArg) {
                    objArr2[length] = outPort;
                }
            }
            Object objInvoke = defaultFormatMethod.invoke(null, objArr2);
            if (objInvoke instanceof AbstractFormat) {
                outPort.objectFormat = (AbstractFormat) objInvoke;
                return outPort;
            }
            return (Consumer) objInvoke;
        } catch (Throwable th) {
            throw new RuntimeException("cannot get output-format '" + defaultFormatName + "' - caught " + th);
        }
    }

    public static boolean run(Language language, Environment environment) {
        OutPort outPortErrDefault;
        InPort inPortInDefault = InPort.inDefault();
        SourceMessages sourceMessages = new SourceMessages();
        if (inPortInDefault instanceof TtyInPort) {
            Procedure prompter = language.getPrompter();
            if (prompter != null) {
                ((TtyInPort) inPortInDefault).setPrompter(prompter);
            }
            outPortErrDefault = OutPort.errDefault();
        } else {
            outPortErrDefault = null;
        }
        Throwable thRun = run(language, environment, inPortInDefault, OutPort.outDefault(), outPortErrDefault, sourceMessages);
        if (thRun == null) {
            return true;
        }
        printError(thRun, sourceMessages, OutPort.errDefault());
        return false;
    }

    public static Throwable run(Language language, Environment environment, InPort inPort, OutPort outPort, OutPort outPort2, SourceMessages sourceMessages) {
        AbstractFormat abstractFormat = outPort != null ? outPort.objectFormat : null;
        try {
            Throwable thRun = run(language, environment, inPort, getOutputConsumer(outPort), outPort2, null, sourceMessages);
            if (outPort != null) {
                outPort.objectFormat = abstractFormat;
            }
            return thRun;
        } finally {
        }
    }

    public static boolean run(Language language, Environment environment, InPort inPort, Consumer consumer, OutPort outPort, URL url) {
        SourceMessages sourceMessages = new SourceMessages();
        Throwable thRun = run(language, environment, inPort, consumer, outPort, url, sourceMessages);
        if (thRun != null) {
            printError(thRun, sourceMessages, outPort);
        }
        return thRun == null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b8, code lost:
    
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Throwable run(gnu.expr.Language r16, gnu.mapping.Environment r17, gnu.mapping.InPort r18, gnu.lists.Consumer r19, gnu.mapping.OutPort r20, java.net.URL r21, gnu.text.SourceMessages r22) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.Shell.run(gnu.expr.Language, gnu.mapping.Environment, gnu.mapping.InPort, gnu.lists.Consumer, gnu.mapping.OutPort, java.net.URL, gnu.text.SourceMessages):java.lang.Throwable");
    }

    public static void printError(Throwable th, SourceMessages sourceMessages, OutPort outPort) {
        if (th instanceof WrongArguments) {
            WrongArguments wrongArguments = (WrongArguments) th;
            sourceMessages.printAll(outPort, 20);
            if (wrongArguments.usage != null) {
                outPort.println("usage: " + wrongArguments.usage);
            }
            wrongArguments.printStackTrace(outPort);
            return;
        }
        if (th instanceof ClassCastException) {
            sourceMessages.printAll(outPort, 20);
            outPort.println("Invalid parameter, was: " + th.getMessage());
            th.printStackTrace(outPort);
            return;
        }
        if (th instanceof SyntaxException) {
            SyntaxException syntaxException = (SyntaxException) th;
            if (syntaxException.getMessages() == sourceMessages) {
                syntaxException.printAll(outPort, 20);
                syntaxException.clear();
                return;
            }
        }
        sourceMessages.printAll(outPort, 20);
        th.printStackTrace(outPort);
    }

    public static final CompiledModule checkCompiledZip(InputStream inputStream, Path path, Environment environment, Language language) throws IOException {
        try {
            inputStream.mark(5);
            boolean z = inputStream.read() == 80 && inputStream.read() == 75 && inputStream.read() == 3 && inputStream.read() == 4;
            inputStream.reset();
            if (!z) {
                return null;
            }
            inputStream.close();
            Environment current = Environment.getCurrent();
            String string = path.toString();
            try {
                if (environment != current) {
                    try {
                        Environment.setCurrent(environment);
                    } catch (IOException e) {
                        throw new WrappedException("load: " + string + " - " + e.toString(), e);
                    }
                }
                if (!(path instanceof FilePath)) {
                    throw new RuntimeException("load: " + string + " - not a file path");
                }
                File file = ((FilePath) path).toFile();
                if (!file.exists()) {
                    throw new RuntimeException("load: " + string + " - not found");
                }
                if (!file.canRead()) {
                    throw new RuntimeException("load: " + string + " - not readable");
                }
                CompiledModule compiledModuleMake = CompiledModule.make(new ZipLoader(string).loadAllClasses(), language);
                if (environment != current) {
                    Environment.setCurrent(current);
                }
                return compiledModuleMake;
            } catch (Throwable th) {
                if (environment != current) {
                    Environment.setCurrent(current);
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v8, types: [boolean] */
    public static boolean runFileOrClass(String str, boolean z, int i) {
        Path pathValueOf;
        InputStream inputStreamOpenInputStream;
        Language defaultLanguage = Language.getDefaultLanguage();
        try {
            if (str.equals("-")) {
                pathValueOf = Path.valueOf("/dev/stdin");
                inputStreamOpenInputStream = System.in;
            } else {
                pathValueOf = Path.valueOf(str);
                inputStreamOpenInputStream = pathValueOf.openInputStream();
            }
            try {
                str = runFile(inputStreamOpenInputStream, pathValueOf, Environment.getCurrent(), z, i);
                return str;
            } catch (Throwable th) {
                th.printStackTrace(System.err);
                return false;
            }
        } catch (Throwable th2) {
            try {
                try {
                    CompiledModule.make(Class.forName(str), defaultLanguage).evalModule(Environment.getCurrent(), OutPort.outDefault());
                    return true;
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    return false;
                }
            } catch (Throwable unused) {
                System.err.println("Cannot read file " + th2.getMessage());
                return false;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    public static final boolean runFile(InputStream inputStream, Path path, Environment environment, boolean z, int i) throws Throwable {
        Environment environment2;
        if (!(inputStream instanceof BufferedInputStream)) {
            inputStream = new BufferedInputStream(inputStream);
        }
        Language defaultLanguage = Language.getDefaultLanguage();
        Path path2 = (Path) currentLoadPath.get();
        try {
            currentLoadPath.set(path);
            CompiledModule compiledModuleCheckCompiledZip = checkCompiledZip(inputStream, path, environment, defaultLanguage);
            if (compiledModuleCheckCompiledZip == null) {
                InPort inPortOpenFile = InPort.openFile(inputStream, path);
                while (true) {
                    i--;
                    if (i < 0) {
                        try {
                            break;
                        } catch (Throwable th) {
                            inPortOpenFile.close();
                            throw th;
                        }
                    }
                    inPortOpenFile.skipRestOfLine();
                }
                SourceMessages sourceMessages = new SourceMessages();
                URL url = path.toURL();
                if (z) {
                    environment2 = environment;
                    Throwable thRun = run(defaultLanguage, environment2, inPortOpenFile, ModuleBody.getMainPrintValues() ? getOutputConsumer(OutPort.outDefault()) : new VoidConsumer(), null, url, sourceMessages);
                    if (thRun != null) {
                        throw thRun;
                    }
                } else {
                    environment2 = environment;
                    compiledModuleCheckCompiledZip = compileSource(inPortOpenFile, environment2, url, defaultLanguage, sourceMessages);
                    sourceMessages.printAll(OutPort.errDefault(), 20);
                    if (compiledModuleCheckCompiledZip == null) {
                        inPortOpenFile.close();
                        currentLoadPath.set(path2);
                        return false;
                    }
                }
                inPortOpenFile.close();
            } else {
                environment2 = environment;
            }
            if (compiledModuleCheckCompiledZip != null) {
                compiledModuleCheckCompiledZip.evalModule(environment2, OutPort.outDefault());
            }
            currentLoadPath.set(path2);
            return true;
        } catch (Throwable th2) {
            currentLoadPath.set(path2);
            throw th2;
        }
    }

    public static CompiledModule compileSource(InPort inPort, Environment environment, URL url, Language language, SourceMessages sourceMessages) throws Throwable {
        Compilation compilation = language.parse(inPort, sourceMessages, 1, ModuleManager.getInstance().findWithSourcePath(inPort.getName()));
        CallContext.getInstance().values = Values.noArgs;
        Object objEvalModule1 = ModuleExp.evalModule1(environment, compilation, url, null);
        if (objEvalModule1 == null || sourceMessages.seenErrors()) {
            return null;
        }
        return new CompiledModule(compilation.getModule(), objEvalModule1, language);
    }
}

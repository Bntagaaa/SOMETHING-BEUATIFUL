package kawa.standard;

import gnu.expr.Expression;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleManager;
import gnu.expr.ScopeExp;
import gnu.lists.Pair;
import gnu.text.Path;
import java.util.Hashtable;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class require extends Syntax {
    private static final String SLIB_PREFIX = "gnu.kawa.slib.";
    static Hashtable featureMap;
    public static final require require;

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return null;
    }

    static {
        require requireVar = new require();
        require = requireVar;
        requireVar.setName("require");
        featureMap = new Hashtable();
        map("generic-write", "gnu.kawa.slib.genwrite");
        map("pretty-print", "gnu.kawa.slib.pp");
        map("pprint-file", "gnu.kawa.slib.ppfile");
        map("printf", "gnu.kawa.slib.printf");
        map("xml", "gnu.kawa.slib.XML");
        map("readtable", "gnu.kawa.slib.readtable");
        map("srfi-10", "gnu.kawa.slib.readtable");
        map("http", "gnu.kawa.servlet.HTTP");
        map("servlets", "gnu.kawa.servlet.servlets");
        map("srfi-1", "gnu.kawa.slib.srfi1");
        map("list-lib", "gnu.kawa.slib.srfi1");
        map("srfi-2", "gnu.kawa.slib.srfi2");
        map("and-let*", "gnu.kawa.slib.srfi2");
        map("srfi-13", "gnu.kawa.slib.srfi13");
        map("string-lib", "gnu.kawa.slib.srfi13");
        map("srfi-34", "gnu.kawa.slib.srfi34");
        map("srfi-35", "gnu.kawa.slib.conditions");
        map("condition", "gnu.kawa.slib.conditions");
        map("conditions", "gnu.kawa.slib.conditions");
        map("srfi-37", "gnu.kawa.slib.srfi37");
        map("args-fold", "gnu.kawa.slib.srfi37");
        map("srfi-64", "gnu.kawa.slib.testing");
        map("testing", "gnu.kawa.slib.testing");
        map("srfi-69", "gnu.kawa.slib.srfi69");
        map("hash-table", "gnu.kawa.slib.srfi69");
        map("basic-hash-tables", "gnu.kawa.slib.srfi69");
        map("srfi-95", "kawa.lib.srfi95");
        map("sorting-and-merging", "kawa.lib.srfi95");
        map("regex", "kawa.lib.kawa.regex");
        map("pregexp", "gnu.kawa.slib.pregexp");
        map("gui", "gnu.kawa.slib.gui");
        map("swing-gui", "gnu.kawa.slib.swing");
        map("android-defs", "gnu.kawa.android.defs");
        map("syntax-utils", "gnu.kawa.slib.syntaxutils");
    }

    public static void map(String str, String str2) {
        featureMap.put(str, str2);
    }

    public static String mapFeature(String str) {
        return (String) featureMap.get(str);
    }

    public static Object find(String str) {
        return ModuleManager.getInstance().findWithClassName(str).getInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanForDefinitions(gnu.lists.Pair r11, java.util.Vector r12, gnu.expr.ScopeExp r13, kawa.lang.Translator r14) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.require.scanForDefinitions(gnu.lists.Pair, java.util.Vector, gnu.expr.ScopeExp, kawa.lang.Translator):boolean");
    }

    public static ModuleInfo lookupModuleFromSourcePath(String str, ScopeExp scopeExp) {
        ModuleManager moduleManager = ModuleManager.getInstance();
        String fileName = scopeExp.getFileName();
        if (fileName != null) {
            str = Path.valueOf(fileName).resolve(str).toString();
        }
        return moduleManager.findWithSourcePath(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0358  */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean importDefinitions(java.lang.String r23, gnu.expr.ModuleInfo r24, gnu.mapping.Procedure r25, java.util.Vector r26, gnu.expr.ScopeExp r27, gnu.expr.Compilation r28) {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.require.importDefinitions(java.lang.String, gnu.expr.ModuleInfo, gnu.mapping.Procedure, java.util.Vector, gnu.expr.ScopeExp, gnu.expr.Compilation):boolean");
    }
}

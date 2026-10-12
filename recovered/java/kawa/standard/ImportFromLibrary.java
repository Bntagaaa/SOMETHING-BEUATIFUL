package kawa.standard;

import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.runtime.Component;
import gnu.expr.Expression;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class ImportFromLibrary extends Syntax {
    private static final String BUILTIN = "";
    public String[] classPrefixPath = {"", "kawa.lib."};
    public static final ImportFromLibrary instance = new ImportFromLibrary();
    private static final String MISSING = null;
    static final String[][] SRFI97Map = {new String[]{"1", "lists", "gnu.kawa.slib.srfi1"}, new String[]{"2", "and-let*", "gnu.kawa.slib.srfi2"}, new String[]{Component.TYPEFACE_FONT_AWESOME, "let", null}, new String[]{"6", "basic-string-ports", ""}, new String[]{"8", "receive", ""}, new String[]{"9", "records", ""}, new String[]{"11", "let-values", ""}, new String[]{"13", "strings", "gnu.kawa.slib.srfi13"}, new String[]{"14", "char-sets", null}, new String[]{"16", "case-lambda", ""}, new String[]{"17", "generalized-set!", ""}, new String[]{"18", "multithreading", null}, new String[]{"19", "time", null}, new String[]{ComponentConstants.DEFAULT_MIN_SDK, "real-time-multithreading", null}, new String[]{"23", "error", ""}, new String[]{"25", "multi-dimensional-arrays", ""}, new String[]{"26", "cut", ""}, new String[]{"27", "random-bits", null}, new String[]{"28", "basic-format-strings", ""}, new String[]{"29", "localization", null}, new String[]{"31", "rec", null}, new String[]{"38", "with-shared-structure", null}, new String[]{"39", "parameters", ""}, new String[]{"41", "streams", null}, new String[]{"42", "eager-comprehensions", null}, new String[]{"43", "vectors", null}, new String[]{"44", "collections", null}, new String[]{"45", "lazy", null}, new String[]{"46", "syntax-rules", null}, new String[]{"47", "arrays", null}, new String[]{"48", "intermediate-format-strings", null}, new String[]{"51", "rest-values", null}, new String[]{"54", "cat", null}, new String[]{"57", "records", null}, new String[]{"59", "vicinities", null}, new String[]{"60", "integer-bits", null}, new String[]{"61", "cond", null}, new String[]{"63", "arrays", null}, new String[]{"64", "testing", "gnu.kawa.slib.testing"}, new String[]{"66", "octet-vectors", null}, new String[]{"67", "compare-procedures", null}, new String[]{"69", "basic-hash-tables", "gnu.kawa.slib.srfi69"}, new String[]{"71", "let", null}, new String[]{"74", "blobs", null}, new String[]{"78", "lightweight-testing", null}, new String[]{"86", "mu-and-nu", null}, new String[]{"87", "case", null}, new String[]{"95", "sorting-and-merging", "kawa.lib.srfi95"}};

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanForDefinitions(gnu.lists.Pair r17, java.util.Vector r18, gnu.expr.ScopeExp r19, kawa.lang.Translator r20) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.ImportFromLibrary.scanForDefinitions(gnu.lists.Pair, java.util.Vector, gnu.expr.ScopeExp, kawa.lang.Translator):boolean");
    }
}

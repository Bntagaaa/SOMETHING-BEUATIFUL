package kawa.standard;

import _COROUTINE.a;
import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.expr.ScopeExp;
import gnu.kawa.lispexpr.LispReader;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.InPort;
import gnu.mapping.Symbol;
import java.io.File;
import java.util.Vector;
import kawa.lang.AutoloadProcedure;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_autoload extends Syntax {
    public static final define_autoload define_autoload = new define_autoload("define-autoload", false);
    public static final define_autoload define_autoloads_from_file = new define_autoload("define-autoloads-from-file", true);
    boolean fromFile;

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return null;
    }

    public define_autoload(String str, boolean z) {
        super(str);
        this.fromFile = z;
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        if (!(pair.getCdr() instanceof Pair)) {
            return super.scanForDefinitions(pair, vector, scopeExp, translator);
        }
        Pair pair2 = (Pair) pair.getCdr();
        if (this.fromFile) {
            while (pair2.getCar() instanceof CharSequence) {
                if (!scanFile(pair2.getCar().toString(), scopeExp, translator)) {
                    return false;
                }
                Object cdr = pair2.getCdr();
                if (cdr == LList.Empty) {
                    return true;
                }
                if (!(cdr instanceof Pair)) {
                    break;
                }
                pair2 = (Pair) pair2.getCdr();
            }
            translator.syntaxError("invalid syntax for define-autoloads-from-file");
            return false;
        }
        Object car = pair2.getCar();
        if (pair2.getCdr() instanceof Pair) {
            return process(car, ((Pair) pair2.getCdr()).getCar(), vector, scopeExp, translator);
        }
        translator.syntaxError("invalid syntax for define-autoload");
        return false;
    }

    public boolean scanFile(String str, ScopeExp scopeExp, Translator translator) throws ClassNotFoundException {
        str.endsWith(".el");
        File file = new File(str);
        if (!file.isAbsolute()) {
            file = new File(new File(translator.getFileName()).getParent(), str);
        }
        String path = file.getPath();
        int iLastIndexOf = path.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String strSubstring = path.substring(iLastIndexOf);
            Language language = Language.getInstance(strSubstring);
            if (language == null) {
                translator.syntaxError("unknown extension for ".concat(path));
                return true;
            }
            String strSubstring2 = translator.classPrefix;
            String strSubstring3 = str.substring(0, str.length() - strSubstring.length());
            while (strSubstring3.startsWith("../")) {
                int iLastIndexOf2 = strSubstring2.lastIndexOf(46, strSubstring2.length() - 2);
                if (iLastIndexOf2 < 0) {
                    translator.syntaxError(a.k("cannot use relative filename \"", str, "\" with simple prefix \"", strSubstring2, "\""));
                    return false;
                }
                strSubstring2 = strSubstring2.substring(0, iLastIndexOf2 + 1);
                strSubstring3 = strSubstring3.substring(3);
            }
            try {
                findAutoloadComments((LispReader) language.getLexer(InPort.openFile(path), translator.getMessages()), (strSubstring2 + strSubstring3).replace('/', '.'), scopeExp, translator);
            } catch (Exception e) {
                translator.syntaxError("error reading " + path + ": " + e);
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e1, code lost:
    
        r9.read();
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ba A[PHI: r2
      0x00ba: PHI (r2v1 int) = (r2v0 int), (r2v0 int), (r2v3 int) binds: [B:13:0x0015, B:15:0x0019, B:19:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void findAutoloadComments(gnu.kawa.lispexpr.LispReader r9, java.lang.String r10, gnu.expr.ScopeExp r11, kawa.lang.Translator r12) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.define_autoload.findAutoloadComments(gnu.kawa.lispexpr.LispReader, java.lang.String, gnu.expr.ScopeExp, kawa.lang.Translator):void");
    }

    public static boolean process(Object obj, Object obj2, Vector vector, ScopeExp scopeExp, Translator translator) {
        String str;
        int length;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return process(pair.getCar(), obj2, vector, scopeExp, translator) && process(pair.getCdr(), obj2, vector, scopeExp, translator);
        }
        if (obj == LList.Empty) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Symbol)) {
            return false;
        }
        String string = obj.toString();
        Declaration define = scopeExp.getDefine(string, 'w', translator);
        if ((obj2 instanceof String) && (length = (str = (String) obj2).length()) > 2 && str.charAt(0) == '<') {
            int i = length - 1;
            if (str.charAt(i) == '>') {
                obj2 = str.substring(1, i);
            }
        }
        QuoteExp quoteExp = new QuoteExp(new AutoloadProcedure(string, obj2.toString(), translator.getLanguage()));
        define.setFlag(JSONzip.int14);
        define.noteValue(quoteExp);
        return true;
    }
}

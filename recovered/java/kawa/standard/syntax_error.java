package kawa.standard;

import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.lists.LList;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class syntax_error extends Syntax {
    public static final syntax_error syntax_error;

    static {
        syntax_error syntax_errorVar = new syntax_error();
        syntax_error = syntax_errorVar;
        syntax_errorVar.setName("%syntax-error");
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (i > 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append(pair.getCar());
            obj = pair.getCdr();
            i++;
        }
        if (obj != LList.Empty) {
            if (i > 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append(obj);
        }
        return translator.syntaxError(stringBuffer.toString());
    }

    public static Expression error(Object obj, Object[] objArr) {
        StringBuffer stringBuffer = new StringBuffer();
        if (objArr.length == 0) {
            stringBuffer.append("invalid syntax");
        } else {
            for (Object obj2 : objArr) {
                stringBuffer.append(obj2);
            }
        }
        Translator translator = (Translator) Compilation.getCurrent();
        if (translator == null) {
            throw new RuntimeException(stringBuffer.toString());
        }
        Object objPushPositionOf = translator.pushPositionOf(obj);
        try {
            return translator.syntaxError(stringBuffer.toString());
        } finally {
            translator.popPositionOf(objPushPositionOf);
        }
    }
}

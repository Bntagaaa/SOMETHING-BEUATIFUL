package gnu.kawa.xml;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.QuoteExp;
import gnu.mapping.Procedure;

/* loaded from: classes2.dex */
public class CompileXmlFunctions {
    public static Expression validateApplyMakeUnescapedData(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        return (args.length == 1 && (args[0] instanceof QuoteExp)) ? new QuoteExp(((MakeUnescapedData) procedure).apply1(((QuoteExp) args[0]).getValue())) : applyExp;
    }

    public static Expression validateApplyTreeScanner(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Object obj = ((TreeScanner) procedure).type;
        if (applyExp.getTypeRaw() == null && (obj instanceof Type)) {
            applyExp.setType(NodeSetType.getInstance((Type) obj));
        }
        return applyExp;
    }
}

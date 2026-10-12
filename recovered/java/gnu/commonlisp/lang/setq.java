package gnu.commonlisp.lang;

import gnu.expr.BeginExp;
import gnu.expr.Expression;
import gnu.expr.SetExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class setq extends Syntax {
    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Object cdr = pair.getCdr();
        Vector vector = null;
        while (true) {
            LList lList = LList.Empty;
            if (cdr == lList) {
                if (vector == null) {
                    return Lisp2.nilExpr;
                }
                Expression[] expressionArr = new Expression[vector.size()];
                vector.copyInto(expressionArr);
                return new BeginExp(expressionArr);
            }
            if (!(cdr instanceof Pair)) {
                return translator.syntaxError("invalid syntax for setq");
            }
            Pair pair2 = (Pair) cdr;
            Object car = pair2.getCar();
            if (!(car instanceof Symbol) && !(car instanceof String)) {
                if (car == Lisp2.FALSE) {
                    car = "nil";
                } else {
                    return translator.syntaxError("invalid variable name in setq");
                }
            }
            Object cdr2 = pair2.getCdr();
            if (!(cdr2 instanceof Pair)) {
                return translator.syntaxError("wrong number of arguments for setq");
            }
            Pair pair3 = (Pair) cdr2;
            Expression expressionRewrite = translator.rewrite(pair3.getCar());
            cdr = pair3.getCdr();
            SetExp setExp = new SetExp(car, expressionRewrite);
            setExp.setFlag(8);
            if (cdr == lList) {
                setExp.setHasValue(true);
                if (vector == null) {
                    return setExp;
                }
            }
            if (vector == null) {
                vector = new Vector(10);
            }
            vector.addElement(setExp);
        }
    }
}

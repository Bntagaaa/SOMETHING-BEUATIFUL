package gnu.commonlisp.lang;

import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LambdaExp;
import gnu.expr.ModuleExp;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.Symbol;
import java.util.Vector;
import kawa.lang.Lambda;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class defun extends Syntax {

    /* renamed from: a, reason: collision with root package name */
    public final Lambda f5458a;

    public defun(Lambda lambda) {
        this.f5458a = lambda;
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        if (pair.getCdr() instanceof Pair) {
            Pair pair2 = (Pair) pair.getCdr();
            if ((pair2.getCar() instanceof String) || (pair2.getCar() instanceof Symbol)) {
                Object car = pair2.getCar();
                Declaration declarationLookup = scopeExp.lookup(car);
                if (declarationLookup == null) {
                    declarationLookup = new Declaration(car);
                    declarationLookup.setProcedureDecl(true);
                    scopeExp.addDeclaration(declarationLookup);
                } else {
                    translator.error('w', "duplicate declaration for `" + car + "'");
                }
                if (scopeExp instanceof ModuleExp) {
                    declarationLookup.setCanRead(true);
                }
                vector.addElement(Translator.makePair(pair, this, Translator.makePair(pair2, declarationLookup, pair2.getCdr())));
                return true;
            }
        }
        return super.scanForDefinitions(pair, vector, scopeExp, translator);
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Object string;
        Declaration declaration;
        Object cdr = pair.getCdr();
        if (cdr instanceof Pair) {
            Pair pair2 = (Pair) cdr;
            Object car = pair2.getCar();
            if ((car instanceof Symbol) || (car instanceof String)) {
                string = car.toString();
                declaration = null;
            } else if (car instanceof Declaration) {
                declaration = (Declaration) car;
                string = declaration.getSymbol();
            } else {
                declaration = null;
                string = null;
            }
            if (string != null && (pair2.getCdr() instanceof Pair)) {
                Pair pair3 = (Pair) pair2.getCdr();
                LambdaExp lambdaExp = new LambdaExp();
                this.f5458a.rewrite(lambdaExp, pair3.getCar(), pair3.getCdr(), translator, null);
                lambdaExp.setSymbol(string);
                if (pair3 instanceof PairWithPosition) {
                    lambdaExp.setLocation((PairWithPosition) pair3);
                }
                SetExp setExp = new SetExp(string, lambdaExp);
                setExp.setDefining(true);
                setExp.setFuncDef(true);
                if (declaration != null) {
                    setExp.setBinding(declaration);
                    declaration.noteValue(((declaration.context instanceof ModuleExp) && declaration.getCanWrite()) ? null : lambdaExp);
                }
                return setExp;
            }
        }
        return translator.syntaxError("invalid syntax for " + getName());
    }
}

package gnu.kawa.functions;

import androidx.fragment.app.FragmentTransaction;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.StackTarget;
import gnu.expr.Target;
import gnu.kawa.lispexpr.LangObjType;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure1;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class NumberPredicate extends Procedure1 implements Inlineable {
    public static final int EVEN = 2;
    public static final int ODD = 1;
    Language language;
    final int op;

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public final Language getLanguage() {
        return this.language;
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        boolean zIsOdd;
        IntNum intNumCoerceIntNum = LangObjType.coerceIntNum(obj);
        int i = this.op;
        if (i == 1) {
            zIsOdd = intNumCoerceIntNum.isOdd();
        } else if (i == 2) {
            zIsOdd = !intNumCoerceIntNum.isOdd();
        } else {
            throw new Error();
        }
        return getLanguage().booleanObject(zIsOdd);
    }

    public NumberPredicate(Language language, String str, int i) {
        super(str);
        this.language = language;
        this.op = i;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyNumberPredicate");
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        int i;
        Expression[] args = applyExp.getArgs();
        if (args.length == 1 && ((i = this.op) == 1 || i == 2)) {
            Expression expression = args[0];
            if (Arithmetic.classifyType(expression.getType()) <= 4) {
                PrimType primType = Type.intType;
                Target stackTarget = StackTarget.getInstance(primType);
                CodeAttr code = compilation.getCode();
                if (this.op == 2) {
                    code.emitPushInt(1);
                }
                expression.compile(compilation, stackTarget);
                code.emitPushInt(1);
                code.emitAnd();
                if (this.op == 2) {
                    code.emitSub(primType);
                }
                target.compileFromStack(compilation, Type.booleanType);
                return;
            }
        }
        ApplyExp.compile(applyExp, compilation, target);
    }
}

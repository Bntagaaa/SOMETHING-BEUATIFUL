package gnu.kawa.functions;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.QuoteExp;
import gnu.expr.Target;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.ProcedureN;

/* loaded from: classes2.dex */
public class MakeList extends ProcedureN implements Inlineable {
    public static final MakeList list;

    static {
        MakeList makeList = new MakeList();
        list = makeList;
        makeList.setName("list");
    }

    public static Object list$V(Object[] objArr) {
        LList pair = LList.Empty;
        int length = objArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return pair;
            }
            pair = new Pair(objArr[length], pair);
        }
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        return list$V(objArr);
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        compile(applyExp.getArgs(), 0, compilation);
        target.compileFromStack(compilation, applyExp.getType());
    }

    public static void compile(Expression[] expressionArr, int i, Compilation compilation) {
        int length = expressionArr.length - i;
        CodeAttr code = compilation.getCode();
        if (length == 0) {
            new QuoteExp(LList.Empty).compile(compilation, Target.pushObject);
            return;
        }
        if (length <= 4) {
            for (int i2 = 0; i2 < length; i2++) {
                expressionArr[i + i2].compile(compilation, Target.pushObject);
            }
            code.emitInvokeStatic(Compilation.scmListType.getDeclaredMethod("list" + length, (Type[]) null));
            return;
        }
        expressionArr[i].compile(compilation, Target.pushObject);
        code.emitInvokeStatic(Compilation.scmListType.getDeclaredMethod("list1", (Type[]) null));
        code.emitDup(1);
        int i3 = i + 1;
        int i4 = length - 1;
        while (i4 >= 4) {
            Expression expression = expressionArr[i3];
            Target target = Target.pushObject;
            expression.compile(compilation, target);
            expressionArr[i3 + 1].compile(compilation, target);
            expressionArr[i3 + 2].compile(compilation, target);
            expressionArr[i3 + 3].compile(compilation, target);
            i4 -= 4;
            i3 += 4;
            code.emitInvokeStatic(Compilation.scmListType.getDeclaredMethod("chain4", (Type[]) null));
        }
        while (i4 > 0) {
            expressionArr[i3].compile(compilation, Target.pushObject);
            i4--;
            i3++;
            code.emitInvokeStatic(Compilation.scmListType.getDeclaredMethod("chain1", (Type[]) null));
        }
        code.emitPop(1);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return expressionArr.length > 0 ? Compilation.typePair : LangObjType.listType;
    }
}

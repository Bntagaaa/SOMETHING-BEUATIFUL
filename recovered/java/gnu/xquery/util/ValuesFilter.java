package gnu.xquery.util;

import gnu.bytecode.Access;
import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.IgnoreTarget;
import gnu.expr.Inlineable;
import gnu.expr.LambdaExp;
import gnu.expr.Target;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.functions.ValuesMap;
import gnu.kawa.xml.SortedNodes;
import gnu.lists.Consumer;
import gnu.lists.TreeList;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.math.DFloNum;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class ValuesFilter extends MethodProc implements Inlineable {
    public static final Method matchesMethod;
    public static final ClassType typeValuesFilter;
    public final char c;
    public static final ValuesFilter forwardFilter = new ValuesFilter(Access.FIELD_CONTEXT);
    public static final ValuesFilter reverseFilter = new ValuesFilter('R');
    public static final ValuesFilter exprFilter = new ValuesFilter('P');

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    public ValuesFilter(char c) {
        this.c = c;
        setProperty(Procedure.validateApplyKey, "gnu.xquery.util.CompileMisc:validateApplyValuesFilter");
    }

    public static ValuesFilter get(char c) {
        if (c == 'F') {
            return forwardFilter;
        }
        if (c == 'R') {
            return reverseFilter;
        }
        return exprFilter;
    }

    public static boolean matches(Object obj, long j) {
        if (obj instanceof Values) {
            obj = ((Values) obj).canonicalize();
        }
        if (obj instanceof Number) {
            if (obj instanceof IntNum) {
                return IntNum.compare((IntNum) obj, j) == 0;
            }
            if ((obj instanceof Double) || (obj instanceof Float) || (obj instanceof DFloNum)) {
                return ((Number) obj).doubleValue() == ((double) j);
            }
            if ((obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                return j == ((Number) obj).longValue();
            }
            return NumberCompare.applyWithPromotion(8, IntNum.make(j), obj);
        }
        return BooleanValue.booleanValue(obj);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        TreeList sortedNodes;
        Object nextArg = callContext.getNextArg();
        Procedure procedure = (Procedure) callContext.getNextArg();
        Consumer consumer = callContext.consumer;
        char c = this.c;
        if (c != 'P') {
            sortedNodes = new SortedNodes();
            Values.writeValues(nextArg, sortedNodes);
        } else if (nextArg instanceof Values) {
            sortedNodes = (Values) nextArg;
        } else {
            IntNum intNumOne = IntNum.one();
            if (matches(procedure.apply3(nextArg, intNumOne, intNumOne), 1L)) {
                consumer.writeObject(nextArg);
                return;
            }
            return;
        }
        int size = sortedNodes.size();
        IntNum intNumMake = IntNum.make(size);
        int iMaxArgs = procedure.maxArgs();
        int iNextPos = 0;
        for (int i = 0; i < size; i++) {
            iNextPos = sortedNodes.nextPos(iNextPos);
            Object posPrevious = sortedNodes.getPosPrevious(iNextPos);
            int i2 = c == 'R' ? size - i : i + 1;
            IntNum intNumMake2 = IntNum.make(i2);
            if (matches(iMaxArgs == 2 ? procedure.apply2(posPrevious, intNumMake2) : procedure.apply3(posPrevious, intNumMake2, intNumMake), i2)) {
                consumer.writeObject(posPrevious);
            }
        }
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        Expression expression = args[0];
        Expression expression2 = args[1];
        if (target instanceof IgnoreTarget) {
            expression.compile(compilation, target);
            expression2.compile(compilation, target);
        } else if (!(expression2 instanceof LambdaExp)) {
            ApplyExp.compile(applyExp, compilation, target);
        } else if (!(target instanceof ConsumerTarget)) {
            ConsumerTarget.compileUsingConsumer(applyExp, compilation, target);
        } else {
            ValuesMap.compileInlined((LambdaExp) expression2, expression, 1, matchesMethod, compilation, target);
        }
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.xquery.util.ValuesFilter");
        typeValuesFilter = classTypeMake;
        matchesMethod = classTypeMake.getDeclaredMethod("matches", 2);
    }
}

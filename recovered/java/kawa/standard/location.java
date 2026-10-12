package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.expr.ApplyExp;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.ReferenceExp;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.reflect.Invoke;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Location;
import gnu.mapping.LocationProc;
import gnu.mapping.ProcLocation;
import gnu.mapping.Procedure;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class location extends Syntax {
    public static final location location;
    private static ClassType thisType;

    static {
        location locationVar = new location();
        location = locationVar;
        locationVar.setName("location");
        thisType = ClassType.make("kawa.standard.location");
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        if (!(obj instanceof Pair)) {
            return translator.syntaxError("missing argument to location");
        }
        Pair pair = (Pair) obj;
        if (pair.getCdr() != LList.Empty) {
            return translator.syntaxError("extra arguments to location");
        }
        return Invoke.makeInvokeStatic(thisType, "makeLocationProc", new Expression[]{rewrite(translator.rewrite(pair.getCar()), translator)});
    }

    public static Expression rewrite(Expression expression, Translator translator) {
        if (expression instanceof ReferenceExp) {
            ReferenceExp referenceExp = (ReferenceExp) expression;
            referenceExp.setDontDereference(true);
            Declaration binding = referenceExp.getBinding();
            if (binding != null) {
                binding.maybeIndirectBinding(translator);
                Declaration declarationFollowAliases = Declaration.followAliases(binding);
                declarationFollowAliases.setCanRead(true);
                declarationFollowAliases.setCanWrite(true);
            }
            return referenceExp;
        }
        if (expression instanceof ApplyExp) {
            ApplyExp applyExp = (ApplyExp) expression;
            int length = applyExp.getArgs().length;
            Expression[] expressionArr = new Expression[length + 1];
            expressionArr[0] = applyExp.getFunction();
            System.arraycopy(applyExp.getArgs(), 0, expressionArr, 1, length);
            return Invoke.makeInvokeStatic(thisType, "makeProcLocation", expressionArr);
        }
        return translator.syntaxError("invalid argument to location");
    }

    public static Location makeProcLocation$V(Procedure procedure, Object[] objArr) {
        int length = objArr.length;
        if ((procedure instanceof ApplyToArgs) && length > 0) {
            Object obj = objArr[0];
            if (obj instanceof Procedure) {
                Procedure procedure2 = (Procedure) obj;
                if ((procedure2 instanceof LocationProc) && length == 1) {
                    return ((LocationProc) procedure2).getLocation();
                }
                int i = length - 1;
                Object[] objArr2 = new Object[i];
                System.arraycopy(objArr, 1, objArr2, 0, i);
                return new ProcLocation(procedure2, objArr2);
            }
        }
        if ((procedure instanceof LocationProc) && length == 0) {
            return ((LocationProc) procedure).getLocation();
        }
        return new ProcLocation(procedure, objArr);
    }

    public static Procedure makeLocationProc(Location location2) {
        return new LocationProc(location2);
    }
}

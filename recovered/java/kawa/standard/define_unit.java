package kawa.standard;

import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.expr.Declaration;
import gnu.expr.ModuleExp;
import gnu.expr.QuoteExp;
import gnu.expr.ScopeExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.SimpleSymbol;
import gnu.math.BaseUnit;
import gnu.math.Quantity;
import gnu.math.Unit;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_unit extends Syntax {
    public static final define_unit define_base_unit;
    public static final define_unit define_unit;
    boolean base;

    static {
        define_unit define_unitVar = new define_unit(false);
        define_unit = define_unitVar;
        define_unitVar.setName("define-unit");
        define_unit define_unitVar2 = new define_unit(true);
        define_base_unit = define_unitVar2;
        define_unitVar2.setName("define-base-unit");
    }

    public define_unit(boolean z) {
        this.base = z;
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        if (pair.getCdr() instanceof Pair) {
            Pair pair2 = (Pair) pair.getCdr();
            Object car = pair2.getCar();
            if (car instanceof SimpleSymbol) {
                String string = car.toString();
                Declaration define = scopeExp.getDefine(Scheme.unitNamespace.getSymbol(string), 'w', translator);
                translator.push(define);
                Translator.setLine(define, pair2);
                define.setFlag(JSONzip.int14);
                if (scopeExp instanceof ModuleExp) {
                    define.setCanRead(true);
                }
                Object objMake = null;
                if (this.base && pair2.getCdr() == LList.Empty) {
                    objMake = BaseUnit.make(string, (String) null);
                } else if (pair2.getCdr() instanceof Pair) {
                    Object car2 = ((Pair) pair2.getCdr()).getCar();
                    boolean z = this.base;
                    if (z && (car2 instanceof CharSequence)) {
                        objMake = BaseUnit.make(string, car2.toString());
                    } else if (!z && (car2 instanceof Quantity)) {
                        objMake = Unit.make(string, (Quantity) car2);
                    }
                }
                if (objMake != null) {
                    define.noteValue(new QuoteExp(objMake));
                }
                vector.addElement(Translator.makePair(pair, this, Translator.makePair(pair2, define, pair2.getCdr())));
                return true;
            }
        }
        translator.error('e', "missing name in define-unit");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewriteForm(gnu.lists.Pair r7, kawa.lang.Translator r8) {
        /*
            r6 = this;
            r0 = 1
            java.lang.Object r7 = r7.getCdr()
            boolean r1 = r7 instanceof gnu.lists.Pair
            if (r1 == 0) goto Lbf
            gnu.lists.Pair r7 = (gnu.lists.Pair) r7
            java.lang.Object r1 = r7.getCar()
            boolean r1 = r1 instanceof gnu.expr.Declaration
            if (r1 != 0) goto L15
            goto Lbf
        L15:
            java.lang.Object r1 = r7.getCar()
            gnu.expr.Declaration r1 = (gnu.expr.Declaration) r1
            java.lang.Object r2 = r1.getSymbol()
            gnu.mapping.Symbol r2 = (gnu.mapping.Symbol) r2
            java.lang.String r2 = r2.getLocalPart()
            java.lang.String r3 = "gnu.math.Unit"
            gnu.bytecode.ClassType r3 = gnu.bytecode.ClassType.make(r3)
            r1.setType(r3)
            gnu.expr.Expression r4 = r1.getValue()
            boolean r5 = r4 instanceof gnu.expr.QuoteExp
            if (r5 == 0) goto L42
            r5 = r4
            gnu.expr.QuoteExp r5 = (gnu.expr.QuoteExp) r5
            java.lang.Object r5 = r5.getValue()
            boolean r5 = r5 instanceof gnu.math.Unit
            if (r5 == 0) goto L42
            goto Lb3
        L42:
            boolean r4 = r6.base
            if (r4 == 0) goto L68
            java.lang.Object r8 = r7.getCdr()
            gnu.lists.LList r3 = gnu.lists.LList.Empty
            if (r8 == r3) goto L5d
            java.lang.Object r7 = r7.getCdr()
            gnu.lists.Pair r7 = (gnu.lists.Pair) r7
            java.lang.Object r7 = r7.getCar()
            java.lang.String r7 = r7.toString()
            goto L5e
        L5d:
            r7 = 0
        L5e:
            gnu.math.BaseUnit r7 = gnu.math.BaseUnit.make(r2, r7)
            gnu.expr.QuoteExp r4 = new gnu.expr.QuoteExp
            r4.<init>(r7)
            goto Lb3
        L68:
            java.lang.Object r4 = r7.getCdr()
            boolean r4 = r4 instanceof gnu.lists.Pair
            if (r4 != 0) goto L77
            java.lang.String r7 = "missing value for define-unit"
            gnu.expr.Expression r7 = r8.syntaxError(r7)
            return r7
        L77:
            java.lang.Object r7 = r7.getCdr()
            gnu.lists.Pair r7 = (gnu.lists.Pair) r7
            java.lang.Object r7 = r7.getCar()
            gnu.expr.Expression r7 = r8.rewrite(r7)
            boolean r8 = r7 instanceof gnu.expr.QuoteExp
            if (r8 == 0) goto La0
            r8 = r7
            gnu.expr.QuoteExp r8 = (gnu.expr.QuoteExp) r8
            java.lang.Object r8 = r8.getValue()
            boolean r4 = r8 instanceof gnu.math.Quantity
            if (r4 == 0) goto La0
            gnu.expr.QuoteExp r4 = new gnu.expr.QuoteExp
            gnu.math.Quantity r8 = (gnu.math.Quantity) r8
            gnu.math.NamedUnit r7 = gnu.math.Unit.make(r2, r8)
            r4.<init>(r7)
            goto Lb3
        La0:
            gnu.expr.QuoteExp r8 = new gnu.expr.QuoteExp
            r8.<init>(r2)
            r2 = 2
            gnu.expr.Expression[] r2 = new gnu.expr.Expression[r2]
            r4 = 0
            r2[r4] = r8
            r2[r0] = r7
            java.lang.String r7 = "make"
            gnu.expr.ApplyExp r4 = gnu.kawa.reflect.Invoke.makeInvokeStatic(r3, r7, r2)
        Lb3:
            gnu.expr.SetExp r7 = new gnu.expr.SetExp
            r7.<init>(r1, r4)
            r7.setDefining(r0)
            r1.noteValue(r4)
            return r7
        Lbf:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "invalid syntax for "
            r7.<init>(r0)
            java.lang.String r0 = r6.getName()
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            gnu.expr.Expression r7 = r8.syntaxError(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.define_unit.rewriteForm(gnu.lists.Pair, kawa.lang.Translator):gnu.expr.Expression");
    }
}

package kawa.standard;

import kawa.lang.ListPat;
import kawa.lang.Pattern;
import kawa.lang.Syntax;

/* loaded from: classes2.dex */
public class prim_method extends Syntax {
    public static final prim_method interface_method;
    public static final prim_method op1;
    private static Pattern pattern3;
    private static Pattern pattern4;
    public static final prim_method static_method;
    public static final prim_method virtual_method;
    int op_code;

    static {
        prim_method prim_methodVar = new prim_method(182);
        virtual_method = prim_methodVar;
        prim_methodVar.setName("primitive-virtual-method");
        prim_method prim_methodVar2 = new prim_method(184);
        static_method = prim_methodVar2;
        prim_methodVar2.setName("primitive-static-method");
        prim_method prim_methodVar3 = new prim_method(185);
        interface_method = prim_methodVar3;
        prim_methodVar3.setName("primitive-interface-method");
        prim_method prim_methodVar4 = new prim_method();
        op1 = prim_methodVar4;
        prim_methodVar4.setName("primitive-op1");
        pattern3 = new ListPat(3);
        pattern4 = new ListPat(4);
    }

    public int opcode() {
        return this.op_code;
    }

    public prim_method(int i) {
        this.op_code = i;
    }

    public prim_method() {
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d4  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewrite(java.lang.Object r12, kawa.lang.Translator r13) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.prim_method.rewrite(java.lang.Object, kawa.lang.Translator):gnu.expr.Expression");
    }
}

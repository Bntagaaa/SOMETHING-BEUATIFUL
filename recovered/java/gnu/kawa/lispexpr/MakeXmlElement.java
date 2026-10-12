package gnu.kawa.lispexpr;

import gnu.bytecode.ClassType;
import kawa.lang.Syntax;

/* loaded from: classes2.dex */
public class MakeXmlElement extends Syntax {
    public static final MakeXmlElement makeXml;
    static final ClassType typeNamespace;

    static {
        MakeXmlElement makeXmlElement = new MakeXmlElement();
        makeXml = makeXmlElement;
        makeXmlElement.setName("$make-xml$");
        typeNamespace = ClassType.make("gnu.mapping.Namespace");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewriteForm(gnu.lists.Pair r14, kawa.lang.Translator r15) {
        /*
            r13 = this;
            java.lang.Object r0 = r14.getCdr()
            gnu.lists.Pair r0 = (gnu.lists.Pair) r0
            java.lang.Object r1 = r0.getCar()
            java.lang.Object r0 = r0.getCdr()
            gnu.xml.NamespaceBinding r2 = r15.xmlElementNamespaces
            r3 = 0
            r4 = r2
            r5 = 0
        L13:
            boolean r6 = r1 instanceof gnu.lists.Pair
            if (r6 == 0) goto Lca
            if (r5 != 0) goto L1d
            r15.letStart()
            r5 = 1
        L1d:
            gnu.lists.Pair r1 = (gnu.lists.Pair) r1
            java.lang.Object r6 = r1.getCar()
            gnu.lists.Pair r6 = (gnu.lists.Pair) r6
            java.lang.Object r7 = r6.getCar()
            java.lang.String r7 = (java.lang.String) r7
            int r8 = r7.length()
            r9 = 0
            if (r8 != 0) goto L34
            r7 = r9
            goto L38
        L34:
            java.lang.String r7 = r7.intern()
        L38:
            java.lang.Object r6 = r6.getCdr()
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
        L41:
            boolean r10 = r6 instanceof gnu.lists.Pair
            if (r10 == 0) goto L8c
            gnu.lists.Pair r6 = (gnu.lists.Pair) r6
            java.lang.Object r10 = r6.getCar()
            int r11 = gnu.lists.LList.listLength(r10, r3)
            r12 = 2
            if (r11 != r12) goto L6b
            boolean r11 = r10 instanceof gnu.lists.Pair
            if (r11 == 0) goto L6b
            gnu.lists.Pair r10 = (gnu.lists.Pair) r10
            java.lang.Object r11 = r10.getCar()
            gnu.kawa.xml.MakeText r12 = gnu.kawa.xml.MakeText.makeText
            if (r11 != r12) goto L6b
            java.lang.Object r10 = r10.getCdr()
            gnu.lists.Pair r10 = (gnu.lists.Pair) r10
            java.lang.Object r10 = r10.getCar()
            goto L73
        L6b:
            gnu.expr.Expression r10 = r15.rewrite_car(r6, r3)
            java.lang.Object r10 = r10.valueIfConstant()
        L73:
            if (r10 != 0) goto L84
            java.lang.Object r10 = r15.pushPositionOf(r6)
            r11 = 101(0x65, float:1.42E-43)
            java.lang.String r12 = "namespace URI must be literal"
            r15.error(r11, r12)
            r15.popPositionOf(r10)
            goto L87
        L84:
            r8.append(r10)
        L87:
            java.lang.Object r6 = r6.getCdr()
            goto L41
        L8c:
            java.lang.String r6 = r8.toString()
            java.lang.String r6 = r6.intern()
            gnu.xml.NamespaceBinding r8 = new gnu.xml.NamespaceBinding
            java.lang.String r10 = ""
            if (r6 != r10) goto L9b
            goto L9c
        L9b:
            r9 = r6
        L9c:
            r8.<init>(r7, r9, r4)
            if (r7 != 0) goto La8
            gnu.mapping.Namespace r4 = gnu.mapping.Namespace.valueOf(r6)
            java.lang.String r7 = "[default-element-namespace]"
            goto Lac
        La8:
            gnu.kawa.xml.XmlNamespace r4 = gnu.kawa.xml.XmlNamespace.getInstance(r7, r6)
        Lac:
            gnu.mapping.Namespace r6 = gnu.mapping.Namespace.EmptyNamespace
            gnu.mapping.Symbol r6 = r6.getSymbol(r7)
            gnu.bytecode.ClassType r7 = gnu.kawa.lispexpr.MakeXmlElement.typeNamespace
            gnu.expr.QuoteExp r9 = new gnu.expr.QuoteExp
            r9.<init>(r4)
            gnu.expr.Declaration r4 = r15.letVariable(r6, r7, r9)
            r6 = 2121728(0x206000, double:1.048273E-317)
            r4.setFlag(r6)
            java.lang.Object r1 = r1.getCdr()
            r4 = r8
            goto L13
        Lca:
            gnu.kawa.xml.MakeElement r1 = new gnu.kawa.xml.MakeElement
            r1.<init>()
            r1.setNamespaceNodes(r4)
            r15.xmlElementNamespaces = r4
            if (r5 == 0) goto Ldc
            r15.letEnter()     // Catch: java.lang.Throwable -> Lda
            goto Ldc
        Lda:
            r14 = move-exception
            goto Led
        Ldc:
            gnu.lists.Pair r14 = kawa.lang.Translator.makePair(r14, r1, r0)     // Catch: java.lang.Throwable -> Lda
            gnu.expr.Expression r14 = r15.rewrite(r14)     // Catch: java.lang.Throwable -> Lda
            if (r5 == 0) goto Lea
            gnu.expr.LetExp r14 = r15.letDone(r14)     // Catch: java.lang.Throwable -> Lda
        Lea:
            r15.xmlElementNamespaces = r2
            return r14
        Led:
            r15.xmlElementNamespaces = r2
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.MakeXmlElement.rewriteForm(gnu.lists.Pair, kawa.lang.Translator):gnu.expr.Expression");
    }
}

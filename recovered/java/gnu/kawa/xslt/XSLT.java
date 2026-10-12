package gnu.kawa.xslt;

import gnu.expr.ApplicationMainSupport;
import gnu.expr.Compilation;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.kawa.xml.Document;
import gnu.kawa.xml.Focus;
import gnu.kawa.xml.KDocument;
import gnu.lists.TreeList;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.text.Lexer;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.xquery.lang.XQParser;
import gnu.xquery.lang.XQResolveNames;
import gnu.xquery.lang.XQuery;
import java.io.IOException;
import org.xml.sax.SAXException;

/* loaded from: classes2.dex */
public class XSLT extends XQuery {
    public static XSLT instance;
    public static Symbol nullMode = Symbol.make(null, "");

    public static void defineCallTemplate(Symbol symbol, double d, Procedure procedure) {
    }

    @Override // gnu.xquery.lang.XQuery, gnu.expr.Language
    public String getName() {
        return "XSLT";
    }

    public XSLT() {
        instance = this;
        ModuleBody.setMainPrintValues(true);
    }

    public static XSLT getXsltInstance() {
        if (instance == null) {
            new XSLT();
        }
        return instance;
    }

    @Override // gnu.xquery.lang.XQuery, gnu.expr.Language
    public Lexer getLexer(InPort inPort, SourceMessages sourceMessages) {
        return new XslTranslator(inPort, sourceMessages, this);
    }

    @Override // gnu.xquery.lang.XQuery, gnu.expr.Language
    public boolean parse(Compilation compilation, int i) throws SAXException, SyntaxException, IOException, ClassNotFoundException {
        Compilation.defaultCallConvention = 2;
        ((XslTranslator) compilation.lexer).parse(compilation);
        compilation.setState(4);
        XQParser xQParser = new XQParser(null, compilation.getMessages(), this);
        XQResolveNames xQResolveNames = new XQResolveNames(compilation);
        xQResolveNames.functionNamespacePath = xQParser.functionNamespacePath;
        xQResolveNames.parser = xQParser;
        xQResolveNames.resolveModule(compilation.mainLambda);
        return true;
    }

    public static void registerEnvironment() {
        Language.setDefaults(new XSLT());
    }

    public static void defineApplyTemplate(String str, double d, Symbol symbol, Procedure procedure) {
        if (symbol == null) {
            symbol = nullMode;
        }
        TemplateTable.getTemplateTable(symbol).enter(str, d, procedure);
    }

    public static void defineTemplate(Symbol symbol, String str, double d, Symbol symbol2, Procedure procedure) {
        if (symbol != null) {
            defineCallTemplate(symbol, d, procedure);
        }
        if (str != null) {
            defineApplyTemplate(str, d, symbol2, procedure);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void process(gnu.lists.TreeList r6, gnu.kawa.xml.Focus r7, gnu.mapping.CallContext r8) throws java.lang.Throwable {
        /*
            gnu.lists.Consumer r0 = r8.consumer
        L2:
            int r1 = r7.ipos
            int r2 = r6.getNextKind(r1)
            r3 = 29
            if (r2 == r3) goto L7f
            switch(r2) {
                case 33: goto L43;
                case 34: goto L3e;
                case 35: goto L1a;
                case 36: goto L10;
                case 37: goto L10;
                default: goto Lf;
            }
        Lf:
            return
        L10:
            int r1 = r1 >>> 1
            int r1 = r6.nextDataIndex(r1)
            int r1 = r1 << 1
            goto L93
        L1a:
            r7.getNextTypeObject()
            java.lang.String r2 = r7.getNextTypeName()
            gnu.kawa.xslt.TemplateTable r3 = gnu.kawa.xslt.TemplateTable.nullModeTable
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "@"
            r4.<init>(r5)
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            gnu.mapping.Procedure r2 = r3.find(r2)
            if (r2 == 0) goto L7f
            r2.check0(r8)
            r8.runUntilDone()
            goto L93
        L3e:
            int r1 = r6.firstChildPos(r1)
            goto L93
        L43:
            java.lang.Object r2 = r7.getNextTypeObject()
            java.lang.String r3 = r7.getNextTypeName()
            gnu.kawa.xslt.TemplateTable r4 = gnu.kawa.xslt.TemplateTable.nullModeTable
            gnu.mapping.Procedure r3 = r4.find(r3)
            if (r3 == 0) goto L5a
            r3.check0(r8)
            r8.runUntilDone()
            goto L73
        L5a:
            r0.startElement(r2)
            int r2 = r6.firstAttributePos(r1)
            if (r2 != 0) goto L67
            int r2 = r6.firstChildPos(r1)
        L67:
            r7.push(r6, r2)
            process(r6, r7, r8)
            r7.pop()
            r0.endElement()
        L73:
            int r1 = r1 >>> 1
            int r1 = r6.nextDataIndex(r1)
            int r1 = r1 << 1
            r7.gotoNext()
            goto L93
        L7f:
            int r1 = r1 >>> 1
            r2 = 2147483647(0x7fffffff, float:NaN)
            int r2 = r6.nextNodeIndex(r1, r2)
            if (r1 != r2) goto L8e
            int r2 = r6.nextDataIndex(r1)
        L8e:
            r6.consumeIRange(r1, r2, r0)
            int r1 = r2 << 1
        L93:
            r7.ipos = r1
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.xslt.XSLT.process(gnu.lists.TreeList, gnu.kawa.xml.Focus, gnu.mapping.CallContext):void");
    }

    public static void runStylesheet() throws Throwable {
        CallContext callContext = CallContext.getInstance();
        ApplicationMainSupport.processSetProperties();
        for (String str : ApplicationMainSupport.commandLineArgArray) {
            KDocument kDocument = Document.parse(str);
            Focus current = Focus.getCurrent();
            current.push(kDocument.sequence, kDocument.ipos);
            process((TreeList) kDocument.sequence, current, callContext);
        }
    }

    public static void applyTemplates(String str, Symbol symbol) throws Throwable {
        if (symbol == null) {
            symbol = nullMode;
        }
        TemplateTable.getTemplateTable(symbol);
        CallContext callContext = CallContext.getInstance();
        Focus current = Focus.getCurrent();
        TreeList treeList = (TreeList) current.sequence;
        current.push(treeList, treeList.firstChildPos(current.ipos));
        process(treeList, current, callContext);
        current.pop();
    }
}

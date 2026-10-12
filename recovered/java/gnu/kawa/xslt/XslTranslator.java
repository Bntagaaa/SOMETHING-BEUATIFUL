package gnu.kawa.xslt;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.LambdaExp;
import gnu.expr.ModuleExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.kawa.functions.AppendValues;
import gnu.kawa.xml.MakeAttribute;
import gnu.kawa.xml.MakeElement;
import gnu.lists.Consumer;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.InPort;
import gnu.mapping.Symbol;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SourceMessages;
import gnu.xml.XMLParser;
import gnu.xml.XName;
import gnu.xquery.lang.XQParser;
import java.io.IOException;
import java.util.Stack;
import java.util.Vector;
import okio.Utf8;
import org.xml.sax.SAXException;

/* loaded from: classes2.dex */
public class XslTranslator extends Lexer implements Consumer {
    static final String XSL_TRANSFORM_URI = "http://www.w3.org/1999/XSL/Transform";
    static final Method applyTemplatesMethod;
    static final PrimProcedure applyTemplatesProc;
    static final Method defineTemplateMethod;
    static final PrimProcedure defineTemplateProc;
    static final Method runStylesheetMethod;
    static final PrimProcedure runStylesheetProc;
    static final ClassType typeTemplateTable;
    static final ClassType typeXSLT;
    Object attributeType;
    StringBuffer attributeValue;
    Compilation comp;
    Declaration consumerDecl;
    InPort in;
    boolean inAttribute;
    boolean inTemplate;
    XSLT interpreter;
    ModuleExp mexp;
    StringBuffer nesting;
    boolean preserveSpace;
    LambdaExp templateLambda;

    public void append(Expression expression) {
    }

    @Override // gnu.lists.Consumer
    public void endDocument() {
    }

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    @Override // gnu.lists.Consumer
    public void startDocument() {
    }

    public XslTranslator(InPort inPort, SourceMessages sourceMessages, XSLT xslt) {
        super(inPort, sourceMessages);
        this.nesting = new StringBuffer(100);
        this.attributeValue = new StringBuffer(100);
        this.interpreter = xslt;
        this.in = inPort;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
    
        r5.comp.exprStack.setSize(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void maybeSkipWhitespace() {
        /*
            r5 = this;
            boolean r0 = r5.preserveSpace
            if (r0 == 0) goto L5
            goto L4a
        L5:
            gnu.expr.Compilation r0 = r5.comp
            java.util.Stack<gnu.expr.Expression> r0 = r0.exprStack
            int r0 = r0.size()
        Ld:
            int r1 = r0 + (-1)
            if (r1 < 0) goto L4d
            gnu.expr.Compilation r2 = r5.comp
            java.util.Stack<gnu.expr.Expression> r2 = r2.exprStack
            java.lang.Object r2 = r2.elementAt(r1)
            gnu.expr.Expression r2 = (gnu.expr.Expression) r2
            boolean r3 = r2 instanceof gnu.expr.QuoteExp
            if (r3 == 0) goto L4d
            gnu.expr.QuoteExp r2 = (gnu.expr.QuoteExp) r2
            java.lang.Object r0 = r2.getValue()
            if (r0 != 0) goto L2a
            java.lang.String r0 = ""
            goto L2e
        L2a:
            java.lang.String r0 = r0.toString()
        L2e:
            int r2 = r0.length()
        L32:
            int r2 = r2 + (-1)
            if (r2 < 0) goto L4b
            char r3 = r0.charAt(r2)
            r4 = 32
            if (r3 == r4) goto L32
            r4 = 9
            if (r3 == r4) goto L32
            r4 = 13
            if (r3 == r4) goto L32
            r4 = 10
            if (r3 == r4) goto L32
        L4a:
            return
        L4b:
            r0 = r1
            goto Ld
        L4d:
            gnu.expr.Compilation r1 = r5.comp
            java.util.Stack<gnu.expr.Expression> r1 = r1.exprStack
            r1.setSize(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.xslt.XslTranslator.maybeSkipWhitespace():void");
    }

    public String popMatchingAttribute(String str, String str2, int i) {
        int size = this.comp.exprStack.size();
        for (int i2 = i; i2 < size; i2++) {
            Expression expressionElementAt = this.comp.exprStack.elementAt(i);
            if (!(expressionElementAt instanceof ApplyExp)) {
                return null;
            }
            ApplyExp applyExp = (ApplyExp) expressionElementAt;
            applyExp.getFunction();
            if (applyExp.getFunction() != MakeAttribute.makeAttributeExp) {
                return null;
            }
            Expression[] args = applyExp.getArgs();
            if (args.length != 2) {
                return null;
            }
            Expression expression = args[0];
            if (!(expression instanceof QuoteExp)) {
                return null;
            }
            Object value = ((QuoteExp) expression).getValue();
            if (!(value instanceof Symbol)) {
                return null;
            }
            Symbol symbol = (Symbol) value;
            if (symbol.getLocalPart() == str2 && symbol.getNamespaceURI() == str) {
                this.comp.exprStack.removeElementAt(i2);
                return (String) ((QuoteExp) args[1]).getValue();
            }
        }
        return null;
    }

    public Expression popTemplateBody(int i) {
        int size = this.comp.exprStack.size() - i;
        Expression[] expressionArr = new Expression[size];
        while (true) {
            size--;
            if (size >= 0) {
                expressionArr[size] = this.comp.exprStack.pop();
            } else {
                return new ApplyExp(AppendValues.appendValues, expressionArr);
            }
        }
    }

    public static String isXslTag(Object obj) {
        if (obj instanceof QuoteExp) {
            obj = ((QuoteExp) obj).getValue();
        }
        if (!(obj instanceof Symbol)) {
            return null;
        }
        Symbol symbol = (Symbol) obj;
        if (symbol.getNamespaceURI() != XSL_TRANSFORM_URI) {
            return null;
        }
        return symbol.getLocalName();
    }

    @Override // gnu.lists.Consumer
    public void startElement(Object obj) {
        maybeSkipWhitespace();
        String strIsXslTag = isXslTag(obj);
        if (strIsXslTag == "template") {
            if (this.templateLambda != null) {
                error("nested xsl:template");
            }
            this.templateLambda = new LambdaExp();
        } else if (strIsXslTag == PropertyTypeConstants.PROPERTY_TYPE_TEXT) {
            this.preserveSpace = false;
        }
        if (obj instanceof XName) {
            XName xName = (XName) obj;
            obj = Symbol.make(xName.getNamespaceURI(), xName.getLocalPart(), xName.getPrefix());
        }
        this.nesting.append((char) this.comp.exprStack.size());
        push(obj);
    }

    @Override // gnu.lists.Consumer
    public void startAttribute(Object obj) {
        if (this.inAttribute) {
            error('f', "internal error - attribute inside attribute");
        }
        this.attributeType = obj;
        this.attributeValue.setLength(0);
        this.nesting.append((char) this.comp.exprStack.size());
        this.inAttribute = true;
    }

    @Override // gnu.lists.Consumer
    public void endAttribute() {
        push((Expression) new ApplyExp((Expression) MakeAttribute.makeAttributeExp, new QuoteExp(this.attributeType), new QuoteExp(this.attributeValue.toString())));
        StringBuffer stringBuffer = this.nesting;
        stringBuffer.setLength(stringBuffer.length() - 1);
        this.inAttribute = false;
    }

    @Override // gnu.lists.Consumer
    public void endElement() {
        maybeSkipWhitespace();
        int length = this.nesting.length() - 1;
        char cCharAt = this.nesting.charAt(length);
        this.nesting.setLength(length);
        String strIsXslTag = isXslTag(this.comp.exprStack.elementAt(cCharAt));
        if (strIsXslTag == "value-of") {
            String strPopMatchingAttribute = popMatchingAttribute("", "select", cCharAt + 1);
            if (strPopMatchingAttribute != null) {
                ApplyExp applyExp = new ApplyExp(XQParser.makeText, parseXPath(strPopMatchingAttribute));
                this.comp.exprStack.pop();
                push((Expression) applyExp);
                return;
            }
            return;
        }
        if (strIsXslTag == "copy-of") {
            String strPopMatchingAttribute2 = popMatchingAttribute("", "select", cCharAt + 1);
            if (strPopMatchingAttribute2 != null) {
                Expression xPath = parseXPath(strPopMatchingAttribute2);
                this.comp.exprStack.pop();
                push(xPath);
                return;
            }
            return;
        }
        if (strIsXslTag == "apply-templates") {
            int i = cCharAt + 1;
            Expression[] expressionArr = {new QuoteExp(popMatchingAttribute("", "select", i)), resolveQNameExpression(popMatchingAttribute("", "mode", i))};
            this.comp.exprStack.pop();
            push((Expression) new ApplyExp((Expression) new QuoteExp(applyTemplatesProc), expressionArr));
            return;
        }
        if (strIsXslTag == "if") {
            int i2 = cCharAt + 1;
            Expression expressionBooleanValue = XQParser.booleanValue(parseXPath(popMatchingAttribute("", "test", i2)));
            Expression expressionPopTemplateBody = popTemplateBody(i2);
            this.comp.exprStack.pop();
            push((Expression) new IfExp(expressionBooleanValue, expressionPopTemplateBody, QuoteExp.voidExp));
            return;
        }
        if (strIsXslTag == "stylesheet" || strIsXslTag == "transform") {
            int i3 = cCharAt + 1;
            popMatchingAttribute("", "version", i3);
            push((Expression) new ApplyExp((Expression) new QuoteExp(runStylesheetProc), Expression.noExpressions));
            Expression expressionPopTemplateBody2 = popTemplateBody(i3);
            push(expressionPopTemplateBody2);
            this.mexp.body = expressionPopTemplateBody2;
            return;
        }
        if (strIsXslTag == "template") {
            int i4 = cCharAt + 1;
            String strPopMatchingAttribute3 = popMatchingAttribute("", "match", i4);
            String strPopMatchingAttribute4 = popMatchingAttribute("", "name", i4);
            popMatchingAttribute("", "priority", i4);
            String strPopMatchingAttribute5 = popMatchingAttribute("", "mode", i4);
            this.templateLambda.body = popTemplateBody(i4);
            this.comp.exprStack.pop();
            push((Expression) new ApplyExp((Expression) new QuoteExp(defineTemplateProc), resolveQNameExpression(strPopMatchingAttribute4), new QuoteExp(strPopMatchingAttribute3), new QuoteExp(DFloNum.make(0.0d)), resolveQNameExpression(strPopMatchingAttribute5), this.templateLambda));
            this.templateLambda = null;
            return;
        }
        if (strIsXslTag == PropertyTypeConstants.PROPERTY_TYPE_TEXT) {
            this.preserveSpace = false;
            int size = (this.comp.exprStack.size() - cCharAt) - 1;
            Expression[] expressionArr2 = new Expression[size];
            while (true) {
                size--;
                if (size >= 0) {
                    expressionArr2[size] = this.comp.exprStack.pop();
                } else {
                    this.comp.exprStack.pop();
                    ApplyExp applyExp2 = new ApplyExp(XQParser.makeText, expressionArr2);
                    push((Expression) applyExp2);
                    this.mexp.body = applyExp2;
                    return;
                }
            }
        } else {
            int size2 = this.comp.exprStack.size() - cCharAt;
            Expression[] expressionArr3 = new Expression[size2];
            while (true) {
                size2--;
                if (size2 >= 0) {
                    expressionArr3[size2] = this.comp.exprStack.pop();
                } else {
                    ApplyExp applyExp3 = new ApplyExp((Expression) new QuoteExp(new MakeElement()), expressionArr3);
                    push((Expression) applyExp3);
                    this.mexp.body = applyExp3;
                    return;
                }
            }
        }
    }

    public Expression parseXPath(String str) {
        try {
            XQParser xQParser = new XQParser(new CharArrayInPort(str), this.comp.getMessages(), this.interpreter);
            Vector vector = new Vector(20);
            while (true) {
                Expression expression = xQParser.parse(this.comp);
                if (expression == null) {
                    break;
                }
                vector.addElement(expression);
            }
            int size = vector.size();
            if (size == 0) {
                return QuoteExp.voidExp;
            }
            if (size == 1) {
                return (Expression) vector.elementAt(0);
            }
            throw new InternalError("too many xpath expressions");
        } catch (Throwable th) {
            th.printStackTrace();
            throw new InternalError("caught " + th);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(int i) {
        String str;
        if (this.inAttribute) {
            this.attributeValue.appendCodePoint(i);
            return;
        }
        if (i < 65536) {
            str = String.valueOf(i);
        } else {
            str = new String(new char[]{(char) (((i - 65536) >> 10) + 55296), (char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER)});
        }
        push(str);
    }

    @Override // java.lang.Appendable
    public Consumer append(char c) {
        if (this.inAttribute) {
            this.attributeValue.append(c);
            return this;
        }
        push(String.valueOf(c));
        return this;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence charSequence) {
        if (this.inAttribute) {
            this.attributeValue.append(charSequence);
            return this;
        }
        push(charSequence.toString());
        return this;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence charSequence, int i, int i2) {
        return append(charSequence.subSequence(i, i2));
    }

    public void push(Expression expression) {
        this.comp.exprStack.push(expression);
    }

    public void push(Object obj) {
        push((Expression) new QuoteExp(obj));
    }

    @Override // gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        if (this.inAttribute) {
            this.attributeValue.append(z);
        } else {
            push((Expression) (z ? QuoteExp.trueExp : QuoteExp.falseExp));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeFloat(float f) {
        if (this.inAttribute) {
            this.attributeValue.append(f);
        } else {
            push(DFloNum.make(f));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeDouble(double d) {
        if (this.inAttribute) {
            this.attributeValue.append(d);
        } else {
            push(DFloNum.make(d));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeInt(int i) {
        if (this.inAttribute) {
            this.attributeValue.append(i);
        } else {
            push(IntNum.make(i));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeLong(long j) {
        if (this.inAttribute) {
            this.attributeValue.append(j);
        } else {
            push(IntNum.make(j));
        }
    }

    public void startDocument(ModuleExp moduleExp) {
        this.mexp = moduleExp;
        startDocument();
    }

    @Override // gnu.lists.Consumer
    public void writeObject(Object obj) {
        if (this.inAttribute) {
            this.attributeValue.append(obj);
        } else {
            push(obj);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) {
        if (this.inAttribute) {
            this.attributeValue.append(cArr, i, i2);
        } else {
            push(new String(cArr, i, i2));
        }
    }

    @Override // gnu.lists.Consumer
    public void write(String str) {
        if (this.inAttribute) {
            this.attributeValue.append(str);
        } else {
            push(str);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) {
        write(charSequence.subSequence(i, i2).toString());
    }

    public Expression getExpression() {
        return this.comp.exprStack.pop();
    }

    @Override // gnu.text.Lexer
    public void error(char c, String str) {
        getMessages().error(c, str);
    }

    public Expression resolveQNameExpression(String str) {
        if (str == null) {
            return QuoteExp.nullExp;
        }
        return new QuoteExp(Symbol.make(null, str));
    }

    public void parse(Compilation compilation) throws SAXException, IOException {
        this.comp = compilation;
        if (compilation.exprStack == null) {
            compilation.exprStack = new Stack<>();
        }
        ModuleExp moduleExpPushNewModule = compilation.pushNewModule(this);
        compilation.mustCompileHere();
        startDocument(moduleExpPushNewModule);
        XMLParser.parse((LineBufferedReader) this.in, getMessages(), (Consumer) this);
        endDocument();
        compilation.pop(moduleExpPushNewModule);
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xslt.XSLT");
        typeXSLT = classTypeMake;
        typeTemplateTable = ClassType.make("gnu.kawa.xslt.TemplateTable");
        Method declaredMethod = classTypeMake.getDeclaredMethod("defineTemplate", 5);
        defineTemplateMethod = declaredMethod;
        Method declaredMethod2 = classTypeMake.getDeclaredMethod("runStylesheet", 0);
        runStylesheetMethod = declaredMethod2;
        defineTemplateProc = new PrimProcedure(declaredMethod);
        runStylesheetProc = new PrimProcedure(declaredMethod2);
        Method declaredMethod3 = classTypeMake.getDeclaredMethod("applyTemplates", 2);
        applyTemplatesMethod = declaredMethod3;
        applyTemplatesProc = new PrimProcedure(declaredMethod3);
    }
}

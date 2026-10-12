package gnu.ecmascript;

import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.LambdaExp;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.SetExp;
import gnu.lists.Sequence;
import gnu.mapping.Environment;
import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.mapping.TtyInPort;
import gnu.mapping.Values;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.util.Vector;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class Parser {

    /* renamed from: a, reason: collision with root package name */
    public final InPort f5464a;

    /* renamed from: b, reason: collision with root package name */
    public final Lexer f5465b;
    public Object c;
    public Object d;
    public int errors;
    public static Expression eofExpr = new QuoteExp(Sequence.eofValue);
    public static final Expression[] emptyArgs = new Expression[0];
    public static final QuoteExp e = new QuoteExp(Values.empty);

    public Expression makePropertyAccessor(Expression expression, Expression expression2) {
        return null;
    }

    public Parser(InPort inPort) {
        this.f5464a = inPort;
        this.f5465b = new Lexer(inPort);
    }

    public Expression parseConditionalExpression() throws SyntaxException, IOException {
        Expression binaryExpression = parseBinaryExpression(1);
        if (peekToken() != Lexer.condToken) {
            return binaryExpression;
        }
        skipToken();
        Expression assignmentExpression = parseAssignmentExpression();
        if (getToken() != Lexer.colonToken) {
            return syntaxError("expected ':' in conditional expression");
        }
        return new IfExp(binaryExpression, assignmentExpression, parseAssignmentExpression());
    }

    public Expression parseAssignmentExpression() throws SyntaxException, IOException {
        Expression conditionalExpression = parseConditionalExpression();
        Object objPeekToken = peekToken();
        if (objPeekToken == Lexer.equalToken) {
            skipToken();
            Expression assignmentExpression = parseAssignmentExpression();
            if (conditionalExpression instanceof ReferenceExp) {
                SetExp setExp = new SetExp(((ReferenceExp) conditionalExpression).getName(), assignmentExpression);
                setExp.setDefining(true);
                return setExp;
            }
            return syntaxError("unmplemented non-symbol ihs in assignment");
        }
        if (objPeekToken instanceof Reserved) {
            Reserved reserved = (Reserved) objPeekToken;
            if (reserved.isAssignmentOp()) {
                skipToken();
                return new ApplyExp((Expression) new QuoteExp(reserved.c), conditionalExpression, parseAssignmentExpression());
            }
        }
        return conditionalExpression;
    }

    public Expression parseExpression() throws SyntaxException, IOException {
        Expression[] expressionArr = null;
        int i = 0;
        while (true) {
            Expression assignmentExpression = parseAssignmentExpression();
            boolean z = peekToken() != Lexer.commaToken;
            if (expressionArr != null) {
                int length = expressionArr.length;
                if (!z ? length <= i : length != i + 1) {
                    Expression[] expressionArr2 = new Expression[z ? i + 1 : expressionArr.length * 2];
                    System.arraycopy(expressionArr, 0, expressionArr2, 0, i);
                    expressionArr = expressionArr2;
                }
            } else {
                if (z) {
                    return assignmentExpression;
                }
                expressionArr = new Expression[2];
            }
            int i2 = i + 1;
            expressionArr[i] = assignmentExpression;
            if (z) {
                return new BeginExp(expressionArr);
            }
            skipToken();
            i = i2;
        }
    }

    public Object peekTokenOrLine() throws SyntaxException, IOException {
        if (this.d == null) {
            this.d = this.f5465b.getToken();
        }
        return this.d;
    }

    public Object peekToken() throws SyntaxException, IOException {
        Object obj = this.d;
        Lexer lexer = this.f5465b;
        if (obj == null) {
            this.d = lexer.getToken();
        }
        while (true) {
            Object obj2 = this.d;
            if (obj2 != Lexer.eolToken) {
                return obj2;
            }
            skipToken();
            this.d = lexer.getToken();
        }
    }

    public Object getToken() throws SyntaxException, IOException {
        Object objPeekToken = peekToken();
        skipToken();
        return objPeekToken;
    }

    public final void skipToken() {
        Object obj = this.d;
        if (obj != Lexer.eofToken) {
            this.c = obj;
            this.d = null;
        }
    }

    public void getSemicolon() throws SyntaxException, IOException {
        Object objPeekToken = peekToken();
        this.d = objPeekToken;
        if (objPeekToken == Lexer.semicolonToken) {
            skipToken();
        } else {
            if (objPeekToken == Lexer.rbraceToken || objPeekToken == Lexer.eofToken || this.c == Lexer.eolToken) {
                return;
            }
            syntaxError("missing ';' after expression");
        }
    }

    public Expression parsePrimaryExpression() throws SyntaxException, IOException {
        Object token = getToken();
        if (token instanceof QuoteExp) {
            return (QuoteExp) token;
        }
        if (token instanceof String) {
            return new ReferenceExp((String) token);
        }
        if (token == Lexer.lparenToken) {
            Expression expression = parseExpression();
            Object token2 = getToken();
            if (token2 == Lexer.rparenToken) {
                return expression;
            }
            return syntaxError("expected ')' - got:" + token2);
        }
        return syntaxError("unexpected token: " + token);
    }

    public Expression[] parseArguments() throws SyntaxException, IOException {
        skipToken();
        if (peekToken() == Lexer.rparenToken) {
            skipToken();
            return emptyArgs;
        }
        Vector vector = new Vector(10);
        while (true) {
            vector.addElement(parseAssignmentExpression());
            Object token = getToken();
            if (token != Lexer.rparenToken) {
                if (token != Lexer.commaToken) {
                    syntaxError("invalid token '" + token + "' in argument list");
                }
            } else {
                Expression[] expressionArr = new Expression[vector.size()];
                vector.copyInto(expressionArr);
                return expressionArr;
            }
        }
    }

    public Expression makeNewExpression(Expression expression, Expression[] expressionArr) {
        if (expressionArr == null) {
            expressionArr = emptyArgs;
        }
        return new ApplyExp((Expression) null, expressionArr);
    }

    public Expression makeCallExpression(Expression expression, Expression[] expressionArr) {
        return new ApplyExp(expression, expressionArr);
    }

    public String getIdentifier() throws SyntaxException, IOException {
        Object token = getToken();
        if (token instanceof String) {
            return (String) token;
        }
        syntaxError("missing identifier");
        return "??";
    }

    public Expression parseLeftHandSideExpression() throws SyntaxException, IOException {
        int i = 0;
        while (peekToken() == Lexer.newToken) {
            i++;
            skipToken();
        }
        Expression primaryExpression = parsePrimaryExpression();
        while (true) {
            Object objPeekToken = peekToken();
            if (objPeekToken == Lexer.dotToken) {
                skipToken();
                primaryExpression = makePropertyAccessor(primaryExpression, new QuoteExp(getIdentifier()));
            } else if (objPeekToken == Lexer.lbracketToken) {
                skipToken();
                Expression expression = parseExpression();
                Object token = getToken();
                if (token != Lexer.rbracketToken) {
                    return syntaxError("expected ']' - got:" + token);
                }
                primaryExpression = makePropertyAccessor(primaryExpression, expression);
            } else {
                if (objPeekToken != Lexer.lparenToken) {
                    while (i > 0) {
                        primaryExpression = makeNewExpression(primaryExpression, null);
                        i--;
                    }
                    return primaryExpression;
                }
                Expression[] arguments = parseArguments();
                System.err.println("after parseArgs:" + peekToken());
                if (i > 0) {
                    primaryExpression = makeNewExpression(primaryExpression, arguments);
                    i--;
                } else {
                    primaryExpression = makeCallExpression(primaryExpression, arguments);
                }
            }
        }
    }

    public Expression parsePostfixExpression() throws SyntaxException, IOException {
        Expression leftHandSideExpression = parseLeftHandSideExpression();
        Object objPeekTokenOrLine = peekTokenOrLine();
        int i = Reserved.VAR_TOKEN;
        if (objPeekTokenOrLine != null && objPeekTokenOrLine != null) {
            return leftHandSideExpression;
        }
        skipToken();
        return new ApplyExp((Expression) new QuoteExp(((Reserved) objPeekTokenOrLine).c), leftHandSideExpression);
    }

    public Expression parseUnaryExpression() throws SyntaxException, IOException {
        return parsePostfixExpression();
    }

    public Expression syntaxError(String str) throws IOException {
        this.errors++;
        OutPort outPortErrDefault = OutPort.errDefault();
        InPort inPort = this.f5464a;
        String name = inPort.getName();
        int lineNumber = inPort.getLineNumber() + 1;
        int columnNumber = inPort.getColumnNumber() + 1;
        if (lineNumber > 0) {
            if (name != null) {
                outPortErrDefault.print(name);
            }
            outPortErrDefault.print(':');
            outPortErrDefault.print(lineNumber);
            if (columnNumber > 1) {
                outPortErrDefault.print(':');
                outPortErrDefault.print(columnNumber);
            }
            outPortErrDefault.print(": ");
        }
        outPortErrDefault.println(str);
        return new ErrorExp(str);
    }

    public Expression parseBinaryExpression(int i) throws SyntaxException, IOException {
        Expression unaryExpression = parseUnaryExpression();
        while (true) {
            Object objPeekToken = peekToken();
            this.d = objPeekToken;
            if (!(objPeekToken instanceof Reserved)) {
                break;
            }
            Reserved reserved = (Reserved) objPeekToken;
            if (reserved.f5468b < i) {
                break;
            }
            getToken();
            unaryExpression = new ApplyExp((Expression) new QuoteExp(reserved.c), unaryExpression, parseBinaryExpression(reserved.f5468b + 1));
        }
        return unaryExpression;
    }

    public Expression parseIfStatement() throws SyntaxException, IOException {
        Expression statement;
        skipToken();
        Object token = getToken();
        if (token != Lexer.lparenToken) {
            return syntaxError("expected '(' - got:" + token);
        }
        Expression expression = parseExpression();
        Object token2 = getToken();
        if (token2 != Lexer.rparenToken) {
            return syntaxError("expected ')' - got:" + token2);
        }
        Expression statement2 = parseStatement();
        if (peekToken() == Lexer.elseToken) {
            skipToken();
            statement = parseStatement();
        } else {
            statement = null;
        }
        return new IfExp(expression, statement2, statement);
    }

    public Expression buildLoop(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        if (expression != null) {
            return new BeginExp(new Expression[]{expression, buildLoop(null, expression2, expression3, expression4)});
        }
        throw new Error("not implemented - buildLoop");
    }

    public Expression parseWhileStatement() throws SyntaxException, IOException {
        skipToken();
        Object token = getToken();
        if (token != Lexer.lparenToken) {
            return syntaxError("expected '(' - got:" + token);
        }
        Expression expression = parseExpression();
        Object token2 = getToken();
        if (token2 != Lexer.rparenToken) {
            return syntaxError("expected ')' - got:" + token2);
        }
        return buildLoop(null, expression, null, parseStatement());
    }

    public Expression parseFunctionDefinition() throws SyntaxException, IOException {
        skipToken();
        String identifier = getIdentifier();
        Object token = getToken();
        if (token != Lexer.lparenToken) {
            return syntaxError("expected '(' - got:" + token);
        }
        Vector vector = new Vector(10);
        if (peekToken() == Lexer.rparenToken) {
            skipToken();
        } else {
            while (true) {
                vector.addElement(getIdentifier());
                Object token2 = getToken();
                if (token2 == Lexer.rparenToken) {
                    break;
                }
                if (token2 != Lexer.commaToken) {
                    syntaxError("invalid token '" + token2 + "' in argument list");
                }
            }
        }
        LambdaExp lambdaExp = new LambdaExp(parseBlock());
        lambdaExp.setName(identifier);
        SetExp setExp = new SetExp(identifier, lambdaExp);
        setExp.setDefining(true);
        return setExp;
    }

    public Expression parseBlock() throws SyntaxException, IOException {
        boolean z;
        if (getToken() != Lexer.lbraceToken) {
            return syntaxError("extened '{'");
        }
        Expression[] expressionArr = null;
        int i = 0;
        while (true) {
            Object objPeekToken = peekToken();
            this.d = objPeekToken;
            if (objPeekToken == Lexer.rbraceToken) {
                skipToken();
                if (expressionArr == null) {
                    return e;
                }
                z = true;
            } else {
                z = false;
            }
            if (expressionArr == null) {
                expressionArr = new Expression[2];
            } else {
                int length = expressionArr.length;
                if (!z ? length <= i : length != i) {
                    Expression[] expressionArr2 = new Expression[z ? i : expressionArr.length * 2];
                    System.arraycopy(expressionArr, 0, expressionArr2, 0, i);
                    expressionArr = expressionArr2;
                }
            }
            if (z) {
                return new BeginExp(expressionArr);
            }
            expressionArr[i] = parseStatement();
            i++;
        }
    }

    public Expression parseStatement() throws SyntaxException, IOException {
        Object objPeekToken = peekToken();
        if (objPeekToken instanceof Reserved) {
            int i = ((Reserved) objPeekToken).f5468b;
            if (i == 31) {
                return parseIfStatement();
            }
            if (i == 32) {
                return parseWhileStatement();
            }
            if (i == 41) {
                return parseFunctionDefinition();
            }
        }
        if (objPeekToken == Lexer.eofToken) {
            return eofExpr;
        }
        if (objPeekToken == Lexer.semicolonToken) {
            skipToken();
            return e;
        }
        if (objPeekToken == Lexer.lbraceToken) {
            return parseBlock();
        }
        Expression expression = parseExpression();
        getSemicolon();
        return expression;
    }

    public static void main(String[] strArr) {
        new Scheme();
        InPort inPortInDefault = InPort.inDefault();
        if (inPortInDefault instanceof TtyInPort) {
            ((TtyInPort) inPortInDefault).setPrompter(new a());
        }
        Parser parser = new Parser(inPortInDefault);
        OutPort outPortOutDefault = OutPort.outDefault();
        while (true) {
            try {
                Expression statement = parser.parseStatement();
                if (statement == eofExpr) {
                    return;
                }
                outPortOutDefault.print("[Expression: ");
                statement.print(outPortOutDefault);
                outPortOutDefault.println("]");
                Object objEval = statement.eval(Environment.user());
                outPortOutDefault.print("result: ");
                outPortOutDefault.print(objEval);
                outPortOutDefault.println();
            } catch (Throwable th) {
                System.err.println("caught exception:" + th);
                th.printStackTrace(System.err);
                return;
            }
        }
    }
}

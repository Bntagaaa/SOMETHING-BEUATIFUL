.class public Lgnu/xquery/lang/XQuery;
.super Lgnu/expr/Language;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_FUNCTION_PREFIX:Ljava/lang/String; = "(functions)"

.field public static final KAWA_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://kawa.gnu.org/"

.field public static final LOCAL_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xquery-local-functions"

.field public static final PARSE_WITH_FOCUS:I = 0x10000

.field public static final QEXO_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://qexo.gnu.org/"

.field public static final SCHEMA_INSTANCE_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final SCHEMA_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final VARIADIC_FUNCTION_NAMESPACE:I = -0x2

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final XQUERY_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field static charIsInt:Z

.field public static final defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

.field static envCounter:I

.field public static extensionsEnvEnv:Lgnu/mapping/Environment;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static final falseFunction:Lgnu/kawa/functions/ConstantFunction0;

.field public static final instance:Lgnu/xquery/lang/XQuery;

.field public static final kawaFunctionNamespace:Lgnu/mapping/Namespace;

.field public static final qexoFunctionNamespace:Lgnu/mapping/Namespace;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static final trueFunction:Lgnu/kawa/functions/ConstantFunction0;

.field static typeMap:[Ljava/lang/Object;

.field public static final xqEnvironment:Lgnu/mapping/Environment;

.field public static final xqueryFunctionNamespace:Lgnu/mapping/Namespace;


# instance fields
.field defaultNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 41
    const-string v0, "dateTime"

    const-string v1, "QName"

    const-string v2, "boolean"

    const-string v3, "http://www.w3.org/2005/xpath-functions"

    invoke-static {v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    sput-object v4, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    .line 43
    const-string v5, "http://kawa.gnu.org/"

    invoke-static {v5}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v6

    sput-object v6, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    .line 45
    const-string v7, "http://qexo.gnu.org/"

    invoke-static {v7}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v7

    sput-object v7, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    const/4 v8, 0x4

    .line 47
    new-array v9, v8, [Lgnu/mapping/Namespace;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v11, 0x1

    aput-object v4, v9, v11

    sget-object v12, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const/4 v13, 0x2

    aput-object v12, v9, v13

    const/4 v12, 0x3

    aput-object v6, v9, v12

    sput-object v9, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    .line 52
    sput-boolean v10, Lgnu/xquery/lang/XQuery;->charIsInt:Z

    const/4 v6, 0x0

    .line 55
    sput-object v6, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 279
    sput v10, Lgnu/xquery/lang/XQuery;->envCounter:I

    .line 282
    invoke-static {v5}, Lgnu/mapping/Environment;->getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;

    move-result-object v5

    sput-object v5, Lgnu/xquery/lang/XQuery;->extensionsEnvEnv:Lgnu/mapping/Environment;

    .line 553
    invoke-static {v3}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v3

    sput-object v3, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 558
    new-instance v3, Lgnu/xquery/lang/XQuery;

    invoke-direct {v3}, Lgnu/xquery/lang/XQuery;-><init>()V

    sput-object v3, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    .line 569
    invoke-static {v11}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 571
    const-string v5, "unescapedData"

    const-string v6, "unescaped-data"

    const-string v9, "gnu.kawa.xml.MakeUnescapedData"

    invoke-virtual {v3, v6, v9, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v5, "itemAt"

    const-string v6, "item-at"

    const-string v9, "gnu.xquery.util.ItemAt"

    invoke-virtual {v3, v6, v9, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v5, "countValues"

    const-string v6, "count"

    const-string v9, "gnu.kawa.functions.CountValues"

    invoke-virtual {v3, v6, v9, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v5, "sum"

    const-string v6, "gnu.xquery.util.Reduce"

    invoke-virtual {v3, v5, v6, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v5, "avg"

    const-string v6, "gnu.xquery.util.Average"

    invoke-virtual {v3, v5, v6, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v5, "sublist"

    const-string v6, "gnu.xquery.util.SubList"

    const-string v9, "subList"

    invoke-virtual {v3, v5, v6, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v5, "subsequence"

    invoke-virtual {v3, v5, v6, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v5, "empty"

    const-string v6, "gnu.xquery.util.SequenceUtils"

    const-string v9, "isEmptySequence"

    invoke-virtual {v3, v5, v6, v9}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v5, "exists"

    invoke-virtual {v3, v5, v6, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v5, "insert-before"

    const-string v9, "insertBefore$X"

    invoke-virtual {v3, v5, v6, v9}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v5, "remove"

    const-string v9, "remove$X"

    invoke-virtual {v3, v5, v6, v9}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v5, "reverse"

    const-string v9, "reverse$X"

    invoke-virtual {v3, v5, v6, v9}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v5, "false"

    const-string v9, "gnu.xquery.lang.XQuery"

    const-string v14, "falseFunction"

    invoke-virtual {v3, v5, v9, v14}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v14, "trueFunction"

    const-string v15, "true"

    invoke-virtual {v3, v15, v9, v14}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v9, "gnu.xquery.util.BooleanValue"

    const-string v14, "booleanValue"

    invoke-virtual {v3, v2, v9, v14}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v14, "trace"

    const/16 v16, 0x4

    const-string v8, "gnu.xquery.util.Debug"

    invoke-virtual {v3, v14, v8, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v8, "error"

    const-string v14, "gnu.xquery.util.XQException"

    invoke-virtual {v3, v8, v14, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v8, "write-to"

    const-string v14, "gnu.kawa.xml.WriteTo"

    const/16 v17, 0x0

    const-string v10, "writeTo"

    invoke-virtual {v3, v8, v14, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v8, "write-to-if-changed"

    const-string v10, "writeToIfChanged"

    invoke-virtual {v3, v8, v14, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v8, "iteratorItems"

    const-string v10, "iterator-items"

    const-string v14, "gnu.kawa.xml.IteratorItems"

    invoke-virtual {v3, v10, v14, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v8, "listItems"

    const-string v10, "list-items"

    const-string v14, "gnu.kawa.xml.ListItems"

    invoke-virtual {v3, v10, v14, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v8, "node-name"

    const-string v10, "gnu.xquery.util.NodeUtils"

    const-string v14, "nodeName"

    invoke-virtual {v3, v8, v10, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v8, "nilled"

    invoke-virtual {v3, v8, v10, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v8, "data"

    const-string v14, "data$X"

    invoke-virtual {v3, v8, v10, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v8, "lower-case"

    const-string v14, "gnu.xquery.util.StringUtils"

    const/16 v18, 0x1

    const-string v11, "lowerCase"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v8, "upper-case"

    const-string v11, "upperCase"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v8, "substring"

    invoke-virtual {v3, v8, v14, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v8, "string-length"

    const-string v11, "stringLength"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v8, "substring-before"

    const-string v11, "substringBefore"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v8, "substring-after"

    const-string v11, "substringAfter"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v8, "translate"

    invoke-virtual {v3, v8, v14, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v8, "encode-for-uri"

    const-string v11, "encodeForUri"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v8, "iri-to-uri"

    const-string v11, "iriToUri"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v8, "escape-html-uri"

    const-string v11, "escapeHtmlUri"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v8, "contains"

    invoke-virtual {v3, v8, v14, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v8, "starts-with"

    const-string v11, "startsWith"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v8, "ends-with"

    const-string v11, "endsWith"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v8, "codepoint-equal"

    const-string v11, "codepointEqual"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v8, "normalize-unicode"

    const-string v11, "normalizeUnicode"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v8, "string-join"

    const-string v11, "stringJoin"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v8, "concat"

    const-string v11, "concat$V"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v8, "matches"

    invoke-virtual {v3, v8, v14, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v8, "replace"

    invoke-virtual {v3, v8, v14, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v8, "tokenize"

    const-string v11, "tokenize$X"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v8, "string-to-codepoints"

    const-string v11, "stringToCodepoints$X"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v8, "codepoints-to-string"

    const-string v11, "codepointsToString"

    invoke-virtual {v3, v8, v14, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v8, "abs"

    const-string v11, "gnu.xquery.util.NumberValue"

    invoke-virtual {v3, v8, v11, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v8, "floor"

    invoke-virtual {v3, v8, v11, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v8, "ceiling"

    invoke-virtual {v3, v8, v11, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v8, "round"

    invoke-virtual {v3, v8, v11, v8}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v8, "round-half-to-even"

    const-string v14, "roundHalfToEven"

    invoke-virtual {v3, v8, v11, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v8, "gnu.xquery.util.QNameUtils"

    const-string v11, "makeQName"

    invoke-virtual {v3, v1, v8, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v11, "resolve-QName"

    const-string v14, "resolveQNameUsingElement"

    invoke-virtual {v3, v11, v8, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v11, "prefix-from-QName"

    const-string v14, "prefixFromQName"

    invoke-virtual {v3, v11, v8, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v11, "local-name-from-QName"

    const-string v14, "localNameFromQName"

    invoke-virtual {v3, v11, v8, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v11, "namespace-uri-from-QName"

    const-string v14, "namespaceURIFromQName"

    invoke-virtual {v3, v11, v8, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v11, "namespace-uri-for-prefix"

    const-string v14, "namespaceURIForPrefix"

    invoke-virtual {v3, v11, v8, v14}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v8, "in-scope-prefixes"

    const-string v11, "inScopePrefixes$X"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v8, "document-uri"

    const-string v11, "documentUri"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v8, "years-from-duration"

    const-string v10, "gnu.xquery.util.TimeUtils"

    const-string v11, "yearsFromDuration"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v8, "months-from-duration"

    const-string v11, "monthsFromDuration"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v8, "days-from-duration"

    const-string v11, "daysFromDuration"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v8, "hours-from-duration"

    const-string v11, "hoursFromDuration"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v8, "minutes-from-duration"

    const-string v11, "minutesFromDuration"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v8, "seconds-from-duration"

    const-string v11, "secondsFromDuration"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v8, "year-from-dateTime"

    const-string v11, "yearFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v8, "month-from-dateTime"

    const-string v11, "monthFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v8, "day-from-dateTime"

    const-string v11, "dayFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v8, "hours-from-dateTime"

    const-string v11, "hoursFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v8, "minutes-from-dateTime"

    const-string v11, "minutesFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v8, "seconds-from-dateTime"

    const-string v11, "secondsFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v8, "timezone-from-dateTime"

    const-string v11, "timezoneFromDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v8, "year-from-date"

    const-string v11, "yearFromDate"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v8, "month-from-date"

    const-string v11, "monthFromDate"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v8, "day-from-date"

    const-string v11, "dayFromDate"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v8, "timezone-from-date"

    const-string v11, "timezoneFromDate"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v8, "hours-from-time"

    const-string v11, "hoursFromTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v8, "minutes-from-time"

    const-string v11, "minutesFromTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v8, "seconds-from-time"

    const-string v11, "secondsFromTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v8, "timezone-from-time"

    const-string v11, "timezoneFromTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v8, "adjust-dateTime-to-timezone"

    const-string v11, "adjustDateTimeToTimezone"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v8, "adjust-date-to-timezone"

    const-string v11, "adjustDateToTimezone"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v8, "adjust-time-to-timezone"

    const-string v11, "adjustTimeToTimezone"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v3, v0, v10, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v8, "current-dateTime"

    const-string v11, "currentDateTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v8, "current-date"

    const-string v11, "currentDate"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v8, "current-time"

    const-string v11, "currentTime"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v8, "implicit-timezone"

    const-string v11, "implicitTimezone"

    invoke-virtual {v3, v8, v10, v11}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v8, "zero-or-one"

    const-string v10, "zeroOrOne"

    invoke-virtual {v3, v8, v6, v10}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v8, "one-or-more"

    const-string v10, "oneOrMore"

    invoke-virtual {v3, v8, v6, v10}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v8, "exactly-one"

    const-string v10, "exactlyOne"

    invoke-virtual {v3, v8, v6, v10}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v6, "sortNodes"

    const-string v8, "distinct-nodes"

    const-string v10, "gnu.kawa.xml.SortNodes"

    invoke-virtual {v3, v8, v10, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v6, "gnu.kawa.xml.Children"

    const-string v8, "children"

    invoke-virtual {v3, v8, v6, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v6, "not"

    invoke-virtual {v3, v6, v9, v6}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iput-object v7, v3, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 729
    const-string v6, "response-header"

    const-string v7, "gnu.kawa.servlet.HTTP"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v6, "response-content-type"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v6, "response-status"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v6, "error-response"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v6, "current-servlet"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v6, "current-servlet-context"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v6, "current-servlet-config"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v6, "servlet-context-realpath"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v6, "get-response"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v6, "get-request"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v6, "request-method"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v6, "request-uri"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v6, "request-url"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v6, "request-path-info"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v6, "request-path-translated"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v6, "request-servlet-path"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v6, "request-query-string"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v6, "request-parameter"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v6, "request-parameters"

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iput-object v4, v3, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 763
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v3, v4, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v3, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    .line 765
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v3, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    .line 768
    new-instance v3, Lgnu/kawa/functions/ConstantFunction0;

    sget-object v4, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v3, v5, v4}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v3, Lgnu/xquery/lang/XQuery;->falseFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 770
    new-instance v3, Lgnu/kawa/functions/ConstantFunction0;

    sget-object v4, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-direct {v3, v15, v4}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v3, Lgnu/xquery/lang/XQuery;->trueFunction:Lgnu/kawa/functions/ConstantFunction0;

    const/16 v3, 0x60

    .line 778
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "string"

    aput-object v4, v3, v17

    sget-object v4, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    aput-object v4, v3, v18

    const-string v4, "untypedAtomic"

    aput-object v4, v3, v13

    sget-object v4, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v4, v3, v12

    aput-object v2, v3, v16

    const/4 v2, 0x5

    aput-object v6, v3, v2

    const-string v2, "integer"

    const/4 v4, 0x6

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v4, 0x7

    aput-object v2, v3, v4

    const-string v2, "long"

    const/16 v4, 0x8

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x9

    aput-object v2, v3, v4

    const-string v2, "int"

    const/16 v4, 0xa

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xb

    aput-object v2, v3, v4

    const-string v2, "short"

    const/16 v4, 0xc

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xd

    aput-object v2, v3, v4

    const-string v2, "byte"

    const/16 v4, 0xe

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0xf

    aput-object v2, v3, v4

    const-string v2, "unsignedLong"

    const/16 v4, 0x10

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x11

    aput-object v2, v3, v4

    const-string v2, "unsignedInt"

    const/16 v4, 0x12

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x13

    aput-object v2, v3, v4

    const-string v2, "unsignedShort"

    const/16 v4, 0x14

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x15

    aput-object v2, v3, v4

    const-string v2, "unsignedByte"

    const/16 v4, 0x16

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x17

    aput-object v2, v3, v4

    const-string v2, "positiveInteger"

    const/16 v4, 0x18

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x19

    aput-object v2, v3, v4

    const-string v2, "nonPositiveInteger"

    const/16 v4, 0x1a

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x1b

    aput-object v2, v3, v4

    const-string v2, "negativeInteger"

    const/16 v4, 0x1c

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x1d

    aput-object v2, v3, v4

    const-string v2, "nonNegativeInteger"

    const/16 v4, 0x1e

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v4, 0x1f

    aput-object v2, v3, v4

    const-string v2, "date"

    const/16 v4, 0x20

    aput-object v2, v3, v4

    sget-object v2, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    const/16 v4, 0x21

    aput-object v2, v3, v4

    const/16 v2, 0x22

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x23

    aput-object v0, v3, v2

    const-string v0, "time"

    const/16 v2, 0x24

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x25

    aput-object v0, v3, v2

    const-string v0, "duration"

    const/16 v2, 0x26

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x27

    aput-object v0, v3, v2

    const-string v0, "yearMonthDuration"

    const/16 v2, 0x28

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x29

    aput-object v0, v3, v2

    const-string v0, "dayTimeDuration"

    const/16 v2, 0x2a

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x2b

    aput-object v0, v3, v2

    const-string v0, "gYearMonth"

    const/16 v2, 0x2c

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x2d

    aput-object v0, v3, v2

    const-string v0, "gYear"

    const/16 v2, 0x2e

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x2f

    aput-object v0, v3, v2

    const-string v0, "gMonthDay"

    const/16 v2, 0x30

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x31

    aput-object v0, v3, v2

    const-string v0, "gDay"

    const/16 v2, 0x32

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x33

    aput-object v0, v3, v2

    const-string v0, "gMonth"

    const/16 v2, 0x34

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x35

    aput-object v0, v3, v2

    const-string v0, "decimal"

    const/16 v2, 0x36

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x37

    aput-object v0, v3, v2

    const-string v0, "float"

    const/16 v2, 0x38

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x39

    aput-object v0, v3, v2

    const-string v0, "double"

    const/16 v2, 0x3a

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3b

    aput-object v0, v3, v2

    const-string v0, "anyURI"

    const/16 v2, 0x3c

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3d

    aput-object v0, v3, v2

    const-string v0, "hexBinary"

    const/16 v2, 0x3e

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3f

    aput-object v0, v3, v2

    const-string v0, "base64Binary"

    const/16 v2, 0x40

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x41

    aput-object v0, v3, v2

    const-string v0, "NOTATION"

    const/16 v2, 0x42

    aput-object v0, v3, v2

    sget-object v0, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x43

    aput-object v0, v3, v2

    const/16 v0, 0x44

    aput-object v1, v3, v0

    const-string v0, "gnu.mapping.Symbol"

    const/16 v1, 0x45

    aput-object v0, v3, v1

    const-string v0, "normalizedString"

    const/16 v1, 0x46

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x47

    aput-object v0, v3, v1

    const-string v0, "token"

    const/16 v1, 0x48

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x49

    aput-object v0, v3, v1

    const-string v0, "language"

    const/16 v1, 0x4a

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x4b

    aput-object v0, v3, v1

    const-string v0, "NMTOKEN"

    const/16 v1, 0x4c

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x4d

    aput-object v0, v3, v1

    const-string v0, "Name"

    const/16 v1, 0x4e

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x4f

    aput-object v0, v3, v1

    const-string v0, "NCName"

    const/16 v1, 0x50

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x51

    aput-object v0, v3, v1

    const-string v0, "ID"

    const/16 v1, 0x52

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x53

    aput-object v0, v3, v1

    const-string v0, "IDREF"

    const/16 v1, 0x54

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x55

    aput-object v0, v3, v1

    const-string v0, "ENTITY"

    const/16 v1, 0x56

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    const/16 v1, 0x57

    aput-object v0, v3, v1

    const-string v0, "anyAtomicType"

    const/16 v1, 0x58

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    const/16 v1, 0x59

    aput-object v0, v3, v1

    const-string v0, "anySimpleType"

    const/16 v1, 0x5a

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    const/16 v1, 0x5b

    aput-object v0, v3, v1

    const-string v0, "untyped"

    const/16 v1, 0x5c

    aput-object v0, v3, v1

    sget-object v0, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    const/16 v1, 0x5d

    aput-object v0, v3, v1

    const-string v0, "anyType"

    const/16 v1, 0x5e

    aput-object v0, v3, v1

    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v1, 0x5f

    aput-object v0, v3, v1

    sput-object v3, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 562
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 563
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    .line 564
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 1

    .line 75
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result p0

    return p0

    .line 78
    :cond_0
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    const v0, 0xffff

    if-gt p0, v0, :cond_2

    int-to-char p0, p0

    return p0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "not a character value"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 68
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    check-cast p0, Lgnu/math/Numeric;

    return-object p0
.end method

.method public static getExternal(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 997
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    const/4 v1, 0x0

    .line 998
    invoke-virtual {v0, p0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1000
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_5

    if-nez p1, :cond_1

    return-object v2

    .line 1007
    :cond_1
    instance-of v0, p1, Lgnu/kawa/xml/XDataType;

    if-eqz v0, :cond_2

    .line 1008
    check-cast p1, Lgnu/kawa/xml/XDataType;

    invoke-virtual {p1, v2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1009
    :cond_2
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_4

    .line 1011
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 1015
    :cond_3
    const-string v1, "gnu.math.RealNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1016
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p0

    return-object p0

    .line 1020
    :cond_4
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {v0, v2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1024
    :catch_0
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unbound external "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lgnu/xquery/lang/XQuery;
    .locals 1

    .line 753
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    return-object v0
.end method

.method public static getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 3

    .line 831
    sget-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x2

    if-ltz v1, :cond_2

    .line 833
    sget-object v2, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    sget-object p0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    .line 836
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 837
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0

    .line 839
    :cond_0
    check-cast p0, Lgnu/bytecode/Type;

    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 985
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 988
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 992
    :cond_1
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 978
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x55

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v0, v2}, Lgnu/xquery/lang/XQuery;->mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V
    .locals 9

    .line 929
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x50

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/16 v4, 0x50

    :goto_0
    if-ge v3, p2, :cond_f

    add-int v5, p1, v3

    .line 933
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v3, 0x1

    .line 935
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    const/16 v7, 0x55

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-ne v4, v7, :cond_2

    if-ge v3, p2, :cond_1

    add-int v4, p1, v3

    .line 937
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :cond_2
    :goto_1
    const/16 v4, 0x55

    goto :goto_6

    .line 942
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_5

    if-eq v4, v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :cond_5
    :goto_2
    const/16 v4, 0x4c

    goto :goto_6

    .line 947
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4f

    if-eq v4, v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    const/16 v4, 0x4f

    goto :goto_6

    .line 952
    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    const/16 v7, 0x44

    if-eqz v6, :cond_a

    if-eq v4, v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_4
    const/16 v4, 0x44

    goto :goto_6

    .line 957
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x4d

    if-eq v4, v7, :cond_b

    if-eq v4, v6, :cond_b

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    :goto_5
    const/16 v4, 0x4d

    :goto_6
    const/16 v6, 0x5f

    if-nez v8, :cond_c

    if-ne p4, v6, :cond_e

    :cond_c
    if-eqz v8, :cond_d

    if-ne p4, v6, :cond_d

    .line 969
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v0, :cond_d

    .line 970
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    :cond_d
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 973
    :cond_e
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static namespaceForFunctions(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static registerEnvironment()V
    .locals 1

    const/4 v0, 0x1

    .line 759
    sput-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    .line 760
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    return-void
.end method


# virtual methods
.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 377
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 378
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 382
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 383
    throw p1
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 324
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 328
    :try_start_0
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 329
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 333
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 334
    throw p1
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 298
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 299
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 300
    iget-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 303
    :try_start_0
    iput-object p5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void

    :catchall_0
    move-exception p2

    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw p2
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 349
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 350
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 353
    :try_start_0
    iput-object p3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 354
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void

    :catchall_0
    move-exception p1

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw p1
.end method

.method public applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 400
    instance-of v0, p2, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 402
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Values;

    .line 403
    invoke-virtual {v0}, Lgnu/lists/TreeList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    const/4 p2, 0x1

    const/4 v3, 0x0

    .line 410
    :goto_0
    invoke-virtual {v0, v3}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    invoke-virtual {p1, v4, v5, v2, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 411
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    if-ne p2, v1, :cond_1

    :goto_1
    return-void

    .line 414
    :cond_1
    invoke-virtual {v0, v3}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    .line 420
    invoke-virtual {p1, p2, v0, v0, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 421
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    return-void
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 259
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 268
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    const/4 v0, 0x0

    .line 269
    invoke-static {p2, p3, v0, p0}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object p2

    .line 270
    invoke-virtual {p2, p1}, Lgnu/mapping/PropertySet;->setSymbol(Ljava/lang/Object;)V

    .line 271
    iget-object p3, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p3, p1, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 452
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    const v0, 0x10001

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object p1

    .line 454
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object p2

    .line 455
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v0

    .line 458
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2, v2}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 459
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 463
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 464
    throw p1
.end method

.method public evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 434
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 435
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v1, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object p1

    .line 436
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 437
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid syntax in eval form:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 521
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object p2

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V

    return-void
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;IILgnu/mapping/CallContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 549
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    .line 550
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 535
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 2

    .line 856
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 857
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-string p1, "xs:integer"

    return-object p1

    .line 859
    :cond_0
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "java.lang.CharSequence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 861
    :cond_2
    :goto_0
    const-string p1, "xs:string"

    return-object p1
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 0

    .line 99
    new-instance p1, Lgnu/expr/Compilation;

    invoke-direct {p1, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object p1
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 1

    .line 94
    new-instance v0, Lgnu/xquery/lang/XQParser;

    invoke-direct {v0, p1, p2, p0}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 276
    const-string v0, "XQuery"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 2

    .line 210
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCode()I

    move-result v0

    const/4 v1, -0x2

    if-gez v0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p1

    .line 215
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    .line 217
    check-cast p1, Lgnu/expr/LambdaExp;

    .line 218
    iget v0, p1, Lgnu/expr/LambdaExp;->min_args:I

    iget p1, p1, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, p1, :cond_3

    .line 219
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result p1

    return p1

    .line 221
    :cond_1
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_2

    .line 223
    check-cast p1, Lgnu/expr/QuoteExp;

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 224
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_3

    .line 226
    check-cast p1, Lgnu/mapping/Procedure;

    .line 227
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->minArgs()I

    move-result v0

    .line 228
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 230
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result p1

    return p1

    .line 233
    :cond_2
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_3

    .line 234
    check-cast p1, Lgnu/expr/ReferenceExp;

    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p1

    return p1

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 2

    .line 775
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .line 899
    new-instance v0, Lgnu/xquery/lang/a;

    invoke-direct {v0}, Lgnu/xquery/lang/a;-><init>()V

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 253
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2

    .line 867
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 870
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    sget-object p1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 872
    :cond_0
    invoke-static {p1}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 874
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_9

    .line 876
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 877
    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    sget-object p1, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 879
    :cond_2
    const-string v1, "gnu.kawa.xml.UntypedAtomic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    sget-object p1, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 881
    :cond_3
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 882
    sget-object p1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 883
    :cond_4
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 884
    sget-object p1, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 885
    :cond_5
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 886
    sget-object p1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 887
    :cond_6
    const-string v1, "java.math.BigDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 888
    sget-object p1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 889
    :cond_7
    const-string v1, "gnu.math.Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 890
    sget-object p1, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 891
    :cond_8
    const-string v1, "gnu.text.Path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 892
    sget-object p1, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 894
    :cond_9
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1

    .line 847
    const-string v0, "xs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "xdt:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 850
    :goto_1
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 851
    :cond_2
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 2

    .line 243
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p1

    if-eq p1, p2, :cond_2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2

    :cond_0
    if-ne p2, v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 108
    iget-object v0, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v1, 0x2

    .line 109
    sput v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 110
    invoke-virtual {p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 111
    iget-object v1, p1, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v1, Lgnu/xquery/lang/XQParser;

    .line 112
    invoke-virtual {v1}, Lgnu/text/Lexer;->isInteractive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object p2

    if-nez p2, :cond_0

    return v4

    .line 117
    :cond_0
    iput-object p2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_2

    :cond_1
    const/high16 v2, 0x10000

    and-int/2addr p2, v2

    if-eqz p2, :cond_2

    .line 121
    new-instance p2, Lgnu/expr/LambdaExp;

    const/4 v2, 0x3

    invoke-direct {p2, v2}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 122
    sget-object v2, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    const-wide/32 v4, 0x40000

    .line 123
    invoke-virtual {v2, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v2, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    sget-object v2, Lgnu/xquery/lang/XQParser;->G:Lgnu/mapping/Symbol;

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p2, v2, v4}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 126
    sget-object v2, Lgnu/xquery/lang/XQParser;->H:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v2, v4}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 127
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 128
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 129
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 130
    iput-object p2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_2

    .line 134
    :cond_2
    new-instance p2, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {p2, v2}, Ljava/util/Vector;-><init>(I)V

    .line 135
    iget-object v2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 136
    instance-of v5, v2, Lgnu/expr/BeginExp;

    if-eqz v5, :cond_3

    .line 138
    check-cast v2, Lgnu/expr/BeginExp;

    .line 139
    invoke-virtual {v2}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v5

    .line 140
    invoke-virtual {v2}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    .line 142
    aget-object v7, v2, v6

    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 144
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-eq v2, v5, :cond_4

    .line 146
    invoke-virtual {p2, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    :cond_4
    :goto_1
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_8

    .line 153
    iget v2, v1, Lgnu/xquery/lang/XQParser;->w:I

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lgnu/text/Lexer;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 155
    const-string p1, "empty module"

    const-string p2, "XPST0003"

    const/16 v0, 0x65

    invoke-virtual {v1, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return v4

    .line 162
    :cond_5
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 164
    sget-object p2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object p2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_7

    .line 166
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/expr/Expression;

    iput-object p2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_2

    .line 169
    :cond_7
    new-array v2, v2, [Lgnu/expr/Expression;

    .line 170
    invoke-virtual {p2, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 171
    new-instance p2, Lgnu/expr/BeginExp;

    invoke-direct {p2, v2}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    iput-object p2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 177
    :goto_2
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 188
    new-instance p2, Lgnu/xquery/lang/XQResolveNames;

    invoke-direct {p2, p1}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 189
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v2, p2, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 190
    iput-object v1, p2, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 191
    invoke-virtual {p2, v0}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    const/4 p2, 0x4

    .line 192
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->setState(I)V

    return v3

    .line 160
    :cond_8
    invoke-virtual {p2, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0

    return-void
.end method

.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "SourceFile"


# static fields
.field public static a:Lgnu/text/EnglishIntegerFormat;

.field public static b:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 34
    const-string v19, "eighteen"

    const-string v20, "nineteen"

    const/4 v1, 0x0

    const-string v2, "one"

    const-string v3, "two"

    const-string v4, "three"

    const-string v5, "four"

    const-string v6, "five"

    const-string v7, "six"

    const-string v8, "seven"

    const-string v9, "eight"

    const-string v10, "nine"

    const-string v11, "ten"

    const-string v12, "eleven"

    const-string v13, "twelve"

    const-string v14, "thirteen"

    const-string v15, "fourteen"

    const-string v16, "fifteen"

    const-string v17, "sixteen"

    const-string v18, "seventeen"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    .line 42
    const-string v19, "eighteenth"

    const-string v20, "nineteenth"

    const-string v2, "first"

    const-string v3, "second"

    const-string v4, "third"

    const-string v5, "fourth"

    const-string v6, "fifth"

    const-string v7, "sixth"

    const-string v8, "seventh"

    const-string v9, "eighth"

    const-string v10, "ninth"

    const-string v11, "tenth"

    const-string v12, "eleventh"

    const-string v13, "twelveth"

    const-string v14, "thirteenth"

    const-string v15, "fourteenth"

    const-string v16, "fifteenth"

    const-string v17, "sixteenth"

    const-string v18, "seventeenth"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    .line 50
    const-string v9, "eighty"

    const-string v10, "ninety"

    const/4 v2, 0x0

    const-string v3, "twenty"

    const-string v4, "thirty"

    const-string v5, "forty"

    const-string v6, "fifty"

    const-string v7, "sixty"

    const-string v8, "seventy"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    .line 56
    const-string v9, "eightieth"

    const-string v10, "ninetieth"

    const-string v3, "twentieth"

    const-string v4, "thirtieth"

    const-string v5, "fortieth"

    const-string v6, "fiftieth"

    const-string v7, "sixtieth"

    const-string v8, "seventieth"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    .line 62
    const-string v21, " novemdecillion"

    const-string v22, " vigintillion"

    const-string v2, " thousand"

    const-string v3, " million"

    const-string v4, " billion"

    const-string v5, " trillion"

    const-string v6, " quadrillion"

    const-string v7, " quintillion"

    const-string v8, " sextillion"

    const-string v9, " septillion"

    const-string v10, " octillion"

    const-string v11, " nonillion"

    const-string v12, " decillion"

    const-string v13, " undecillion"

    const-string v14, " duodecillion"

    const-string v15, " tredecillion"

    const-string v16, " quattuordecillion"

    const-string v17, " quindecillion"

    const-string v18, " sexdecillion"

    const-string v19, " septendecillion"

    const-string v20, " octodecillion"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    iput-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;JIZ)V
    .locals 9

    const/4 v0, 0x0

    .line 108
    const-string v1, "th"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-ltz v6, :cond_1

    .line 110
    div-long v6, p1, v4

    add-int/lit8 v8, p3, 0x1

    invoke-static {p0, v6, v7, v8, v0}, Lgnu/text/EnglishIntegerFormat;->a(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    rem-long/2addr p1, v4

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 113
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    cmp-long v4, p1, v2

    if-lez v4, :cond_b

    long-to-int p2, p1

    const/4 p1, 0x1

    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    const/16 v2, 0x64

    if-lt p2, v2, :cond_5

    .line 79
    div-int/lit8 v2, p2, 0x64

    .line 80
    rem-int/lit8 p2, p2, 0x64

    const/16 v3, 0x20

    if-le v2, p1, :cond_3

    .line 83
    sget-object v4, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :cond_3
    const-string v2, "hundred"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez p2, :cond_4

    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    const/16 v1, 0x14

    if-lt p2, v1, :cond_7

    .line 94
    div-int/lit8 v1, p2, 0xa

    .line 95
    rem-int/lit8 p2, p2, 0xa

    if-eqz p4, :cond_6

    if-nez p2, :cond_6

    .line 96
    sget-object v2, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    goto :goto_3

    :cond_6
    sget-object v2, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    :goto_3
    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez p2, :cond_7

    const/16 v1, 0x2d

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    if-lez p2, :cond_9

    if-eqz p4, :cond_8

    .line 102
    sget-object p4, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    goto :goto_4

    :cond_8
    sget-object p4, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    :goto_4
    aget-object p2, p4, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :cond_9
    sget-object p2, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length p4, p2

    if-lt p3, p4, :cond_a

    .line 122
    const-string p2, " times ten to the "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int/lit8 p3, p3, 0x3

    int-to-long p2, p3

    .line 123
    invoke-static {p0, p2, p3, v0, p1}, Lgnu/text/EnglishIntegerFormat;->a(Ljava/lang/StringBuffer;JIZ)V

    .line 124
    const-string p1, " power"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_a
    if-lez p3, :cond_b

    .line 127
    aget-object p1, p2, p3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .locals 1

    if-eqz p0, :cond_1

    .line 22
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->b:Lgnu/text/EnglishIntegerFormat;

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Lgnu/text/EnglishIntegerFormat;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/EnglishIntegerFormat;->b:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_0
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->b:Lgnu/text/EnglishIntegerFormat;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->a:Lgnu/text/EnglishIntegerFormat;

    if-nez p0, :cond_2

    .line 29
    new-instance p0, Lgnu/text/EnglishIntegerFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object p0, Lgnu/text/EnglishIntegerFormat;->a:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_2
    sget-object p0, Lgnu/text/EnglishIntegerFormat;->a:Lgnu/text/EnglishIntegerFormat;

    return-object p0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_0

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_1

    .line 160
    iget-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz p1, :cond_0

    const-string p1, "zeroth"

    goto :goto_0

    :cond_0
    const-string p1, "zero"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3

    :cond_1
    if-gez p4, :cond_2

    .line 165
    const-string p4, "minus "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    neg-long p1, p1

    :cond_2
    const/4 p4, 0x0

    .line 168
    iget-boolean v0, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    invoke-static {p3, p1, p2, p4, v0}, Lgnu/text/EnglishIntegerFormat;->a(Ljava/lang/StringBuffer;JIZ)V

    return-object p3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 188
    new-instance p1, Ljava/lang/Error;

    const-string p2, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 2

    int-to-long v0, p1

    .line 133
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-interface {p3, v0, p1, p2}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2

    .line 149
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    return-void
.end method

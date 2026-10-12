.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SourceFile"


# static fields
.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/text/SimpleDateFormat;

.field public static final o:Ljava/text/SimpleDateFormat;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Date;

.field public final d:Z

.field public final e:Ljava/util/Date;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:[Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:D

.field public final l:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->m:Ljava/util/regex/Pattern;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->n:Ljava/text/SimpleDateFormat;

    .line 41
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->o:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 2

    .line 66
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 67
    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->b:Ljava/lang/String;

    .line 69
    :try_start_0
    invoke-static {p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->c:Ljava/util/Date;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->e:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->d:Z

    if-eqz p3, :cond_2

    .line 75
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p2, 0x1

    :cond_2
    iput-boolean p2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->f:Z

    .line 76
    iput-object p4, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->g:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->h:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->i:[Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->j:Ljava/lang/String;

    .line 80
    iput-wide p8, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->k:D

    .line 81
    iput-wide p10, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->l:D

    return-void

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 162
    sget-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 167
    sget-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->n:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v2, Lcom/google/zxing/client/result/CalendarParsedResult;->o:Ljava/text/SimpleDateFormat;

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_1

    .line 172
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 173
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 174
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 176
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v6, p0

    add-long/2addr v4, v6

    .line 179
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v4, v0

    .line 181
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v4, v5}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 183
    :cond_1
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 163
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public getAttendees()[Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 190
    iget-object v3, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->c:Ljava/util/Date;

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 193
    :cond_0
    iget-boolean v4, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->d:Z

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    .line 196
    :goto_0
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 145
    :goto_1
    invoke-static {v3, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 190
    iget-object v3, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->e:Ljava/util/Date;

    if-nez v3, :cond_2

    goto :goto_3

    .line 193
    :cond_2
    iget-boolean v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->f:Z

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 196
    :goto_2
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 146
    :goto_3
    invoke-static {v2, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 147
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 148
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 149
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->i:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 150
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->k:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->l:D

    return-wide v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isEndAllDay()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->f:Z

    return v0
.end method

.method public isStartAllDay()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->d:Z

    return v0
.end method

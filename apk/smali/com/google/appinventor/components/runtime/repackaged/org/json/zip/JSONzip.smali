.class public abstract Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/None;
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;


# static fields
.field public static final bcd:[B

.field public static final end:I = 0x100

.field public static final endOfNumber:I

.field public static final int14:J = 0x4000L

.field public static final int4:J = 0x10L

.field public static final int7:J = 0x80L

.field public static final maxSubstringLength:I = 0xa

.field public static final minSubstringLength:I = 0x3

.field public static final probe:Z = false

.field public static final substringLimit:I = 0x28

.field public static final twos:[I

.field public static final zipArrayString:I = 0x6

.field public static final zipArrayValue:I = 0x7

.field public static final zipEmptyArray:I = 0x1

.field public static final zipEmptyObject:I = 0x0

.field public static final zipFalse:I = 0x3

.field public static final zipNull:I = 0x4

.field public static final zipObject:I = 0x5

.field public static final zipTrue:I = 0x2


# instance fields
.field protected final namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

.field protected final namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

.field protected final stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

.field protected final substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

.field protected final substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

.field protected final values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 52
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->twos:[I

    const/16 v0, 0xe

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->bcd:[B

    .line 87
    array-length v0, v0

    sput v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->endOfNumber:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2et
        0x2dt
        0x2bt
        0x45t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    const/16 v1, 0x101

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    .line 186
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    .line 187
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    .line 188
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    .line 189
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;-><init>(I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    .line 190
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;-><init>(I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    const/16 v1, 0x20

    const/16 v3, 0x7d

    .line 197
    invoke-virtual {v0, v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(II)V

    const/16 v4, 0x61

    const/16 v5, 0x7a

    .line 198
    invoke-virtual {v0, v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(II)V

    const/16 v6, 0x100

    .line 199
    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    .line 200
    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    .line 201
    invoke-virtual {v2, v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(II)V

    .line 202
    invoke-virtual {v2, v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(II)V

    .line 203
    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    .line 204
    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    return-void
.end method

.method public static log()V
    .locals 1

    .line 219
    const-string v0, "\n"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(I)V
    .locals 1

    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(II)V
    .locals 1

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 247
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static logchar(II)V
    .locals 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7d

    if-gt p0, v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "\':"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return-void

    .line 260
    :cond_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(II)V

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->generate()V

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->generate()V

    return-void
.end method

.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 2

    .line 273
    check-cast p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

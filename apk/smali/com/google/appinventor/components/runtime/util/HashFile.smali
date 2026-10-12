.class public Lcom/google/appinventor/components/runtime/util/HashFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fileName:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/util/HashFile;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setTimestampInDb(Ljava/util/Date;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-void
.end method

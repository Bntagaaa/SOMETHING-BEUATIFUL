.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SourceFile"


# instance fields
.field public final b:[Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:[Ljava/lang/String;

.field public final k:[Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 54
    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->b:[Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->c:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->d:[Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->e:[Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->f:[Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->g:[Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->h:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->i:Ljava/lang/String;

    .line 62
    iput-object p9, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->j:[Ljava/lang/String;

    .line 63
    iput-object p10, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->k:[Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->l:Ljava/lang/String;

    .line 65
    iput-object p12, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->m:Ljava/lang/String;

    .line 66
    iput-object p13, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->n:Ljava/lang/String;

    .line 67
    iput-object p14, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddressTypes()[Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public getAddresses()[Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 151
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 152
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 153
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 154
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->j:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 155
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 156
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 157
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 158
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 159
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 160
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailTypes()[Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getInstantMessenger()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getOrg()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneTypes()[Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->o:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GingerbreadUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .locals 1

    .line 59
    instance-of v0, p0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Ljava/net/CookieManager;

    .line 61
    invoke-virtual {p0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p0}, Ljava/net/CookieStore;->removeAll()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;
    .locals 5

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    if-eqz p1, :cond_0

    .line 109
    const-string v1, "UTF-8"

    :goto_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "UTF-16"

    goto :goto_0

    .line 110
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/16 p1, 0x80

    .line 112
    :goto_2
    array-length v2, v0

    add-int/2addr p1, v2

    int-to-char p1, p1

    .line 113
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    int-to-byte p1, p1

    .line 114
    aput-byte p1, v2, v1

    .line 115
    array-length p1, v0

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length p1, v0

    add-int/2addr p1, v3

    array-length v0, p0

    invoke-static {p0, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance p0, Landroid/nfc/NdefRecord;

    sget-object p1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v1, [B

    invoke-direct {p0, v3, p1, v0, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0
.end method

.method public static disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    const-string v2, "Unable to write NDEF tag"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "disableForegroundNdefPush"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 103
    :goto_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 101
    :goto_1
    sget-object p1, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 99
    :catch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This device does not support NFC"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    .line 79
    const-string v1, "Unable to write NDEF tag"

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object p2

    .line 80
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v4, v2, [Landroid/nfc/NdefRecord;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-direct {v3, v4}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v4, "enableForegroundNdefPush"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Landroid/app/Activity;

    aput-object v7, v6, v5

    const-class v7, Landroid/nfc/NdefMessage;

    aput-object v7, v6, v2

    invoke-virtual {p2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object v3, v0, v2

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 90
    :goto_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 88
    :goto_1
    sget-object p1, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 86
    :catch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This device does not support NFC"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .locals 1

    .line 48
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method

.method public static newNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 0

    .line 74
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->ReadMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const-string v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    array-length v2, p0

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    const/4 v3, 0x0

    .line 139
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 140
    aget-object v4, p0, v3

    check-cast v4, Landroid/nfc/NdefMessage;

    aput-object v4, v2, v3

    add-int/2addr v3, v1

    goto :goto_0

    .line 146
    :cond_0
    new-array p0, v0, [B

    .line 147
    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, p0, p0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 148
    new-instance p0, Landroid/nfc/NdefMessage;

    new-array v3, v1, [Landroid/nfc/NdefRecord;

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 149
    new-array v2, v1, [Landroid/nfc/NdefMessage;

    aput-object p0, v2, v0

    .line 151
    :cond_1
    aget-object p0, v2, v0

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object p0

    .line 153
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/NearField;->TagRead(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_2
    const-string v2, "android.nfc.extra.TAG"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/nfc/Tag;

    .line 158
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->WriteType()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 159
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TextToWrite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    .line 160
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    aput-object v2, v1, v0

    invoke-direct {v3, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 162
    :goto_1
    invoke-static {v3, p0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 163
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TagWritten()V

    :cond_4
    return-void

    .line 167
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown intent "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "nearfield"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 4

    .line 175
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    .line 177
    :try_start_0
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 180
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result p1

    if-ge p1, v0, :cond_1

    return v1

    .line 186
    :cond_1
    invoke-virtual {v2, p0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    return v3

    .line 189
    :cond_2
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 192
    :try_start_1
    invoke-virtual {p1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 193
    invoke-virtual {p1, p0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    :cond_3
    return v1
.end method

.class public Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactIdIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 119
    const-string v0, "contact_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getContactProjection()[Ljava/lang/String;
    .locals 4

    .line 59
    const-string v0, "photo_thumb_uri"

    const-string v1, "photo_uri"

    const-string v2, "_id"

    const-string v3, "display_name"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .line 38
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataContentUri()Landroid/net/Uri;
    .locals 1

    .line 52
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "vnd.android.cursor.item/phone_v2"

    const-string v2, "vnd.android.cursor.item/email_v2"

    filled-new-array {p0, p1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, "contact_id=? AND (mimetype=? OR mimetype=?)"

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getDataMimeType()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "mimetype"

    return-object v0
.end method

.method public static getDataProjection()[Ljava/lang/String;
    .locals 3

    .line 85
    const-string v0, "data1"

    const-string v1, "data2"

    const-string v2, "mimetype"

    filled-new-array {v2, v0, v1, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .line 172
    const-string v0, "display_name"

    return-object v0
.end method

.method public static getEmailAdapterProjection()[Ljava/lang/String;
    .locals 4

    .line 99
    const-string v0, "data1"

    const-string v1, "mimetype"

    const-string v2, "_id"

    const-string v3, "display_name"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "data1"

    return-object v0
.end method

.method public static getEmailIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 148
    const-string v0, "data1"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getEmailType()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "vnd.android.cursor.item/email_v2"

    return-object v0
.end method

.method public static getIdIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 112
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMimeIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 152
    const-string v0, "mimetype"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getNameIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 126
    const-string v0, "display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getNameProjection()[Ljava/lang/String;
    .locals 4

    .line 72
    const-string v0, "photo_thumb_uri"

    const-string v1, "data1"

    const-string v2, "contact_id"

    const-string v3, "display_name"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneContentUri()Landroid/net/Uri;
    .locals 1

    .line 45
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 144
    const-string v0, "data1"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "vnd.android.cursor.item/phone_v2"

    return-object v0
.end method

.method public static getPhotoIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 140
    const-string v0, "photo_uri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getThumbnailIndex(Landroid/database/Cursor;)I
    .locals 1

    .line 133
    const-string v0, "photo_thumb_uri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTimesContacted()Ljava/lang/String;
    .locals 1

    .line 213
    const-string v0, "times_contacted"

    return-object v0
.end method

.method public static openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 206
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

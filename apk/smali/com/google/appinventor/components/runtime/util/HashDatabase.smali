.class public final Lcom/google/appinventor/components/runtime/util/HashDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DATABASE_NAME:Ljava/lang/String; = "hashTable.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final KEY_HASH:Ljava/lang/String; = "hashFile"

.field private static final KEY_NAME:Ljava/lang/String; = "fileName"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS HashDatabase"

.field private static final TABLE_NAME:Ljava/lang/String; = "HashDatabase"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "hashFile"

    const-string v1, "timeStamp"

    const-string v2, "fileName"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/HashDatabase;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 67
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    const-string v2, "hashTable.db"

    invoke-direct {p0, v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public deleteOne(Lcom/google/appinventor/components/runtime/util/HashFile;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "HashDatabase"

    const-string v2, "fileName = ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;
    .locals 9

    .line 86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    sget-object v2, Lcom/google/appinventor/components/runtime/util/HashDatabase;->COLUMNS:[Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "HashDatabase"

    const-string v3, " fileName = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Database"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    new-instance v1, Lcom/google/appinventor/components/runtime/util/HashFile;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/HashFile;-><init>()V

    const/4 v3, 0x0

    .line 105
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/HashFile;->setFileName(Ljava/lang/String;)V

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/HashFile;->setHash(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/HashFile;->setTimestamp(Ljava/lang/String;)V

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v1
.end method

.method public insertHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)V
    .locals 4

    .line 114
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "hashFile"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "timeStamp"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getTimestamp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string p1, "HashDatabase"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 70
    const-string v0, "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 75
    const-string p2, "DROP TABLE IF EXISTS HashDatabase"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)I
    .locals 4

    .line 124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "hashFile"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "timeStamp"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 130
    const-string v2, "HashDatabase"

    const-string v3, "fileName = ?"

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return p1
.end method

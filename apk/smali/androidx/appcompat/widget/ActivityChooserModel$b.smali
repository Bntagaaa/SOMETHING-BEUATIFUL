.class final Landroidx/appcompat/widget/ActivityChooserModel$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActivityChooserModel;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$b;->a:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1038
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel$b;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 16

    .line 1046
    const-string v0, "historical-record"

    const-string v1, "historical-records"

    const-string v2, "Error writing historical record file: "

    const-string v3, "ActivityChooserModel"

    move-object/from16 v4, p0

    iget-object v5, v4, Landroidx/appcompat/widget/ActivityChooserModel$b;->a:Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 v6, 0x0

    aget-object v7, p1, v6

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x1

    .line 1047
    aget-object v9, p1, v8

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    .line 1052
    :try_start_0
    iget-object v11, v5, Landroidx/appcompat/widget/ActivityChooserModel;->d:Landroid/content/Context;

    invoke-virtual {v11, v9, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    .line 1058
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1061
    :try_start_1
    invoke-interface {v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1062
    const-string v12, "UTF-8"

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1063
    invoke-interface {v11, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_0

    .line 1067
    :try_start_2
    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 1068
    invoke-interface {v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    const-string v15, "activity"

    iget-object v6, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1070
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 1069
    invoke-interface {v11, v10, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1071
    const-string v6, "time"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 p1, v9

    const/4 v15, 0x1

    :try_start_3
    iget-wide v8, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v10, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    const-string v6, "weight"

    iget v8, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v10, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    invoke-interface {v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v13, v15

    move-object/from16 v9, p1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 p1, v9

    :goto_1
    const/4 v15, 0x1

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object/from16 p1, v9

    const/4 v15, 0x1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 p1, v9

    const/4 v15, 0x1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 p1, v9

    const/4 v15, 0x1

    goto :goto_5

    :cond_0
    move-object/from16 p1, v9

    const/4 v15, 0x1

    .line 1079
    :try_start_4
    invoke-interface {v11, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1092
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActivityChooserModel;->i:Z

    if-eqz p1, :cond_1

    .line 1095
    :goto_2
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    move-object/from16 p1, v9

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 p1, v9

    goto :goto_4

    :catch_8
    move-exception v0

    move-object/from16 p1, v9

    goto :goto_5

    .line 1090
    :goto_3
    :try_start_6
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->n:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroidx/appcompat/widget/ActivityChooserModel;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v15, 0x1

    .line 1092
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActivityChooserModel;->i:Z

    if-eqz p1, :cond_1

    goto :goto_2

    .line 1088
    :goto_4
    :try_start_7
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->n:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroidx/appcompat/widget/ActivityChooserModel;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v15, 0x1

    .line 1092
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActivityChooserModel;->i:Z

    if-eqz p1, :cond_1

    goto :goto_2

    .line 1086
    :goto_5
    :try_start_8
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->n:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroidx/appcompat/widget/ActivityChooserModel;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v15, 0x1

    .line 1092
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActivityChooserModel;->i:Z

    if-eqz p1, :cond_1

    goto :goto_2

    :catch_9
    :cond_1
    :goto_6
    return-object v10

    :goto_7
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActivityChooserModel;->i:Z

    if-eqz p1, :cond_2

    .line 1095
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 1100
    :catch_a
    :cond_2
    throw v0

    :catch_b
    move-exception v0

    .line 1054
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->n:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.class public Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentStorageRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;
    }
.end annotation


# instance fields
.field component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field dim:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

.field length:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 297
    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    .line 298
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->dim:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    return-void
.end method

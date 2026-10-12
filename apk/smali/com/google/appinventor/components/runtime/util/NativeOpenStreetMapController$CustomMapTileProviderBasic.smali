.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;
.super Lorg/osmdroid/tileprovider/MapTileProviderBasic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomMapTileProviderBasic"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 2

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    const/4 p1, 0x0

    .line 297
    :goto_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 298
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    if-eqz p3, :cond_0

    .line 299
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    invoke-direct {v0, v1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-interface {p3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

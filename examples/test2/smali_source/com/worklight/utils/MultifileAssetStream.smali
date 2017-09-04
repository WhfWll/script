.class public Lcom/worklight/utils/MultifileAssetStream;
.super Ljava/io/SequenceInputStream;
.source "MultifileAssetStream.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/utils/MultifileAssetStream;

    const v1, 0x4bd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .registers 4
    .param p1, "base_asset_name"    # Ljava/lang/String;
    .param p2, "asset_manager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/worklight/utils/MultifileAssetStream;->getAssetFileStreams(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    .line 28
    return-void
.end method

.method private static native getAssetFileName(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native getAssetFileStreams(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getFileInputStream(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/io/InputStream;
.end method

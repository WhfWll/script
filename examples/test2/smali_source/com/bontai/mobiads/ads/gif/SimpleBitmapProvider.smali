.class final Lcom/bontai/mobiads/ads/gif/SimpleBitmapProvider;
.super Ljava/lang/Object;
.source "SimpleBitmapProvider.java"

# interfaces
.implements Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/SimpleBitmapProvider;

    const v1, 0xf9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public native obtainByteArray(I)[B
.end method

.method public native obtainIntArray(I)[I
.end method

.method public native release(Landroid/graphics/Bitmap;)V
.end method

.method public native release([B)V
.end method

.method public native release([I)V
.end method

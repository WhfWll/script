.class public Lcom/bontai/mobiads/ads/BitmapHelp;
.super Ljava/lang/Object;
.source "BitmapHelp.java"


# static fields
.field private static bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/BitmapHelp;

    const v1, 0xe3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static native getBitmapUtils(Landroid/content/Context;)Lcom/lidroid/xutils/BitmapUtils;
.end method

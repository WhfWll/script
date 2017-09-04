.class public Lcom/bontai/mobiads/ads/AppHelp;
.super Ljava/lang/Object;
.source "AppHelp.java"


# static fields
.field public static GT_CDN_AD_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/AppHelp;

    const v1, 0xe1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-string v0, ""

    sput-object v0, Lcom/bontai/mobiads/ads/AppHelp;->GT_CDN_AD_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deleteFile(Ljava/lang/String;)Z
.end method

.method public static native getAppKey(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getBontaiMobiAdsUrl(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getDb(Landroid/content/Context;)Lcom/lidroid/xutils/DbUtils;
.end method

.method public static native getSplashImgCacheDir(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native installAPK(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end method

.method public static native installDialogInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end method

.method public static native isFileExit(Ljava/lang/String;)Z
.end method

.method public static native isNetworkAvailable(Landroid/content/Context;)Z
.end method

.method public static native isNumeric(Ljava/lang/String;)Z
.end method

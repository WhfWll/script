.class public Lcn/domob/android/ads/A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/A$1;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/A;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/A;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p0}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 25
    const-string v3, "h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 27
    sget-object v1, Lcn/domob/android/ads/A;->a:Lcn/domob/android/i/f;

    const-string v2, "\u6a2a\u5c4f\uff0c\u5ffd\u7565mode\uff0c\u8bf7\u6c42\u5168\u5c4f"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 47
    :cond_22
    :goto_22
    return-object v0

    .line 28
    :cond_23
    const-string v3, "v"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 30
    sget-object v1, Lcn/domob/android/ads/A$1;->a:[I

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_6a

    goto :goto_22

    .line 33
    :pswitch_37
    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 34
    const-string v1, "%dx%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 38
    :pswitch_50
    mul-int/lit8 v0, v2, 0x5

    div-int/lit8 v0, v0, 0x4

    .line 39
    const-string v1, "%dx%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 30
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_50
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;Lcn/domob/android/ads/y;I)V
    .registers 5

    .prologue
    .line 55
    iget-object v0, p1, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    sget-object v1, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeFullScreen:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    if-eq v0, v1, :cond_16

    const-string v0, "h"

    invoke-static {p0}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 57
    invoke-virtual {p1, p2}, Lcn/domob/android/ads/y;->a(I)V

    .line 62
    :goto_15
    return-void

    .line 60
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/y;->a(I)V

    goto :goto_15
.end method

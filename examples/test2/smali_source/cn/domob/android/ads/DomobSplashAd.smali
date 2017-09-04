.class public Lcn/domob/android/ads/DomobSplashAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/domob/android/ads/y;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobSplashAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "mode"    # Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 33
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    .line 42
    iput-object p1, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Landroid/content/Context;

    .line 43
    new-instance v0, Lcn/domob/android/ads/y;

    invoke-static {p1, p4}, Lcn/domob/android/ads/A;->a(Landroid/content/Context;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcn/domob/android/ads/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    .line 44
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    iput-object p4, v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .line 45
    return-void
.end method

.method private domobAdDismiss()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    iget-object v0, v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_dismiss"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private domobAdImpression()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    iget-object v0, v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_imp"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private domobAdLoad()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    iget-object v0, v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_load"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method public closeSplash()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->close()V

    .line 106
    :cond_9
    return-void
.end method

.method public isSplashAdReady()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    .line 64
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    return v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setKeyword(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setSplashAdListener(Lcn/domob/android/ads/DomobSplashAdListener;)V
    .registers 3
    .param p1, "listener"    # Lcn/domob/android/ads/DomobSplashAdListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/DomobSplashAdListener;)V

    .line 56
    return-void
.end method

.method public setSplashTopMargin(I)V
    .registers 4
    .param p1, "topMargin"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-static {v0, v1, p1}, Lcn/domob/android/ads/A;->a(Landroid/content/Context;Lcn/domob/android/ads/y;I)V

    .line 73
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 3
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setUserGender(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 3
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setUserPostcode(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public splash(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutView"    # Landroid/view/View;
    .param p3, "splashBachgroudId"    # I

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    if-eqz v0, :cond_18

    .line 82
    sget-object v0, Lcn/domob/android/ads/DomobSplashAd;->a:Lcn/domob/android/i/f;

    const-string v1, "Show Splash View."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1, p2, p3}, Lcn/domob/android/ads/y;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 84
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 97
    :goto_17
    return-void

    .line 86
    :cond_18
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    if-eqz v0, :cond_26

    .line 87
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash AD is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 89
    :cond_26
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobSplashAd;->isSplashAdReady()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 90
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1, p2, p3}, Lcn/domob/android/ads/y;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 91
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    goto :goto_17

    .line 93
    :cond_34
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash AD is not ready yet. Please call \"isSplashReady()\" first to check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.class public Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;
.super Lcn/domob/android/ads/DomobSceneInfo;
.source "SourceFile"


# static fields
.field public static final CLOSE_BUTTON_POSITION_OUTSIDE_AD_RIGHT:I = 0x3

.field public static final CLOSE_BUTTON_POSITION_OUTSIDE_AD_UP:I = 0x1


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/domob/android/ads/DomobSceneInfo;-><init>()V

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;->b:I

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;->b:I

    return v0
.end method

.method public setCloseBtnPosition(I)V
    .registers 2
    .param p1, "closeBtnPosition"    # I

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;->b:I

    .line 24
    return-void
.end method

.class public abstract Lcom/bontai/mobiads/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# instance fields
.field protected keyWord:Ljava/lang/String;

.field protected userBirthday:Ljava/lang/String;

.field protected userGender:Ljava/lang/String;

.field protected userPostcode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bontai/mobiads/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public setKeyword(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bontai/mobiads/ads/AdView;->keyWord:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bontai/mobiads/ads/AdView;->userBirthday:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bontai/mobiads/ads/AdView;->userGender:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bontai/mobiads/ads/AdView;->userPostcode:Ljava/lang/String;

    .line 42
    return-void
.end method

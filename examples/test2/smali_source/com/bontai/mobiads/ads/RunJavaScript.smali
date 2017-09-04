.class public Lcom/bontai/mobiads/ads/RunJavaScript;
.super Ljava/lang/Object;
.source "RunJavaScript.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/RunJavaScript;

    const v1, 0xea

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bontai/mobiads/ads/RunJavaScript;->context:Landroid/content/Context;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/RunJavaScript;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/bontai/mobiads/ads/RunJavaScript;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public native onClickAdsImage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native showTourMainpage()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

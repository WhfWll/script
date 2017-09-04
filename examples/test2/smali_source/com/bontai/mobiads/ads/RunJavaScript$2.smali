.class Lcom/bontai/mobiads/ads/RunJavaScript$2;
.super Ljava/lang/Object;
.source "RunJavaScript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/RunJavaScript;->onClickAdsImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/RunJavaScript;

.field private final synthetic val$targetUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/RunJavaScript$2;

    const v1, 0xe9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/RunJavaScript;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/RunJavaScript$2;->this$0:Lcom/bontai/mobiads/ads/RunJavaScript;

    iput-object p2, p0, Lcom/bontai/mobiads/ads/RunJavaScript$2;->val$targetUrl:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

.class Lcom/bontai/mobiads/ads/RunJavaScript$1;
.super Ljava/lang/Object;
.source "RunJavaScript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/RunJavaScript;->showTourMainpage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/RunJavaScript;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/RunJavaScript$1;

    const v1, 0xe8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/RunJavaScript;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/RunJavaScript$1;->this$0:Lcom/bontai/mobiads/ads/RunJavaScript;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

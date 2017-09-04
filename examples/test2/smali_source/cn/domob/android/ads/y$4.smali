.class Lcn/domob/android/ads/y$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/y;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/y;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/y;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcn/domob/android/ads/y$4;->a:Lcn/domob/android/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 277
    invoke-static {}, Lcn/domob/android/ads/y;->q()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "\u5c55\u73b0\u65f6\u95f4\u5230\u8fbe\u81ea\u52a8\u5173\u95ed\u65f6\u95f4\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcn/domob/android/ads/y$4;->a:Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->n()V

    .line 279
    return-void
.end method

.class Lcn/domob/android/ads/y$3;
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
    .line 262
    iput-object p1, p0, Lcn/domob/android/ads/y$3;->a:Lcn/domob/android/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 265
    invoke-static {}, Lcn/domob/android/ads/y;->q()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "\u5c55\u73b0\u65f6\u95f4\u5230\u8fbe\u6700\u5c0f\u5c55\u73b0\u65f6\u95f4\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/y$3;->a:Lcn/domob/android/ads/y;

    iget-object v0, v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/y$3;->a:Lcn/domob/android/ads/y;

    iget-object v1, v1, Lcn/domob/android/ads/y;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "m"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/y$3;->a:Lcn/domob/android/ads/y;

    iget-object v4, v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v4}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 268
    return-void
.end method

.class Lcn/domob/android/ads/a$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a$c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a$c;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcn/domob/android/ads/a$c$1;->a:Lcn/domob/android/ads/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/a$c$1;->a:Lcn/domob/android/ads/a$c;

    iget-object v0, v0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->stopLoading()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 157
    :goto_7
    return-void

    .line 154
    :catch_8
    move-exception v0

    .line 155
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.class Lcn/domob/android/ads/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/u;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/u;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/u;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcn/domob/android/ads/u$2;->a:Lcn/domob/android/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/u$2;->a:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->n()V

    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/u$2;->a:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/g;->a(J)V

    .line 99
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/domob/android/ads/u$2;->a:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->o()V

    .line 104
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/u$2;->a:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->p()V

    .line 109
    return-void
.end method

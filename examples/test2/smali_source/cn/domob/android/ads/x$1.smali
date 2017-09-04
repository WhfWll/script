.class Lcn/domob/android/ads/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->a(Ljava/lang/String;Lcn/domob/android/ads/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/domob/android/ads/x;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x;Lcn/domob/android/ads/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 79
    iput-object p1, p0, Lcn/domob/android/ads/x$1;->d:Lcn/domob/android/ads/x;

    iput-object p2, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/c;

    iput-object p3, p0, Lcn/domob/android/ads/x$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/domob/android/ads/x$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_31

    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/c;

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->d:Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 95
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/c;

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->d:Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 102
    :goto_24
    return-void

    .line 97
    :cond_25
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/c;

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->d:Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 100
    :cond_31
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->d:Lcn/domob/android/ads/x;

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->d:Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->e:Lcn/domob/android/ads/j;

    const-string v2, "sp_load_img_fail"

    iget-object v3, p0, Lcn/domob/android/ads/x$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public b()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 116
    return-void
.end method

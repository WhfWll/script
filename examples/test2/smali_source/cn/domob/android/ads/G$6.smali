.class Lcn/domob/android/ads/G$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/G;->a(Lcn/domob/android/a/a/b;Lcn/domob/android/ads/G$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/G$a;

.field final synthetic b:Lcn/domob/android/ads/G;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V
    .registers 3

    .prologue
    .line 378
    iput-object p1, p0, Lcn/domob/android/ads/G$6;->b:Lcn/domob/android/ads/G;

    iput-object p2, p0, Lcn/domob/android/ads/G$6;->a:Lcn/domob/android/ads/G$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 382
    iget-object v0, p0, Lcn/domob/android/ads/G$6;->b:Lcn/domob/android/ads/G;

    invoke-static {v0, p1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G;Z)Z

    .line 383
    if-eqz p1, :cond_f

    .line 384
    iget-object v0, p0, Lcn/domob/android/ads/G$6;->b:Lcn/domob/android/ads/G;

    iget-object v1, p0, Lcn/domob/android/ads/G$6;->a:Lcn/domob/android/ads/G$a;

    invoke-static {v0, v1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V

    .line 388
    :goto_e
    return-void

    .line 386
    :cond_f
    iget-object v0, p0, Lcn/domob/android/ads/G$6;->b:Lcn/domob/android/ads/G;

    invoke-static {v0}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G;)V

    goto :goto_e
.end method

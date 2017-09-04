.class Lcn/domob/android/ads/E$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/E;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/ads/E;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/E;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    iput-object p2, p0, Lcn/domob/android/ads/E$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 75
    new-instance v0, Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-static {v1}, Lcn/domob/android/ads/E;->a(Lcn/domob/android/ads/E;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/E$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-static {v3}, Lcn/domob/android/ads/E;->b(Lcn/domob/android/ads/E;)I

    move-result v3

    iget-object v4, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-static {v4}, Lcn/domob/android/ads/E;->c(Lcn/domob/android/ads/E;)I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-static {v5}, Lcn/domob/android/ads/E;->d(Lcn/domob/android/ads/E;)Lcn/domob/android/j/b;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/j/a;-><init>(Landroid/content/Context;Ljava/lang/String;IILcn/domob/android/j/b;Lcn/domob/android/j/a$a;)V

    .line 77
    invoke-static {}, Lcn/domob/android/ads/F;->a()Lcn/domob/android/ads/F;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-static {v2}, Lcn/domob/android/ads/E;->e(Lcn/domob/android/ads/E;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)[J

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/j/a;->a([JLcn/domob/android/j/a$c;)V

    .line 79
    iget-object v1, p0, Lcn/domob/android/ads/E$1;->b:Lcn/domob/android/ads/E;

    invoke-virtual {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a$b;)V

    .line 80
    return-void
.end method

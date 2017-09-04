.class Lcn/domob/android/ads/B$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/B$1;->a(Lcn/domob/android/f/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/B$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/B$1;[BLjava/lang/String;)V
    .registers 4

    .prologue
    .line 132
    iput-object p1, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iput-object p2, p0, Lcn/domob/android/ads/B$1$1;->a:[B

    iput-object p3, p0, Lcn/domob/android/ads/B$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 137
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->a:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->a:[B

    array-length v0, v0

    if-nez v0, :cond_3e

    .line 138
    :cond_9
    invoke-static {}, Lcn/domob/android/ads/B;->c()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "the HTTP Status-Code is 200, but has received byte array is empty"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->b(Lcn/domob/android/ads/B;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v1, v1, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v1}, Lcn/domob/android/ads/B;->b(Lcn/domob/android/ads/B;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/ads/B$a;->a(Ljava/lang/String;)V

    .line 169
    :cond_3d
    :goto_3d
    return-void

    .line 147
    :cond_3e
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v1, p0, Lcn/domob/android/ads/B$1$1;->a:[B

    iget-object v2, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v2, v2, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v2}, Lcn/domob/android/ads/B;->c(Lcn/domob/android/ads/B;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_ba

    .line 149
    invoke-static {}, Lcn/domob/android/ads/B;->c()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image saved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 152
    :try_start_6c
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    .line 153
    iget-object v2, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v2, v2, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-virtual {v2}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/B$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_b1

    .line 159
    :goto_7e
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    const-string v2, "%s.assetReady(\'%s\', \'%s\')"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "domobBridge"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/B$1$1;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/B$1$1;->c:Lcn/domob/android/ads/B$1;

    iget-object v0, v0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/B$a;->a()V

    goto :goto_3d

    .line 155
    :catch_b1
    move-exception v0

    .line 156
    invoke-static {}, Lcn/domob/android/ads/B;->c()Lcn/domob/android/i/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 167
    :cond_ba
    invoke-static {}, Lcn/domob/android/ads/B;->c()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Error in saving image."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_3d
.end method

.class public abstract Lcn/domob/android/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/n$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcn/domob/android/ads/k;

.field protected c:Lcn/domob/android/ads/j;

.field protected d:Lcn/domob/android/ads/g;

.field protected e:Lcn/domob/android/ads/n$a;

.field protected f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V
    .registers 5

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcn/domob/android/ads/n;->a:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcn/domob/android/ads/n;->b:Lcn/domob/android/ads/k;

    .line 78
    iput-object p3, p0, Lcn/domob/android/ads/n;->c:Lcn/domob/android/ads/j;

    .line 79
    iput-object p4, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/g;

    .line 80
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(II)V
.end method

.method protected a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/n$a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 143
    :cond_9
    return-void
.end method

.method public a(Lcn/domob/android/ads/n$a;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    .line 84
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0, p1}, Lcn/domob/android/ads/n$a;->a(Ljava/lang/String;)V

    .line 155
    :cond_9
    return-void
.end method

.method public abstract a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method

.method public b()Landroid/view/View;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/n;->f:Landroid/view/View;

    return-object v0
.end method

.method public c()Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/n;->c:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/n$a;->a(Lcn/domob/android/ads/n;)V

    .line 137
    :cond_9
    return-void
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->a()V

    .line 149
    :cond_9
    return-void
.end method

.method protected i()Landroid/content/Context;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_b

    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->b()Landroid/content/Context;

    move-result-object v0

    .line 162
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Landroid/content/Context;

    goto :goto_a
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->c()V

    .line 169
    :cond_9
    return-void
.end method

.method protected k()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->d()V

    .line 175
    :cond_9
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->e()V

    .line 181
    :cond_9
    return-void
.end method

.method protected m()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/n;->e:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->f()V

    .line 187
    :cond_9
    return-void
.end method

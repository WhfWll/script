.class public Lcn/domob/android/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "mogo_load"

.field public static final b:Ljava/lang/String; = "mogo_imp"

.field public static final c:Ljava/lang/String; = "mogo_dismiss"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/domob/android/h/a;->d:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcn/domob/android/h/a;->e:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/domob/android/ads/j;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/h/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/h/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 35
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 36
    invoke-virtual {p2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_28
    sget-object v2, Lcn/domob/android/ads/w$h;->s:Lcn/domob/android/ads/w$h;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 41
    return-void

    :cond_2f
    move-object v1, v5

    goto :goto_28
.end method

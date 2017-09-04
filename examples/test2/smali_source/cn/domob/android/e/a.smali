.class public Lcn/domob/android/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x14

.field public static final b:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .registers 2

    .prologue
    .line 55
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/e/c;->a(I)V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 35
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/domob/android/e/c;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 38
    :cond_11
    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 22
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/e/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_12
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0}, Lcn/domob/android/e/b;->a(Landroid/content/Context;)Lcn/domob/android/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/e/b;->a()V

    .line 47
    return-void
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 62
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    invoke-static {p0}, Lcn/domob/android/e/b;->a(Landroid/content/Context;)Lcn/domob/android/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/e/b;->a(Lorg/json/JSONArray;)V

    .line 65
    :cond_11
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 80
    invoke-static {p0}, Lcn/domob/android/e/b;->a(Landroid/content/Context;)Lcn/domob/android/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/e/b;->b()Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static c(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcn/domob/android/e/c;->a()Lcn/domob/android/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    invoke-static {p0}, Lcn/domob/android/e/b;->a(Landroid/content/Context;)Lcn/domob/android/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/e/b;->b(Lorg/json/JSONArray;)V

    .line 74
    :cond_11
    return-void
.end method

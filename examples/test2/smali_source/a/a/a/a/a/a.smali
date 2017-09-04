.class public La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/a$b;,
        La/a/a/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g;
    .registers 4

    .prologue
    .line 69
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 70
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g;

    move-result-object v0

    .line 72
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 56
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(La/a/a/a/a/a$b;)V
    .registers 2

    .prologue
    .line 41
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/d;->a(La/a/a/a/a/a$b;)V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 94
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, La/a/a/a/a/f;->a(Landroid/content/Context;I)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;La/a/a/a/a/a$a;)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0, p1}, La/a/a/a/a/d;->a(Landroid/content/Context;La/a/a/a/a/a$a;)V

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 85
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, La/a/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/Object;I)V

    .line 86
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 77
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;JZ)V

    .line 78
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 63
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 64
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, La/a/a/a/a/f;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_16
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 81
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;JZ)V

    .line 82
    return-void
.end method

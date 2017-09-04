.class public Lcn/domob/android/ads/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "rectangle"

.field public static final b:Ljava/lang/String; = "triangle"


# instance fields
.field private c:Lcn/domob/android/ads/v;

.field private d:Lcn/domob/android/ads/v$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Init and config present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcn/domob/android/ads/v$e;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/v$e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    .line 117
    return-void
.end method

.method private a(Lcn/domob/android/ads/v;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->e(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p1}, Lcn/domob/android/ads/v;->c(Lcn/domob/android/ads/v;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 255
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v1

    const-string v2, "Interstitial is too big, Give up ads show"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 261
    :goto_18
    return v0

    .line 257
    :cond_19
    iget-object v1, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->f(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->g(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {p1}, Lcn/domob/android/ads/v;->d(Lcn/domob/android/ads/v;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 258
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v1

    const-string v2, "Close button and ad views overlap, Give up ads show"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_18

    .line 261
    :cond_39
    const/4 v0, 0x1

    goto :goto_18
.end method


# virtual methods
.method public a(I)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->e(Lcn/domob/android/ads/v$e;I)I

    .line 228
    return-object p0
.end method

.method public a(II)Lcn/domob/android/ads/v$a;
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;I)I

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p2}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;I)I

    .line 122
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/v$b;)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$b;)Lcn/domob/android/ads/v$b;

    .line 195
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/v$c;)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$c;)Lcn/domob/android/ads/v$c;

    .line 190
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/v$d;)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$d;)Lcn/domob/android/ads/v$d;

    .line 185
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public a(Z)Lcn/domob/android/ads/v$a;
    .registers 4

    .prologue
    .line 129
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Close button is needed for present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;Z)Z

    .line 131
    return-object p0
.end method

.method public a(ZF)Lcn/domob/android/ads/v$a;
    .registers 6

    .prologue
    .line 157
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force show is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 158
    if-eqz p1, :cond_2a

    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;Z)Z

    .line 160
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    float-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/v$e;->c(Lcn/domob/android/ads/v$e;I)I

    .line 163
    :cond_2a
    return-object p0
.end method

.method public a(ZZZZ)Lcn/domob/android/ads/v$a;
    .registers 6

    .prologue
    .line 199
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->d(Lcn/domob/android/ads/v$e;Z)Z

    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p2}, Lcn/domob/android/ads/v$e;->e(Lcn/domob/android/ads/v$e;Z)Z

    .line 201
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p3}, Lcn/domob/android/ads/v$e;->f(Lcn/domob/android/ads/v$e;Z)Z

    .line 202
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p4}, Lcn/domob/android/ads/v$e;->g(Lcn/domob/android/ads/v$e;Z)Z

    .line 203
    return-object p0
.end method

.method public a([I)Lcn/domob/android/ads/v$a;
    .registers 9

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    if-eqz p1, :cond_4b

    array-length v0, p1

    if-ne v0, v2, :cond_4b

    .line 139
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Close button offset x: %d y: %d"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    aget v4, p1, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    aget v4, p1, v6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v0

    aget v1, p1, v5

    invoke-static {v0, v1}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, p1, v5

    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v0

    aget v1, p1, v6

    invoke-static {v0, v1}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, p1, v6

    .line 142
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;[I)[I

    .line 146
    :goto_4a
    return-object p0

    .line 144
    :cond_4b
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;[I)[I

    goto :goto_4a
.end method

.method public a()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->c:Lcn/domob/android/ads/v;

    invoke-virtual {v0}, Lcn/domob/android/ads/v;->a()V

    .line 266
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->c(Lcn/domob/android/ads/v$e;)V

    .line 243
    new-instance v0, Lcn/domob/android/ads/v;

    iget-object v1, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/v;-><init>(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$1;)V

    iput-object v0, p0, Lcn/domob/android/ads/v$a;->c:Lcn/domob/android/ads/v;

    .line 244
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->c:Lcn/domob/android/ads/v;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/v$a;->a(Lcn/domob/android/ads/v;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 245
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->c:Lcn/domob/android/ads/v;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;Landroid/view/View;)V

    .line 251
    :cond_1c
    :goto_1c
    return-void

    .line 247
    :cond_1d
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->d(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$b;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->d(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/v$b;->a()V

    goto :goto_1c
.end method

.method public b(I)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->f(Lcn/domob/android/ads/v$e;I)I

    .line 233
    return-object p0
.end method

.method public b(Z)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->h(Lcn/domob/android/ads/v$e;Z)Z

    .line 208
    return-object p0
.end method

.method public b(ZF)Lcn/domob/android/ads/v$a;
    .registers 6

    .prologue
    .line 174
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto close is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 175
    if-eqz p1, :cond_2a

    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/v$e;->c(Lcn/domob/android/ads/v$e;Z)Z

    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    float-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/v$e;->d(Lcn/domob/android/ads/v$e;I)I

    .line 180
    :cond_2a
    return-object p0
.end method

.method public c(Z)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->i(Lcn/domob/android/ads/v$e;Z)Z

    .line 213
    return-object p0
.end method

.method public d(Z)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->j(Lcn/domob/android/ads/v$e;Z)Z

    .line 218
    return-object p0
.end method

.method public e(Z)Lcn/domob/android/ads/v$a;
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/v$a;->d:Lcn/domob/android/ads/v$e;

    invoke-static {v0, p1}, Lcn/domob/android/ads/v$e;->k(Lcn/domob/android/ads/v$e;Z)Z

    .line 223
    return-object p0
.end method

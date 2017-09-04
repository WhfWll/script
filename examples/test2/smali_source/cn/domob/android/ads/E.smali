.class public Lcn/domob/android/ads/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/j/a$a;
.implements Lcn/domob/android/j/a$b;
.implements Lcn/domob/android/j/a$c;


# static fields
.field private static a:Lcn/domob/android/i/f;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcn/domob/android/j/a;

.field private i:Landroid/content/Context;

.field private j:Lcn/domob/android/ads/j;

.field private k:Lcn/domob/android/ads/g;

.field private l:Lcn/domob/android/ads/a/c;

.field private m:Lcn/domob/android/j/b;

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/E;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/E;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/a/c;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    .line 34
    iput-boolean v1, p0, Lcn/domob/android/ads/E;->n:Z

    .line 35
    iput-boolean v1, p0, Lcn/domob/android/ads/E;->o:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/E;->p:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    .line 41
    iget-object v0, p1, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    iput-object v0, p0, Lcn/domob/android/ads/E;->k:Lcn/domob/android/ads/g;

    .line 42
    iget-object v0, p1, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iput-object v0, p0, Lcn/domob/android/ads/E;->i:Landroid/content/Context;

    .line 43
    iget-object v0, p1, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    iput-object v0, p0, Lcn/domob/android/ads/E;->j:Lcn/domob/android/ads/j;

    .line 44
    iput-object p2, p0, Lcn/domob/android/ads/E;->g:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/E;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/domob/android/ads/E;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/E;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcn/domob/android/ads/E;->c:I

    return v0
.end method

.method static synthetic c(Lcn/domob/android/ads/E;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcn/domob/android/ads/E;->d:I

    return v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcn/domob/android/ads/E;->o:Z

    if-nez v0, :cond_1d

    .line 100
    iput-boolean v3, p0, Lcn/domob/android/ads/E;->o:Z

    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 103
    iget-object v1, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 106
    :cond_1d
    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/E;)Lcn/domob/android/j/b;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/E;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/domob/android/ads/E;->b:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/E;->j:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    .line 50
    new-instance v1, Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->F()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/domob/android/j/b;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/E;->j:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->G()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/E;->b:Ljava/util/HashMap;

    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/E;->g:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcn/domob/android/ads/E;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_34

    .line 54
    :cond_29
    sget-object v0, Lcn/domob/android/ads/E;->a:Lcn/domob/android/i/f;

    const-string v1, "action url is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcn/domob/android/ads/E;->c()V

    .line 93
    :goto_33
    return-void

    .line 58
    :cond_34
    iget-object v0, p0, Lcn/domob/android/ads/E;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 61
    if-eqz v1, :cond_b6

    const-string v3, "domob"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    if-eqz v2, :cond_b6

    const-string v1, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 62
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    iget-object v2, p0, Lcn/domob/android/ads/E;->i:Landroid/content/Context;

    const-string v3, "cache"

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/android/ads/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 64
    const-string v0, "groupID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/E;->e:Ljava/lang/String;

    .line 65
    const-string v0, "resourceID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/E;->f:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/E;->i:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/E;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/E;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La/a/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_aa

    .line 68
    invoke-virtual {v0}, La/a/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 69
    const/16 v1, 0x140

    iput v1, p0, Lcn/domob/android/ads/E;->c:I

    .line 70
    const/16 v1, 0xf0

    iput v1, p0, Lcn/domob/android/ads/E;->d:I

    .line 71
    if-eqz v0, :cond_9f

    .line 72
    iget-object v1, p0, Lcn/domob/android/ads/E;->p:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/E$1;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/E$1;-><init>(Lcn/domob/android/ads/E;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    .line 83
    :cond_9f
    invoke-direct {p0}, Lcn/domob/android/ads/E;->c()V

    .line 84
    sget-object v0, Lcn/domob/android/ads/E;->a:Lcn/domob/android/i/f;

    const-string v1, "resource local path is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_33

    .line 87
    :cond_aa
    invoke-direct {p0}, Lcn/domob/android/ads/E;->c()V

    .line 88
    sget-object v0, Lcn/domob/android/ads/E;->a:Lcn/domob/android/i/f;

    const-string v1, "can not find video source"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 91
    :cond_b6
    invoke-direct {p0}, Lcn/domob/android/ads/E;->c()V

    goto/16 :goto_33
.end method

.method public a(J)V
    .registers 12

    .prologue
    .line 138
    invoke-static {}, Lcn/domob/android/ads/F;->a()Lcn/domob/android/ads/F;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/E;->i:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/E;->k:Lcn/domob/android/ads/g;

    iget-object v5, p0, Lcn/domob/android/ads/E;->j:Lcn/domob/android/ads/j;

    iget-object v6, p0, Lcn/domob/android/ads/E;->b:Ljava/util/HashMap;

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v7}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;JLcn/domob/android/ads/g;Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 139
    return-void
.end method

.method public a(Lcn/domob/android/j/a;)V
    .registers 3

    .prologue
    .line 129
    iput-object p1, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    if-eqz v0, :cond_10

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->c()V

    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->f()V

    .line 134
    :cond_10
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 157
    iget-boolean v0, p0, Lcn/domob/android/ads/E;->n:Z

    if-nez v0, :cond_7

    .line 158
    invoke-direct {p0}, Lcn/domob/android/ads/E;->c()V

    .line 160
    :cond_7
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->g()V

    .line 187
    :cond_9
    return-void
.end method

.method public b(J)V
    .registers 3

    .prologue
    .line 148
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 111
    iput-boolean v1, p0, Lcn/domob/android/ads/E;->n:Z

    .line 114
    iget-boolean v0, p0, Lcn/domob/android/ads/E;->o:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/E;->m:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 116
    iget-object v0, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    invoke-virtual {v0, v2, p1, v1}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 122
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    if-eqz v0, :cond_34

    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/E;->h:Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->g()V

    .line 125
    :cond_34
    return-void

    .line 119
    :cond_35
    iget-object v0, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    invoke-virtual {v0, v2, p1, v1}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_2b
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/a/c;->k()V

    .line 153
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 178
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/E;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action button tracker url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/E;->l:Lcn/domob/android/ads/a/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/a/c;->j()V

    .line 144
    return-void
.end method

.method public o()V
    .registers 6

    .prologue
    .line 164
    invoke-direct {p0}, Lcn/domob/android/ads/E;->c()V

    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/E;->k:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/E;->j:Lcn/domob/android/ads/j;

    const-string v2, "cached_reso_invalid"

    iget-object v3, p0, Lcn/domob/android/ads/E;->e:Ljava/lang/String;

    iget-object v4, p0, Lcn/domob/android/ads/E;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public p()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public q()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.class public Lcn/dbox/core/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "1"

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field private static d:Lcn/dbox/core/h/d;

.field private static e:Lcn/dbox/core/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/f/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/f/a;->d:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcn/dbox/core/f/a;
    .registers 2

    .prologue
    .line 63
    const-class v1, Lcn/dbox/core/f/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/dbox/core/f/a;->e:Lcn/dbox/core/f/a;

    if-nez v0, :cond_e

    .line 64
    new-instance v0, Lcn/dbox/core/f/a;

    invoke-direct {v0}, Lcn/dbox/core/f/a;-><init>()V

    sput-object v0, Lcn/dbox/core/f/a;->e:Lcn/dbox/core/f/a;

    .line 66
    :cond_e
    sget-object v0, Lcn/dbox/core/f/a;->e:Lcn/dbox/core/f/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcn/dbox/core/f/a;->d:Lcn/dbox/core/h/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 235
    new-instance v0, Lcn/dbox/core/c/c;

    const-string v5, "GET"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/dbox/core/f/a$2;

    invoke-direct {v8, p0}, Lcn/dbox/core/f/a$2;-><init>(Lcn/dbox/core/f/a;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v8}, Lcn/dbox/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V

    .line 249
    sget-object v1, Lcn/dbox/core/f/a;->d:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The third party incident report:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p3}, Lcn/dbox/core/c/c;->a(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcn/dbox/core/c/c;->b()V

    .line 252
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/b$c;Lcn/dbox/core/bean/c;)V
    .registers 6

    .prologue
    .line 111
    new-instance v0, Lcn/dbox/core/f/b$e;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$e;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 112
    invoke-virtual {v0, p2}, Lcn/dbox/core/f/b$e;->a(Lcn/dbox/core/b$c;)V

    .line 113
    invoke-virtual {p3}, Lcn/dbox/core/bean/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$e;->a(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$e;->b(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 7

    .prologue
    .line 120
    new-instance v0, Lcn/dbox/core/f/b$i;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$i;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 121
    invoke-virtual {p3}, Lcn/dbox/core/bean/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$i;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$i;->c(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p4}, Lcn/dbox/core/f/b$i;->a(Lcn/dbox/core/b$e;)V

    .line 124
    sget-object v1, Lcn/dbox/core/b$f;->b:Lcn/dbox/core/b$f;

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$i;->a(Lcn/dbox/core/b$f;)V

    .line 125
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$i;->b(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 102
    new-instance v0, Lcn/dbox/core/f/b$r;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$r;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 103
    invoke-virtual {v0, p2}, Lcn/dbox/core/f/b$r;->a(Lcn/dbox/core/b$o;)V

    .line 104
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$r;->a(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p4}, Lcn/dbox/core/f/b$r;->c(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcn/dbox/core/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$r;->b(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 5

    .prologue
    .line 73
    new-instance v0, Lcn/dbox/core/f/b$l;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$l;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 75
    const-string v1, "http://arp.12306.domob.cn/aw/event/"

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$l;->b(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V
    .registers 7

    .prologue
    .line 153
    new-instance v0, Lcn/dbox/core/f/b$f;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/dbox/core/f/b$f;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V

    .line 155
    invoke-virtual {v0, p4}, Lcn/dbox/core/f/b$f;->a(Lcn/dbox/core/b$d;)V

    .line 156
    invoke-virtual {p2}, Lcn/dbox/core/bean/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$f;->a(I)V

    .line 157
    invoke-virtual {p2}, Lcn/dbox/core/bean/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$f;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lcn/dbox/core/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$f;->a(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcn/dbox/core/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$f;->b(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V
    .registers 6

    .prologue
    .line 165
    new-instance v0, Lcn/dbox/core/f/b$d;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/dbox/core/f/b$d;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V

    .line 167
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$d;->a(Lcn/dbox/core/b$b;)V

    .line 168
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$d;->b(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V
    .registers 6

    .prologue
    .line 174
    new-instance v0, Lcn/dbox/core/f/b$j;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/dbox/core/f/b$j;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V

    .line 176
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$j;->a(Lcn/dbox/core/b$g;)V

    .line 177
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$j;->b(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$i;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 184
    new-instance v0, Lcn/dbox/core/f/b$o;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/dbox/core/f/b$o;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V

    .line 186
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$o;->a(Lcn/dbox/core/b$i;)V

    .line 187
    invoke-virtual {v0, p4}, Lcn/dbox/core/f/b$o;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$o;->b(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/dbox/core/c;",
            "Lcn/dbox/core/bean/a;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcn/dbox/core/f/b$b;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/dbox/core/f/b$b;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V

    .line 264
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$b;->a(Ljava/util/HashMap;)V

    .line 265
    invoke-virtual {v0, p4}, Lcn/dbox/core/f/b$b;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p5}, Lcn/dbox/core/f/b$b;->b(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public a(Lcn/dbox/core/c;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V
    .registers 6

    .prologue
    .line 130
    new-instance v0, Lcn/dbox/core/f/b$g;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$g;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 131
    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$g;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$g;->c(Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcn/dbox/core/b$f;->c:Lcn/dbox/core/b$f;

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$g;->a(Lcn/dbox/core/b$f;)V

    .line 134
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$g;->a(Lcn/dbox/core/b$b;)V

    .line 135
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$g;->b(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public a(Lcn/dbox/core/c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 82
    :try_start_0
    new-instance v0, Lcn/dbox/core/f/b$q;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$q;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 83
    invoke-virtual {v0, p2}, Lcn/dbox/core/f/b$q;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcn/dbox/core/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$q;->b(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_16} :catch_1e

    .line 90
    :goto_16
    return-void

    .line 85
    :catch_17
    move-exception v0

    .line 86
    sget-object v1, Lcn/dbox/core/f/a;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 87
    :catch_1e
    move-exception v0

    .line 88
    sget-object v1, Lcn/dbox/core/f/a;->d:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public a(Lcn/dbox/core/c;Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 142
    new-instance v0, Lcn/dbox/core/f/b$h;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$h;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 145
    sget-object v1, Lcn/dbox/core/b$f;->c:Lcn/dbox/core/b$f;

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$h;->a(Lcn/dbox/core/b$f;)V

    .line 146
    invoke-virtual {v0, p3}, Lcn/dbox/core/f/b$h;->a(Lcn/dbox/core/b$b;)V

    .line 147
    invoke-virtual {v0, p4}, Lcn/dbox/core/f/b$h;->b(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public a(Lcn/dbox/core/c;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/dbox/core/c;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Lcn/dbox/core/c;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/dbox/core/f/a$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcn/dbox/core/f/a$1;-><init>(Lcn/dbox/core/f/a;Ljava/util/ArrayList;Ljava/lang/String;Lcn/dbox/core/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public b(Lcn/dbox/core/c;Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 5

    .prologue
    .line 94
    new-instance v0, Lcn/dbox/core/f/b$k;

    invoke-static {}, Lcn/dbox/core/f/b;->a()Lcn/dbox/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/dbox/core/f/b$k;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V

    .line 95
    invoke-virtual {v0, p2}, Lcn/dbox/core/f/b$k;->a(Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 96
    invoke-virtual {p1}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/f/b$k;->b(Ljava/lang/String;)V

    .line 97
    return-void
.end method

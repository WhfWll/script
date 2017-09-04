.class public Lcn/dbox/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/b$k;,
        Lcn/dbox/core/b$b;,
        Lcn/dbox/core/b$e;,
        Lcn/dbox/core/b$f;,
        Lcn/dbox/core/b$o;,
        Lcn/dbox/core/b$i;,
        Lcn/dbox/core/b$d;,
        Lcn/dbox/core/b$n;,
        Lcn/dbox/core/b$g;,
        Lcn/dbox/core/b$a;,
        Lcn/dbox/core/b$c;,
        Lcn/dbox/core/b$h;,
        Lcn/dbox/core/b$j;,
        Lcn/dbox/core/b$m;,
        Lcn/dbox/core/b$l;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Lcn/dbox/core/c;

.field private b:Lcn/dbox/core/a;

.field private c:Lcn/dbox/core/d/l;

.field private d:Lcn/dbox/core/b$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 365
    const-string v0, "online"

    sput-object v0, Lcn/dbox/core/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcn/dbox/core/c;

    invoke-direct {v0, p1, p2, p3}, Lcn/dbox/core/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    .line 58
    new-instance v0, Lcn/dbox/core/a;

    iget-object v1, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-direct {v0, p1, v1}, Lcn/dbox/core/a;-><init>(Landroid/content/Context;Lcn/dbox/core/c;)V

    iput-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    .line 59
    invoke-static {p1}, Lcn/dbox/core/d/l;->a(Landroid/content/Context;)Lcn/dbox/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/b;->c:Lcn/dbox/core/d/l;

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 192
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 372
    sget-object v0, Lcn/dbox/core/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 368
    sput-object p0, Lcn/dbox/core/b;->e:Ljava/lang/String;

    .line 369
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcn/dbox/core/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public a(Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/a;->a(Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 310
    return-void
.end method

.method public a(Lcn/dbox/core/b$j;)V
    .registers 3

    .prologue
    .line 98
    iput-object p1, p0, Lcn/dbox/core/b;->d:Lcn/dbox/core/b$j;

    .line 99
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1}, Lcn/dbox/core/a;->a(Lcn/dbox/core/b$j;)V

    .line 102
    :cond_b
    return-void
.end method

.method public a(Lcn/dbox/core/b$l;)V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0, p1}, Lcn/dbox/core/c;->a(Lcn/dbox/core/b$l;)V

    .line 125
    return-void
.end method

.method public a(Lcn/dbox/core/b$m;)V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0, p1}, Lcn/dbox/core/c;->a(Lcn/dbox/core/b$m;)V

    .line 112
    return-void
.end method

.method public a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 302
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/a;->a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public a(Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 277
    return-void
.end method

.method public a(Lcn/dbox/core/bean/a;)V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/a;)V

    .line 208
    return-void
.end method

.method public a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V
    .registers 5

    .prologue
    .line 339
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V

    .line 340
    return-void
.end method

.method public a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V

    .line 361
    return-void
.end method

.method public a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 318
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcn/dbox/core/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/dbox/core/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Lcn/dbox/core/b;->c:Lcn/dbox/core/d/l;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/d/l;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 399
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/a;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_9
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcn/dbox/core/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    return-void
.end method

.method public b(Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1}, Lcn/dbox/core/a;->b(Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 285
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    invoke-virtual {v0, p1}, Lcn/dbox/core/a;->a(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcn/dbox/core/b;->c:Lcn/dbox/core/d/l;

    invoke-virtual {v0}, Lcn/dbox/core/d/l;->b()V

    .line 406
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcn/dbox/core/b;->b:Lcn/dbox/core/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z

    .line 417
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcn/dbox/core/b;->c:Lcn/dbox/core/d/l;

    invoke-virtual {v0}, Lcn/dbox/core/d/l;->c()V

    .line 413
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0, p1}, Lcn/dbox/core/c;->a(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcn/dbox/core/b;->a:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->s()V

    .line 439
    return-void
.end method

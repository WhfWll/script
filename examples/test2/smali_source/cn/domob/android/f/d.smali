.class public Lcn/domob/android/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field private final d:Lcn/domob/android/f/b;

.field private final e:Lcn/domob/android/f/g;

.field private final f:Lcn/domob/android/f/f;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "domob.cn/a/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "domob.org/a/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duomeng.org/a/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duomeng.net/a/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duomeng.cn/a/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "domob.com.cn/a/"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/f/d;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/f/e;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcn/domob/android/f/b;

    invoke-virtual {p1}, Lcn/domob/android/f/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/f/b;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1}, Lcn/domob/android/f/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcn/domob/android/f/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->c(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcn/domob/android/f/e;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->a(I)V

    .line 27
    invoke-virtual {p1}, Lcn/domob/android/f/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->d(Ljava/lang/String;)V

    .line 28
    iput-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    .line 29
    invoke-virtual {p1}, Lcn/domob/android/f/e;->d()Lcn/domob/android/f/g;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/f/d;->e:Lcn/domob/android/f/g;

    .line 30
    invoke-virtual {p1}, Lcn/domob/android/f/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/f/d;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcn/domob/android/f/e;->c()Lcn/domob/android/f/f;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/f/d;->f:Lcn/domob/android/f/f;

    .line 32
    invoke-virtual {p1}, Lcn/domob/android/f/e;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/f/d;->g:Z

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 10
    sput-object p0, Lcn/domob/android/f/d;->b:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcn/domob/android/f/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 6
    sput-object p0, Lcn/domob/android/f/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcn/domob/android/f/d;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcn/domob/android/f/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    new-instance v1, Lcn/domob/android/f/d$1;

    invoke-direct {v1, p0}, Lcn/domob/android/f/d$1;-><init>(Lcn/domob/android/f/d;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->a(Lcn/domob/android/f/b$b;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()Lcn/domob/android/f/h;
    .registers 3

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/domob/android/f/d;->g:Z

    if-eqz v0, :cond_74

    .line 59
    sget-object v0, Lcn/domob/android/f/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 60
    iget-object v0, p0, Lcn/domob/android/f/d;->a:Ljava/lang/String;

    sput-object v0, Lcn/domob/android/f/d;->c:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcn/domob/android/f/d;->a:Ljava/lang/String;

    sput-object v0, Lcn/domob/android/f/d;->b:Ljava/lang/String;

    .line 63
    :cond_14
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    sget-object v1, Lcn/domob/android/f/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->b(Ljava/lang/String;)V

    .line 67
    :goto_1b
    iget-object v0, p0, Lcn/domob/android/f/d;->f:Lcn/domob/android/f/f;

    if-eqz v0, :cond_7c

    .line 68
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    iget-object v1, p0, Lcn/domob/android/f/d;->f:Lcn/domob/android/f/f;

    invoke-virtual {v1}, Lcn/domob/android/f/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->e(Ljava/lang/String;)V

    .line 72
    :goto_2a
    iget-boolean v0, p0, Lcn/domob/android/f/d;->g:Z

    if-eqz v0, :cond_37

    .line 73
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->a(Z)V

    .line 74
    invoke-direct {p0}, Lcn/domob/android/f/d;->e()V

    .line 76
    :cond_37
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    invoke-virtual {v0}, Lcn/domob/android/f/b;->h()Ljava/lang/String;

    .line 78
    new-instance v0, Lcn/domob/android/f/h;

    invoke-direct {v0}, Lcn/domob/android/f/h;-><init>()V

    .line 79
    iget-object v1, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    invoke-virtual {v1}, Lcn/domob/android/f/b;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/h;->a([B)V

    .line 80
    iget-object v1, p0, Lcn/domob/android/f/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/f/h;->a(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    invoke-virtual {v1}, Lcn/domob/android/f/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/h;->a(I)V

    .line 82
    iget-object v1, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    invoke-virtual {v1}, Lcn/domob/android/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/h;->b(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    invoke-virtual {v1}, Lcn/domob/android/f/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/h;->c(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcn/domob/android/f/d;->e:Lcn/domob/android/f/g;

    if-eqz v1, :cond_73

    .line 85
    iget-object v1, p0, Lcn/domob/android/f/d;->e:Lcn/domob/android/f/g;

    invoke-virtual {v1, v0}, Lcn/domob/android/f/g;->b(Lcn/domob/android/f/h;)V

    .line 87
    :cond_73
    return-object v0

    .line 65
    :cond_74
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    iget-object v1, p0, Lcn/domob/android/f/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->b(Ljava/lang/String;)V

    goto :goto_1b

    .line 70
    :cond_7c
    iget-object v0, p0, Lcn/domob/android/f/d;->d:Lcn/domob/android/f/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/f/b;->e(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public run()V
    .registers 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcn/domob/android/f/d;->a()Lcn/domob/android/f/h;

    .line 54
    return-void
.end method

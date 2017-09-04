.class public Lcn/domob/android/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/c/e$a;
    }
.end annotation


# instance fields
.field a:Lcn/domob/android/i/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcn/domob/android/c/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/c/e$a;)V
    .registers 8

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/c/e;->a:Lcn/domob/android/i/f;

    .line 31
    iput-object p1, p0, Lcn/domob/android/c/e;->b:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/e;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcn/domob/android/c/e;->d:Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lcn/domob/android/c/e;->e:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcn/domob/android/c/e;->f:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcn/domob/android/c/e;->g:Lcn/domob/android/c/e$a;

    .line 37
    return-void
.end method

.method static synthetic a(Lcn/domob/android/c/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/c/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-static {v0}, Lcn/domob/android/c/a;->a(I)V

    .line 93
    return-void
.end method

.method static synthetic c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/e;->g:Lcn/domob/android/c/e$a;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/c/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/c/e;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/c/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lcn/domob/android/c/e;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/android/c/e$1;

    invoke-direct {v1, p0}, Lcn/domob/android/c/e$1;-><init>(Lcn/domob/android/c/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

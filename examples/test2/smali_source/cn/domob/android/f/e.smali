.class public Lcn/domob/android/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "GET"

.field public static final b:Ljava/lang/String; = "POST"

.field protected static final c:I = 0x4e20


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Lcn/domob/android/f/f;

.field private m:Lcn/domob/android/f/g;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "POST"

    iput-object v0, p0, Lcn/domob/android/f/e;->f:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcn/domob/android/f/e;->i:Z

    .line 15
    iput-boolean v1, p0, Lcn/domob/android/f/e;->j:Z

    .line 16
    const/16 v0, 0x4e20

    iput v0, p0, Lcn/domob/android/f/e;->k:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/f/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcn/domob/android/f/e;->d:Landroid/content/Context;

    .line 26
    return-object p0
.end method

.method public a(Lcn/domob/android/f/f;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcn/domob/android/f/e;->l:Lcn/domob/android/f/f;

    .line 44
    return-object p0
.end method

.method public a(Lcn/domob/android/f/g;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcn/domob/android/f/e;->m:Lcn/domob/android/f/g;

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcn/domob/android/f/e;->g:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public a(Z)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcn/domob/android/f/e;->i:Z

    .line 62
    return-object p0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lcn/domob/android/f/e;->k:I

    .line 107
    return-void
.end method

.method public b(Ljava/lang/String;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcn/domob/android/f/e;->e:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public b(Z)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 88
    iput-boolean p1, p0, Lcn/domob/android/f/e;->j:Z

    .line 89
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/f/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcn/domob/android/f/e;->f:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public c()Lcn/domob/android/f/f;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/android/f/e;->l:Lcn/domob/android/f/f;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcn/domob/android/f/e;
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcn/domob/android/f/e;->h:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public d()Lcn/domob/android/f/g;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/f/e;->m:Lcn/domob/android/f/g;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/domob/android/f/e;->i:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcn/domob/android/f/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcn/domob/android/f/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcn/domob/android/f/e;->j:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcn/domob/android/f/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcn/domob/android/f/e;->k:I

    return v0
.end method

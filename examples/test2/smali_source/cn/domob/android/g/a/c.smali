.class Lcn/domob/android/g/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcn/domob/android/i/f;

.field private static final b:J = 0x5265c00L

.field private static final c:I = 0x2


# instance fields
.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcn/domob/android/g/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/g/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/g/a/c;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/g/a/c;->f:I

    .line 36
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcn/domob/android/g/a/c;->g:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/g/a/c;->i:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/domob/android/g/a/a$b;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/g/a/c;->k:Lcn/domob/android/g/a/a$b;

    return-object v0
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 80
    iput p1, p0, Lcn/domob/android/g/a/c;->f:I

    .line 81
    return-void
.end method

.method protected a(J)V
    .registers 4

    .prologue
    .line 88
    iput-wide p1, p0, Lcn/domob/android/g/a/c;->g:J

    .line 89
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcn/domob/android/g/a/c;->d:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public a(Lcn/domob/android/g/a/a$b;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcn/domob/android/g/a/c;->k:Lcn/domob/android/g/a/a$b;

    .line 57
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcn/domob/android/g/a/c;->j:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 64
    iput-boolean p1, p0, Lcn/domob/android/g/a/c;->h:Z

    .line 65
    return-void
.end method

.method protected a([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcn/domob/android/g/a/c;->e:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 112
    iput-boolean p1, p0, Lcn/domob/android/g/a/c;->i:Z

    .line 113
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/domob/android/g/a/c;->h:Z

    return v0
.end method

.method protected c()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/android/g/a/c;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected d()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcn/domob/android/g/a/c;->f:I

    return v0
.end method

.method protected e()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcn/domob/android/g/a/c;->g:J

    return-wide v0
.end method

.method protected f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcn/domob/android/g/a/c;->j:Ljava/util/Map;

    return-object v0
.end method

.method protected g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcn/domob/android/g/a/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcn/domob/android/g/a/c;->i:Z

    return v0
.end method

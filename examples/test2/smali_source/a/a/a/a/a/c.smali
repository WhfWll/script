.class La/a/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "empty"

.field protected static final b:J

.field protected static final c:I

.field protected static final d:I


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, La/a/a/a/a/c;->f:Ljava/lang/String;

    .line 11
    iput v1, p0, La/a/a/a/a/c;->g:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, La/a/a/a/a/c;->h:Ljava/lang/String;

    .line 13
    const-string v0, "empty"

    iput-object v0, p0, La/a/a/a/a/c;->i:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/c;->j:I

    .line 15
    iput v1, p0, La/a/a/a/a/c;->k:I

    .line 16
    iput v1, p0, La/a/a/a/a/c;->l:I

    .line 17
    iput-wide v2, p0, La/a/a/a/a/c;->m:J

    .line 18
    iput-wide v2, p0, La/a/a/a/a/c;->n:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, La/a/a/a/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 41
    iput p1, p0, La/a/a/a/a/c;->g:I

    .line 42
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 73
    iput-wide p1, p0, La/a/a/a/a/c;->m:J

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, La/a/a/a/a/c;->e:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, La/a/a/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 65
    iput p1, p0, La/a/a/a/a/c;->j:I

    .line 66
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 81
    iput-wide p1, p0, La/a/a/a/a/c;->n:J

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, La/a/a/a/a/c;->f:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, La/a/a/a/a/c;->g:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 89
    iput p1, p0, La/a/a/a/a/c;->k:I

    .line 90
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, La/a/a/a/a/c;->h:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, La/a/a/a/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 97
    iput p1, p0, La/a/a/a/a/c;->l:I

    .line 98
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, La/a/a/a/a/c;->i:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, La/a/a/a/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, La/a/a/a/a/c;->j:I

    return v0
.end method

.method public g()J
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, La/a/a/a/a/c;->m:J

    return-wide v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, La/a/a/a/a/c;->n:J

    return-wide v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, La/a/a/a/a/c;->k:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, La/a/a/a/a/c;->l:I

    return v0
.end method

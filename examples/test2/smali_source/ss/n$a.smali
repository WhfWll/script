.class public final Lss/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lss/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/n;->a(Lss/n;)Z

    move-result v0

    iput-boolean v0, p0, Lss/n$a;->a:Z

    invoke-static {p1}, Lss/n;->b(Lss/n;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/n$a;->b:[Ljava/lang/String;

    invoke-static {p1}, Lss/n;->c(Lss/n;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/n$a;->c:[Ljava/lang/String;

    invoke-static {p1}, Lss/n;->d(Lss/n;)Z

    move-result v0

    iput-boolean v0, p0, Lss/n$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lss/n$a;->a:Z

    return-void
.end method

.method static synthetic a(Lss/n$a;)Z
    .registers 2

    iget-boolean v0, p0, Lss/n$a;->a:Z

    return v0
.end method

.method static synthetic b(Lss/n$a;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/n$a;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/n$a;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/n$a;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lss/n$a;)Z
    .registers 2

    iget-boolean v0, p0, Lss/n$a;->d:Z

    return v0
.end method


# virtual methods
.method public a(Z)Lss/n$a;
    .registers 4

    iget-boolean v0, p0, Lss/n$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-boolean p1, p0, Lss/n$a;->d:Z

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lss/n$a;
    .registers 4

    iget-boolean v0, p0, Lss/n$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lss/n$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs a([Lss/ao;)Lss/n$a;
    .registers 5

    iget-boolean v0, p0, Lss/n$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    iget-object v2, v2, Lss/ao;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p0, v1}, Lss/n$a;->b([Ljava/lang/String;)Lss/n$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lss/j;)Lss/n$a;
    .registers 5

    iget-boolean v0, p0, Lss/n$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    iget-object v2, v2, Lss/j;->aS:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p0, v1}, Lss/n$a;->a([Ljava/lang/String;)Lss/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/n;
    .registers 3

    new-instance v0, Lss/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/n;-><init>(Lss/n$a;Lss/o;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lss/n$a;
    .registers 4

    iget-boolean v0, p0, Lss/n$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lss/n$a;->c:[Ljava/lang/String;

    return-object p0
.end method

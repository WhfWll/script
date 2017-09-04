.class public final Lss/ss/ss/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:LgK/h;

.field public static final b:LgK/h;

.field public static final c:LgK/h;

.field public static final d:LgK/h;

.field public static final e:LgK/h;

.field public static final f:LgK/h;

.field public static final g:LgK/h;


# instance fields
.field public final h:LgK/h;

.field public final i:LgK/h;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ":status"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->a:LgK/h;

    const-string v0, ":method"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->b:LgK/h;

    const-string v0, ":path"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->c:LgK/h;

    const-string v0, ":scheme"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->d:LgK/h;

    const-string v0, ":authority"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->e:LgK/h;

    const-string v0, ":host"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->f:LgK/h;

    const-string v0, ":version"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/ss/r;->g:LgK/h;

    return-void
.end method

.method public constructor <init>(LgK/h;LgK/h;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/r;->h:LgK/h;

    iput-object p2, p0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {p1}, LgK/h;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, LgK/h;->f()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lss/ss/ss/r;->j:I

    return-void
.end method

.method public constructor <init>(LgK/h;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    invoke-static {p2}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lss/ss/ss/r;

    if-eqz v1, :cond_1c

    check-cast p1, Lss/ss/ss/r;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lss/ss/ss/r;->h:LgK/h;

    iget-object v2, p1, Lss/ss/ss/r;->h:LgK/h;

    invoke-virtual {v1, v2}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lss/ss/ss/r;->i:LgK/h;

    iget-object v2, p1, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {v1, v2}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lss/ss/ss/r;->h:LgK/h;

    invoke-virtual {v0}, LgK/h;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {v1}, LgK/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lss/ss/ss/r;->h:LgK/h;

    invoke-virtual {v3}, LgK/h;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {v3}, LgK/h;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
